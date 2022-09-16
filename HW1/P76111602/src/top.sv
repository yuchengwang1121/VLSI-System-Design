`include "IF.sv"
`include "ID.sv"
`include "EXE.sv"
`include "MEM.sv"
`include "WB.sv"
`include "ForwardUnit.sv"
`include "BranchCtrl.sv"
`include "HazardCtrl.sv"
`include "SRAM_wrapper.sv"
module top(
    input clk, // Clock
    input rst
);

//IF input wire
logic InstrFlush,IFID_RegWrite,PCWrite;
logic [1:0] BranchCtrl;
logic [31:0] PC_imm, PC_jr, Instr_out;
//IF output wire
logic [31:0] IF_pcout, IF_instrout, PC_out;

    IF IF(
        //input
        .clk            (clk),        //module name (.module port  interface of modport's port)
        .rst            (rst),
        .BranchCtrl     (BranchCtrl),    
        .PC_imm         (PC_imm),
        .PC_jr          (PC_jr),
        .InstrFlush     (InstrFlush),
        .IFID_RegWrite  (IFID_RegWrite),
        .PCWrite        (PCWrite),
        .Instr_out      (Instr_out),
        //output
        .IF_pcout       (IF_pcout),
        .IF_instrout    (IF_instrout),
        .PC_out         (PC_out));
    

    SRAM_wrapper IM1(
        .CK             (~clk),
        .CS             (1'b1),         //Chip select
        .OE             (1'b1),         //Output Enable 
        .WEB            (4'b1111),      //Write Enable
        .A              (PC_out[15:2]), //Address
        .DI             (32'b0),        //Data in
        .DO             (Instr_out)     //DAta out
    );

//ID input wire
logic [31:0] WB_rddata;
logic [4:0] WB_rdaddr;
logic WB_RegWrite,IDFlush;
//ID output wire
logic [31:0] ID_pcout, ID_rs1data, ID_rs2data, ID_imm;
logic [11:0] ID_csraddr;
logic [6:0] ID_Funct7;
logic [4:0] ID_rdaddr, ID_rs1addr, ID_rs2addr, rs1addr, rs2addr;
logic [2:0] ID_ALUOP, ID_Funct3;
logic [1:0] ID_branch;
logic ID_PCtoRegSrc,ID_ALUSrc, ID_RDSrc, ID_MemRead, ID_MemWrite, ID_MemtoReg, ID_RegWrite, ID_csrweb;

    ID ID(
        //input already have wire
        .clk            (clk),
        .rst            (rst),
        .IF_instrout    (IF_instrout),
        .IF_pcout       (IF_pcout),
        //input
        .WB_rdaddr      (WB_rdaddr),
        .WB_rddata      (WB_rddata),
        .WB_RegWrite    (WB_RegWrite),
        .IDFlush        (IDFlush),
        //output
        .ID_pcout       (ID_pcout),
        .ID_rs1data     (ID_rs1data),
        .ID_rs2data     (ID_rs2data),
        .ID_imm         (ID_imm),
        .ID_ALUOP       (ID_ALUOP),
        .ID_PCtoRegSrc  (ID_PCtoRegSrc),
        .ID_ALUSrc      (ID_ALUSrc),
        .ID_RDSrc       (ID_RDSrc),
        .ID_MemRead     (ID_MemRead),
        .ID_MemWrite    (ID_MemWrite),
        .ID_MemtoReg    (ID_MemtoReg),
        .ID_RegWrite    (ID_RegWrite),
        .ID_branch      (ID_branch),
        .ID_Funct3      (ID_Funct3),
        .ID_Funct7      (ID_Funct7),
        .ID_rdaddr      (ID_rdaddr),
        .ID_rs1addr     (ID_rs1addr),
        .ID_rs2addr     (ID_rs2addr),
        .rs1addr        (rs1addr),
        .rs2addr        (rs2addr),
        .ID_csraddr     (ID_csraddr),
        .ID_csrweb      (ID_csrweb)
    );

//EXE input wire
logic [31:0] Forward_Memrddata;
logic [1:0] Forward_rs1src, Forward_rs2src;
//EXE output wire
logic [31:0] EXE_ALUout,EXE_PCtoReg,EXE_rs2data;
logic [4:0] EXE_rdaddr;
logic [2:0] EXE_Funct3;
logic ZeroFlag, EXE_rdsrc,EXE_MemRead, EXE_MemWrite, EXE_MemtoReg, EXE_RegWrite;

    EXE EXE(
        //input have wire
        .clk            (clk),
        .rst            (rst),
        .ID_pcout       (ID_pcout),
        .ID_rs1data     (ID_rs1data),
        .ID_rs2data     (ID_rs2data),
        .ID_imm         (ID_imm),
        .ID_ALUOP       (ID_ALUOP),
        .ID_PCtoRegSrc  (ID_PCtoRegSrc),
        .ID_ALUSrc      (ID_ALUSrc),
        .ID_RDSrc       (ID_RDSrc),
        .ID_MemRead     (ID_MemRead),
        .ID_MemWrite    (ID_MemWrite),
        .ID_MemtoReg    (ID_MemtoReg),
        .ID_RegWrite    (ID_RegWrite),
        .ID_Funct3      (ID_Funct3),
        .ID_Funct7      (ID_Funct7),
        .ID_rdaddr      (ID_rdaddr),
        .rs1addr        (rs1addr),
        .rs2addr        (rs2addr),
        .WB_rddata      (WB_rddata ),
        .ID_csraddr     (ID_csraddr),
        .ID_csrweb      (ID_csrweb),
        //input
        .Forward_Memrddata(Forward_Memrddata),
        .Forward_rs1src (Forward_rs1src),
        .Forward_rs2src (Forward_rs2src),
        .BranchCtrl     (BranchCtrl),
        //output have wire
        .PC_imm         (PC_imm),
        .PC_jr          (PC_jr),
        //output
        .ZeroFlag       (ZeroFlag),
        .EXE_ALUout     (EXE_ALUout),
        .EXE_rdsrc      (EXE_rdsrc),
        .EXE_MemRead    (EXE_MemRead),
        .EXE_MemWrite   (EXE_MemWrite),
        .EXE_MemtoReg   (EXE_MemtoReg),
        .EXE_RegWrite   (EXE_RegWrite),
        .EXE_rdaddr     (EXE_rdaddr),
        .EXE_PCtoReg    (EXE_PCtoReg),
        .EXE_rs2data    (EXE_rs2data),
        .EXE_Funct3     (EXE_Funct3)
        
    );

//MEM input wire
logic [31:0] DM_dataout;
//MEM output wire
logic [31:0] MEM_dout,MEM_rddata,MEM_din;
logic [4:0] MEM_rdaddr;
logic [3:0] MEM_WEB;
logic MEM_MemtoReg,MEM_RegWrite,MEM_CS;

    MEM MEM(
        //input have wire
        .clk            (clk),
        .rst            (rst),
        .EXE_ALUout     (EXE_ALUout),
        .EXE_rdsrc      (EXE_rdsrc),
        .EXE_MemRead    (EXE_MemRead),
        .EXE_MemWrite   (EXE_MemWrite),
        .EXE_MemtoReg   (EXE_MemtoReg),
        .EXE_RegWrite   (EXE_RegWrite),
        .EXE_rdaddr     (EXE_rdaddr),
        .EXE_PCtoReg    (EXE_PCtoReg),
        .EXE_rs2data    (EXE_rs2data),
        .EXE_Funct3     (EXE_Funct3),
        //input
        .DM_dataout     (DM_dataout),
        //output have wire
        .MEM_rddata     (MEM_rddata),
        //output
        .MEM_rdaddr     (MEM_rdaddr),
        .MEM_dout       (MEM_dout),
        .MEM_MemtoReg   (MEM_MemtoReg),
        .MEM_RegWrite   (MEM_RegWrite),
        .Forward_Memrddata (Forward_Memrddata),
        .MEM_CS         (MEM_CS),
        .MEM_WEB        (MEM_WEB),
        .MEM_din        (MEM_din)
    );

    SRAM_wrapper DM1(
        .CK             (~clk),
        .CS             (MEM_CS),
        .OE             (EXE_MemRead),
        .WEB            (MEM_WEB),
        .A              (EXE_ALUout[15:2]),
        .DI             (MEM_din),
        .DO             (DM_dataout)
    );

    WB WB(
        //input have wire
        // .clk            (clk),
        // .rst            (rst),
        .MEM_rddata     (MEM_rddata),
        .MEM_rdaddr     (MEM_rdaddr),
        .MEM_dout       (MEM_dout),
        .MEM_MemtoReg   (MEM_MemtoReg),
        .MEM_RegWrite   (MEM_RegWrite),
        //output have wire
        .WB_rddata      (WB_rddata),
        .WB_rdaddr      (WB_rdaddr),
        .WB_RegWrite    (WB_RegWrite)
    );

    BranchCtrl BC(
        //input have wire
        .ID_branch      (ID_branch),
        .ZeroFlag       (ZeroFlag),
        //output have wire
        .BranchCtrl     (BranchCtrl)
    );

    ForwardUnit FU(
        //input have wire
        .ID_rs1addr     (ID_rs1addr),
        .ID_rs2addr     (ID_rs2addr),
        .EXE_rdaddr     (EXE_rdaddr),
        .EXE_RegWrite   (EXE_RegWrite),
        .MEM_rdaddr     (MEM_rdaddr),
        .MEM_RegWrite   (MEM_RegWrite),
        //output have wire
        .Forward_rs1src (Forward_rs1src),
        .Forward_rs2src (Forward_rs2src)
    );
    
    HazardCtrl HC(
        //input have wire
        .BranchCtrl     (BranchCtrl),
        .ID_MemRead     (ID_MemRead),
        .rs1addr        (rs1addr),
        .rs2addr        (rs2addr),
        .ID_rdaddr      (ID_rdaddr),
        //output have wire
        .PCWrite        (PCWrite),
        .InstrFlush     (InstrFlush),
        .IFID_RegWrite  (IFID_RegWrite),
        .IDFlush        (IDFlush)
    );

endmodule
