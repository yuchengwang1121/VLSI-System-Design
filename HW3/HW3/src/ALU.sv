module ALU(
    input [31:0] rs1,
    input [31:0] rs2,
    input [4:0] ALUCtrl,
    
    output logic ZeroFlag,
    output logic [31:0] ALUout
);
    
parameter [4:0] ALU_Add = 5'b00000;
parameter [4:0] ALU_Sub = 5'b00001;
parameter [4:0] Alu_Sll = 5'b00010;
parameter [4:0] ALU_Slt = 5'b00011;
parameter [4:0] ALU_Sltu = 5'b00100;
parameter [4:0] ALU_XOR = 5'b00101;
parameter [4:0] ALU_Srl = 5'b00110;
parameter [4:0] ALU_Sra = 5'b00111;
parameter [4:0] ALU_OR = 5'b01000;
parameter [4:0] ALU_AND = 5'b01001;
parameter [4:0] ALU_Jalr = 5'b01010;
parameter [4:0] ALU_Beq = 5'b01011;
parameter [4:0] ALU_Bne = 5'b01100;
parameter [4:0] ALU_Blt = 5'b01101;
parameter [4:0] ALU_Bge = 5'b01110;
parameter [4:0] ALU_Bltu = 5'b01111;
parameter [4:0] ALU_Bgeu = 5'b10000;
parameter [4:0] ALU_Imm = 5'b10001;     //for lui

logic signed [31:0] Srs1, Srs2;
logic [31:0] sum;

assign Srs1 = rs1;
assign Srs2 = rs2;
assign sum = Srs1 + Srs2;

always_comb begin       //for alu_out value
    case (ALUCtrl)
        ALU_Add: ALUout = sum;
        ALU_Sub: ALUout = rs1 - rs2;
        Alu_Sll: ALUout = rs1 << rs2[4:0];
        ALU_Slt: ALUout = (Srs1 < Srs2)?32'b1:32'b0;
        ALU_Sltu: ALUout = (rs1 < rs2)?32'b1:32'b0;
        ALU_XOR: ALUout = rs1 ^ rs2;
        ALU_Srl: ALUout = rs1 >> rs2[4:0];
        ALU_Sra: ALUout = Srs1 >>> rs2[4:0];
        ALU_OR: ALUout =  rs1 | rs2;
        ALU_AND: ALUout =  rs1 & rs2;
        ALU_Jalr: ALUout = {sum[31:1], 1'b0};
        ALU_Imm: ALUout = rs2;
        default: ALUout =  32'b0;
    endcase
end

always_comb begin       //for B-type
    case (ALUCtrl)
        ALU_Beq: ZeroFlag = (rs1==rs2)?1'b1:1'b0;
        ALU_Bne: ZeroFlag = (rs1!=rs2)?1'b1:1'b0;
        ALU_Blt: ZeroFlag = (Srs1 < Srs2)?1'b1:1'b0;
        ALU_Bge: ZeroFlag = (Srs1 >= Srs2)?1'b1:1'b0;
        ALU_Bltu: ZeroFlag = (rs1 < rs2)?1'b1:1'b0;
        ALU_Bgeu: ZeroFlag = (rs1 >= rs2)?1'b1:1'b0;     //ALU_Bgeu
        default : ZeroFlag = 1'b0;
    endcase
end
endmodule