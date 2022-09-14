`include "ControlUnit.sv"
`include "RegisterFile.sv"
`include "ImmediateGenerator.sv"
module ID(
    input clk,
    input rst,
    input [31:0] IF_instrout,
    input [31:0] IF_pcout,
    input WB_RegWrite,
    input [4:0] WB_rdaddr,
    input [31:0] WB_rddata,
    input IDFlush,

    output logic [31:0] ID_pcout,
    output logic [31:0] ID_rs1data,
    output logic [31:0] ID_rs2data,
    output logic [31:0] ID_imm,
    output logic [2:0] ID_Funct3,
    output logic [6:0] ID_Funct7,
    output logic [4:0] ID_rdaddr,
    output logic [4:0] ID_rs1addr,
    output logic [4:0] ID_rs2addr,
    output logic [2:0] ID_ALUOP,
    output logic ID_PCtoRegSrc,
    output logic ID_ALUSrc,
    output logic ID_RDSrc,
    output logic ID_MemRead,
    output logic ID_MemWrite,
    output logic ID_MemtoReg,
    output logic ID_RegWrite,
    output logic [1:0] ID_branch,
    output logic [4:0] rs1addr,
    output logic [4:0] rs2addr
);

logic [31:0] Wire_rs1,Wire_rs2,Wire_imm;    //wire's to connect submodule with ID state
logic [2:0] Wire_ALUOP,Wire_immtype;
logic Wire_PCtoRegSrc, Wire_ALUSrc, Wire_RDSrc, Wire_MemRead, Wire_MemWrite, Wire_MemtoReg, Wire_RegWrite;
logic [1:0] Wire_branch;

assign rs1addr = IF_instrout[19:15];       //assign the address
assign rs2addr = IF_instrout[24:20];

RegisterFile RF(
    .clk        (~clk),
    .rst        (rst),
    .RegWrite   (WB_RegWrite),
    .rs1_addr   (IF_instrout[19:15]),
    .rs2_addr   (IF_instrout[24:20]),
    .WB_rdaddr  (WB_rdaddr),
    .WB_rddata  (WB_rddata),
    .rs1data    (Wire_rs1),
    .rs2data    (Wire_rs2)
);

ImmediateGenerator IG(
    .ImmType    (Wire_immtype),
    .Instr_out  (IF_instrout),
    .Imm        (Wire_imm)
);

ControlUnit CU(
    .OPcode     (IF_instrout[6:0]),
    .ImmType    (Wire_immtype),
    .ALUOP      (Wire_ALUOP),
    .PCtoRegSrc (Wire_PCtoRegSrc),
    .ALUSrc     (Wire_ALUSrc),
    .RDSrc      (Wire_RDSrc),
    .MemRead    (Wire_MemRead),
    .MemWrite   (Wire_MemWrite),
    .MemtoReg   (Wire_MemtoReg),
    .RegWrite   (Wire_RegWrite),
    .branch     (Wire_branch)
);

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin                              //initial output
        ID_pcout <= 32'b0;
        ID_rs1data <= 32'b0;
        ID_rs2data <= 32'b0;
        ID_imm <= 32'b0;
        ID_Funct3 <= 3'b0;
        ID_Funct7 <= 7'b0;
        ID_rdaddr <= 5'b0;
        ID_rs1addr <= 5'b0;
        ID_rs2addr <=5'b0;
        ID_ALUOP <= 3'b0;
        ID_PCtoRegSrc <= 1'b0;
        ID_ALUSrc <= 1'b0;
        ID_RDSrc <= 1'b0;
        ID_MemRead <= 1'b0;
        ID_MemWrite <= 1'b0;
        ID_MemtoReg <= 1'b0;
        ID_RegWrite <= 1'b0;
        ID_branch <= 2'b0;
    end
    else begin                                  //connect wire to output
        ID_pcout <= IF_pcout;
        ID_rs1data <= Wire_rs1;
        ID_rs2data <= Wire_rs2;
        ID_imm <= Wire_imm;
        ID_Funct3 <= IF_instrout[14:12];
        ID_Funct7 <= IF_instrout[31:25];
        ID_rdaddr <= IF_instrout[11:7];
        ID_rs1addr <= IF_instrout[19:15];
        ID_rs2addr <= IF_instrout[24:20];
        ID_ALUOP <= Wire_ALUOP;
        ID_PCtoRegSrc <= Wire_PCtoRegSrc;
        ID_ALUSrc <= Wire_ALUSrc;
        ID_RDSrc <= Wire_RDSrc;
        ID_MemtoReg <= Wire_MemtoReg;

        if (IDFlush) begin
            ID_MemRead <= 1'b0;
            ID_MemWrite <= 1'b0;
            ID_RegWrite <= 1'b0;
            ID_branch <= 2'b0;
        end
        else begin
            ID_MemRead <= Wire_MemRead;
            ID_MemWrite <= Wire_MemWrite;
            ID_RegWrite <= Wire_RegWrite;
            ID_branch <= Wire_branch;
        end
    end
end
endmodule