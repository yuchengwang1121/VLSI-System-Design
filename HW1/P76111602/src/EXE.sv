`include "ALUCtrl.sv"
`include "ALU.sv"
module EXE(
    input clk,
    input rst,
    input [31:0] ID_pcout,
    input [31:0] ID_rs1data,
    input [31:0] ID_rs2data,
    input [31:0] ID_imm,
    input [2:0] ID_Funct3,
    input [6:0] ID_Funct7,
    input [4:0] ID_rdaddr,
    input [4:0] ID_rs1addr,
    input [4:0] ID_rs2addr,
    input [2:0] ID_ALUOP,
    input ID_PCtoRegSrc,
    input ID_ALUSrc,
    input ID_RDSrc,
    input ID_MemRead,
    input ID_MemWrite,
    input ID_MemtoReg,
    input ID_RegWrite,
    input [31:0] Forward_Memrddata,
    input [31:0] WB_rddata,
    input [1:0] Forward_rs1src,
    input [1:0] Forward_rs2src,
    input [11:0] ID_csraddr,
    input ID_csrweb,

    output logic [31:0] EXE_PCtoReg,
    output logic [31:0] EXE_ALUout,
    output logic [31:0] EXE_rs2data,    //used for forwarding
    output logic [4:0] EXE_rdaddr,
    output logic [2:0] EXE_Funct3,
    output logic EXE_rdsrc,
    output logic EXE_MemRead,
    output logic EXE_MemWrite,
    output logic EXE_MemtoReg,
    output logic EXE_RegWrite,
    output logic ZeroFlag,
    output logic [31:0] PC_imm,     //for branch
    output logic [31:0] PC_jr       //for jalr
);

logic [31:0] ALU_pcimm,ALU_pc4;
logic [31:0] ALU_rs1,ALU_rs21,ALU_rs22;  //rs2 have two MUX
logic [31:0] Wire_ALUout;
logic [4:0] Wire_ALUCtrl;

assign ALU_pcimm = ID_pcout + ID_imm;  //for EXE_PCtoReg
assign ALU_pc4 = ID_pcout + 4;

assign PC_imm = ID_pcout + ID_imm;     //for IF's PC
assign PC_jr = Wire_ALUout;

always_comb begin                       //rs1 MUX
    if (Forward_rs1src == 2'b00) ALU_rs1 = ID_rs1data;
    else if (Forward_rs1src == 2'b01) ALU_rs1 = Forward_Memrddata;
    else ALU_rs1 = WB_rddata;
end

always_comb begin                       //rs2-1 MUX
    if (Forward_rs2src == 2'b00) ALU_rs21 = ID_rs2data;
    else if (Forward_rs2src == 2'b01) ALU_rs21 = Forward_Memrddata;
    else ALU_rs21 = WB_rddata;
end

always_comb begin                       //rs2-2 MUX
    if (!ID_ALUSrc) ALU_rs22 = ID_imm;
    else ALU_rs22 = ALU_rs21;
end

ALU ALU(
    .rs1        (ALU_rs1),
    .rs2        (ALU_rs22),
    .ALUCtrl    (Wire_ALUCtrl),
    .ZeroFlag   (ZeroFlag),
    .ALUout     (Wire_ALUout)
);

ALUCtrl ALUCtrl(
    .ALUOP      (ID_ALUOP),
    .Funct3     (ID_Funct3),
    .Funct7     (ID_Funct7),
    .ALUCtrl    (Wire_ALUCtrl)
);

Src Src(
    .clk        (clk),
    .rst        (rst),
    .ALUCtrl    (Wire_ALUCtrl),
    .RegWrite   (EXEMEM_RegWrite),
    .Funct7     (ID_Funct7),
    .rs1        (ALU_rs1),
    .rs1addr    (ID_rs1addr),
    .Imm        (ID_imm),
    .Csraddr    (ID_csraddr),
    .Csrweb     (ID_csrweb),
    .Csrrdata   (Wire_Csrrdata)
);

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        EXE_PCtoReg <= 32'b0;
        EXE_ALUout  <= 32'b0;
        EXE_rs2data <= 32'b0;
        EXE_rdaddr <= 5'b0;
        EXE_Funct3 <= 3'b0;
        EXE_rdsrc <= 1'b0;
        EXE_MemRead <= 1'b0;
        EXE_MemWrite <= 1'b0;
        EXE_MemtoReg <= 1'b0;
        EXE_RegWrite <= 1'b0;
    end
    else begin
        //Pass PC
        if (ID_PCtoRegSrc)  EXE_PCtoReg <= ALU_pcimm;
        else EXE_PCtoReg <= ALU_pc4;
        
        //Pass ALU_out
        if (ID_csrweb) EXE_ALUout <= Wire_Csrrdata
        else EXE_ALUout  <= Wire_ALUout;

        //otherwise data pass
        EXE_rs2data <= ALU_rs21;
        EXE_rdaddr <= ID_rdaddr;
        EXE_Funct3 <= ID_Funct3;
        EXE_rdsrc <= ID_RDSrc;
        EXE_MemRead <= ID_MemRead;
        EXE_MemWrite <= ID_MemWrite;
        EXE_MemtoReg <= ID_MemtoReg;
        EXE_RegWrite <= ID_RegWrite;
    end
end
endmodule