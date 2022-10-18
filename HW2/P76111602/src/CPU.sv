`include "IF.sv"
`include "ID.sv"
`include "EXE.sv"
`include "MEM.sv"
`include "WB.sv"
`include "ForwardUnit.sv"
`include "BranchCtrl.sv"
`include "HazardCtrl.sv"
`include "CPUInterface.sv"
module CPU(
    input clk, // Clock
    input rst,
    //IFIO
    input [`AXI_DATA_BITS-1:0] Instr_out,
    output logic b_instr_read,
    output logic [`AXI_ADDR_BITS-1:0] instr_addr,
    //MEMIO
    input [`AXI_DATA_BITS-1:0] DM_dataout,
    output logic b_data_read,
    output logic b_data_write,
    output logic [3:0] write_type,
    output logic [`AXI_ADDR_BITS-1:0] data_addr,
    output logic [`AXI_DATA_BITS-1:0] MEM_din,
    
    input IM_stall,
    input DM_stall
);
//IM MD stall
logic IDEXE_RegWrite;
logic EXEMEM_RegWrite;
logic MEMWB_RegWrite;

//IF input wire
logic [1:0] BranchCtrl;
//IF output wire
logic [31:0] PC_out;
IFID_inter Wire_IFID();
IFEXE_inter Wire_IFEXE();
IFHC_inter Wire_IFHC();

    IF IF(
        //input
        .clk            (clk),
        .rst            (rst),
        .IFEXEi         (Wire_IFEXE),
        .IFHCi          (Wire_IFHC),
        .BranchCtrl     (BranchCtrl),
        .Instr_out      (Instr_out),
        //output
        .IFIDo          (Wire_IFID),
        .PC_out         (PC_out)
    );
    
    // SRAM_wrapper IM1(
    //     .CK             (~clk),
    //     .CS             (1'b1),         //Chip select
    //     .OE             (1'b1),         //Output Enable 
    //     .WEB            (4'b1111),      //Write Enable
    //     .A              (PC_out[15:2]), //Address
    //     .DI             (32'b0),        //Data in
    //     .DO             (Instr_out)     //DAta out
    // );

//ID input wire
logic [31:0] WB_rddata;
logic [4:0] WB_rdaddr, ID_rs1addr, ID_rs2addr;
logic WB_RegWrite,IDFlush;
//ID output wire
logic [1:0] ID_branch;
IDEXE_inter Wire_IDEXE();

    ID ID(
        //input already have wire
        .clk            (clk),
        .rst            (rst),
        .IFIDi          (Wire_IFID),
        //input
        .WB_rdaddr      (WB_rdaddr),
        .WB_rddata      (WB_rddata),
        .WB_RegWrite    (WB_RegWrite),
        .IDFlush        (IDFlush),
        //output
        .IDEXEo         (Wire_IDEXE),
        .ID_rs1addr     (ID_rs1addr),
        .ID_rs2addr     (ID_rs2addr),
        .ID_branch      (ID_branch),
        .IDEXE_RegWrite (IDEXE_RegWrite)        //new added
    );

//EXE input wire
logic [31:0] Forward_Memrddata;
logic [1:0] Forward_rs1src, Forward_rs2src;
//EXE output wire
logic ZeroFlag;
EXEMEM_inter Wire_EXEMEM();

    EXE EXE(
        //input have wire
        .clk            (clk),
        .rst            (rst),
        .IDEXEi         (Wire_IDEXE),
        .WB_rddata      (WB_rddata),
        //input
        .Forward_Memrddata(Forward_Memrddata),
        .Forward_rs1src (Forward_rs1src),
        .Forward_rs2src (Forward_rs2src),
        .BranchCtrl     (BranchCtrl),
        //output have wire
        .IFEXEo         (Wire_IFEXE),
        //output
        .ZeroFlag       (ZeroFlag),
        .EXEMEMo        (Wire_EXEMEM),
        .EXEMEM_RegWrite(EXEMEM_RegWrite)       //newadded
    );

//MEM output wire
logic [31:0] wire_MEM_din;
logic [3:0] MEM_WEB;
logic MEM_CS;
MEMWB_inter Wire_MEMWB();
    MEM MEM(
        //input have wire
        .clk            (clk),
        .rst            (rst),
        .EXEMEMi        (Wire_EXEMEM),
        //input
        .DM_dataout     (DM_dataout),
        //output
        .MEMWBo         (Wire_MEMWB),
        .Forward_Memrddata (Forward_Memrddata),
        .MEM_CS         (MEM_CS),
        .MEM_WEB        (MEM_WEB),
        .MEM_din        (wire_MEM_din),
        .MEMWB_RegWrite(MEMWB_RegWrite)         //new added
    );

    // SRAM_wrapper DM1(
    //     .CK             (~clk),
    //     .CS             (MEM_CS),
    //     .OE             (Wire_EXEMEM.EXE_MemRead),
    //     .WEB            (MEM_WEB),
    //     .A              (Wire_EXEMEM.EXE_ALUout[15:2]),
    //     .DI             (MEM_din),
    //     .DO             (DM_dataout)
    // );

    WB WB(
        //input have wire
        .MEMWBi         (Wire_MEMWB),
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
        .EXE_rdaddr     (Wire_EXEMEM.EXE_rdaddr),
        .EXE_RegWrite   (Wire_EXEMEM.EXE_RegWrite),
        .MEM_rdaddr     (Wire_MEMWB.MEM_rdaddr),
        .MEM_RegWrite   (Wire_MEMWB.MEM_RegWrite),
        //output have wire
        .Forward_rs1src (Forward_rs1src),
        .Forward_rs2src (Forward_rs2src)
    );
    
    HazardCtrl HC(
        //input have wire
        .BranchCtrl     (BranchCtrl),
        .ID_MemRead     (Wire_IDEXE.ID_MemRead),
        .rs1addr        (Wire_IDEXE.rs1addr),
        .rs2addr        (Wire_IDEXE.rs2addr),
        .ID_rdaddr      (Wire_IDEXE.ID_rdaddr),
        //output have wire
        .IFHCo          (Wire_IFHC),
        .IDFlush        (IDFlush),
        //newadded
        .IM_stall(IM_stall),
        .IDEXE_RegWrite(IDEXE_RegWrite),
        .DM_stall(DM_stall),
        .EXEMEM_RegWrite(EXEMEM_RegWrite),
        .MEMWB_RegWrite(MEMWB_RegWrite)
    );

//IFIO
assign b_instr_read = 1'b1;
assign instr_addr = PC_out;
//MEMIO
assign b_data_read = Wire_EXEMEM.EXE_MemRead;
assign b_data_write = Wire_EXEMEM.EXE_MemWrite;
assign write_type = MEM_WEB;
assign data_addr = Wire_EXEMEM.EXE_ALUout;
assign MEM_din = wire_MEM_din;

endmodule
