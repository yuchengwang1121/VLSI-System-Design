`include "ControlUnit.sv"
`include "RegisterFile.sv"
`include "ImmediateGenerator.sv"
module ID(
    input clk,
    input rst,
    IFID_inter.IFIDi IFIDi, // input [31:0] IF_instrout,
                            // input [31:0] IF_pcout,
    input WB_RegWrite,
    input [4:0] WB_rdaddr,
    input [31:0] WB_rddata,
    input IDFlush,
    input IDEXE_RegWrite,

    IDEXE_inter.IDEXEo IDEXEo,  // output logic [31:0] ID_pcout,
                                // output logic [31:0] ID_rs1data,
                                // output logic [31:0] ID_rs2data,
                                // output logic [31:0] ID_imm,
                                // output logic [2:0] ID_Funct3,
                                // output logic [6:0] ID_Funct7,
                                // output logic [4:0] ID_rdaddr,
                                // output logic [2:0] ID_ALUOP,
                                // output logic ID_PCtoRegSrc,
                                // output logic ID_ALUSrc,
                                // output logic ID_rdsrc,
                                // output logic ID_MemRead,
                                // output logic ID_MemWrite,
                                // output logic ID_MemtoReg,
                                // output logic ID_RegWrite,
                                // output logic [11:0] ID_csraddr,
                                // output logic ID_csrweb
                                // output logic [4:0] rs1addr,
                                // output logic [4:0] rs2addr,
    output logic [4:0] ID_rs1addr,
    output logic [4:0] ID_rs2addr,
    output logic [1:0] ID_branch
);

logic [31:0] Wire_rs1,Wire_rs2,Wire_imm;    //wire's to connect submodule with ID state
logic [2:0] Wire_ALUOP,Wire_immtype;
logic Wire_PCtoRegSrc, Wire_ALUSrc, Wire_RDSrc, Wire_MemRead, Wire_MemWrite, Wire_MemtoReg, Wire_RegWrite, Wire_csrweb;
logic [1:0] Wire_branch;

assign IDEXEo.rs1addr = IFIDi.IF_instrout[19:15];       //assign the address
assign IDEXEo.rs2addr = IFIDi.IF_instrout[24:20];

RegisterFile RF(
    .clk        (~clk),
    .rst        (rst),
    .RegWrite   (WB_RegWrite),
    .rs1_addr   (IFIDi.IF_instrout[19:15]),
    .rs2_addr   (IFIDi.IF_instrout[24:20]),
    .WB_rdaddr  (WB_rdaddr),
    .WB_rddata  (WB_rddata),
    .rs1data    (Wire_rs1),
    .rs2data    (Wire_rs2)
);

ImmediateGenerator IG(
    .ImmType    (Wire_immtype),
    .Instr_out  (IFIDi.IF_instrout),
    .Imm        (Wire_imm)
);

ControlUnit CU(
    .OPcode     (IFIDi.IF_instrout[6:0]),
    .ImmType    (Wire_immtype),
    .ALUOP      (Wire_ALUOP),
    .PCtoRegSrc (Wire_PCtoRegSrc),
    .ALUSrc     (Wire_ALUSrc),
    .RDSrc      (Wire_RDSrc),
    .MemRead    (Wire_MemRead),
    .MemWrite   (Wire_MemWrite),
    .MemtoReg   (Wire_MemtoReg),
    .RegWrite   (Wire_RegWrite),
    .branch     (Wire_branch),
    .csr_web    (Wire_csrweb)
);

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin                              //initial output
        IDEXEo.ID_pcout <= 32'b0;
        IDEXEo.ID_rs1data <= 32'b0;
        IDEXEo.ID_rs2data <= 32'b0;
        IDEXEo.ID_imm <= 32'b0;
        IDEXEo.ID_Funct3 <= 3'b0;
        IDEXEo.ID_Funct7 <= 7'b0;
        IDEXEo.ID_rdaddr <= 5'b0;
        IDEXEo.ID_ALUOP <= 3'b0;
        IDEXEo.ID_PCtoRegSrc <= 1'b0;
        IDEXEo.ID_ALUSrc <= 1'b0;
        IDEXEo.ID_rdsrc <= 1'b0;
        IDEXEo.ID_MemRead <= 1'b0;
        IDEXEo.ID_MemWrite <= 1'b0;
        IDEXEo.ID_MemtoReg <= 1'b0;
        IDEXEo.ID_RegWrite <= 1'b0;
        IDEXEo.ID_csraddr <= 12'b0;
        IDEXEo.ID_csrweb <= 1'b0;
        ID_rs1addr <= 5'b0;
        ID_rs2addr <= 5'b0;
        ID_branch <= 2'b0;
    end
    else begin                                  //connect wire to output
    if (IDEXE_RegWrite) begin
        IDEXEo.ID_pcout <= IFIDi.IF_pcout;
        IDEXEo.ID_rs1data <= Wire_rs1;
        IDEXEo.ID_rs2data <= Wire_rs2;
        IDEXEo.ID_imm <= Wire_imm;
        IDEXEo.ID_Funct3 <= IFIDi.IF_instrout[14:12];
        IDEXEo.ID_Funct7 <= IFIDi.IF_instrout[31:25];
        IDEXEo.ID_rdaddr <= IFIDi.IF_instrout[11:7];
        IDEXEo.ID_ALUOP <= Wire_ALUOP;
        IDEXEo.ID_PCtoRegSrc <= Wire_PCtoRegSrc;
        IDEXEo.ID_ALUSrc <= Wire_ALUSrc;
        IDEXEo.ID_rdsrc <= Wire_RDSrc;
        IDEXEo.ID_MemtoReg <= Wire_MemtoReg;
        ID_rs1addr <= IFIDi.IF_instrout[19:15];
        ID_rs2addr <= IFIDi.IF_instrout[24:20];

        if (IDFlush) begin
            IDEXEo.ID_MemRead <= 1'b0;
            IDEXEo.ID_MemWrite <= 1'b0;
            IDEXEo.ID_RegWrite <= 1'b0;
            IDEXEo.ID_csraddr <= 12'b0;
            IDEXEo.ID_csrweb <= 1'b0;
            ID_branch <= 2'b0;
        end
        else begin
            IDEXEo.ID_MemRead <= Wire_MemRead;
            IDEXEo.ID_MemWrite <= Wire_MemWrite;
            IDEXEo.ID_RegWrite <= Wire_RegWrite;
            IDEXEo.ID_csrweb <= Wire_csrweb;
            IDEXEo.ID_csraddr <= IFIDi.IF_instrout[31:20];
            ID_branch <= Wire_branch;
        end
    end
    else if ((IDEXE_RegWrite)&IDFlush) begin
        IDEXEo.ID_MemRead <= 1'b0;
        IDEXEo.ID_MemWrite <= 1'b0;
        IDEXEo.ID_RegWrite <= 1'b0;
    end
    end
end
endmodule