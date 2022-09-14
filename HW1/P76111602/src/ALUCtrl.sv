module ALUCtrl(
    input [2:0] ALUOP,
    input [2:0] Funct3,
    input [6:0] Funct7,

    output logic [4:0] ALUCtrl
);

parameter [2:0] R_type = 3'b000;        //types of ALUOP for ALUCtrl
parameter [2:0] I_type = 3'b001;
parameter [2:0] Add_type = 3'b010;
parameter [2:0] Jalr_type = 3'b011;
parameter [2:0] B_type = 3'b100;
parameter [2:0] Lui_type = 3'b101;
parameter [2:0] Csr_type = 3'b110;


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
parameter [4:0] ALU_Imm = 5'b10001;
parameter [4:0] ALU_CsrRW = 5'b10010;   //added
parameter [4:0] ALU_CsrR = 5'b10011;    //added
parameter [4:0] ALU_CsrRC = 5'b10100;   //added
parameter [4:0] ALU_CsrRWI = 5'b10101;  //added
parameter [4:0] ALU_CsrRSI = 5'b10110;  //added
parameter [4:0] ALU_CsrRCI = 5'b10111;  //added


always_comb begin
    case (ALUOP)
        R_type : begin
            case (Funct3)
                3'b000: begin
                    if (Funct7 == 7'b0) ALUCtrl = ALU_Add;
                    else ALUCtrl = ALU_Sub;
                end
                3'b001: ALUCtrl = Alu_Sll;
                3'b010: ALUCtrl = ALU_Slt;
                3'b011: ALUCtrl = ALU_Sltu;
                3'b100: ALUCtrl = ALU_XOR;
                3'b101: begin
                    if (Funct7 == 7'b0) ALUCtrl = ALU_Srl; 
                    else ALUCtrl = ALU_Sra;
                end
                3'b110: ALUCtrl = ALU_OR;
                3'b111: ALUCtrl = ALU_AND;
            endcase
        end
        I_type : begin
            case (Funct3)
                3'b000: ALUCtrl = ALU_Add;
                3'b001: ALUCtrl = Alu_Sll;
                3'b010: ALUCtrl = ALU_Slt;
                3'b011: ALUCtrl = ALU_Sltu;
                3'b100: ALUCtrl = ALU_XOR;
                3'b101: begin
                    if (Funct7 == 1'd0) ALUCtrl = ALU_Srl; 
                    else ALUCtrl = ALU_Sra;
                end
                3'b110: ALUCtrl = ALU_OR;
                3'b111: ALUCtrl = ALU_AND;
            endcase
        end
        Add_type : begin
            ALUCtrl = ALU_Add;
        end
        Jalr_type : begin
            ALUCtrl = ALU_Jalr;
        end
        B_type : begin
            case (Funct3)
                3'b000: ALUCtrl = ALU_Beq;
                3'b001: ALUCtrl = ALU_Bne;
                3'b100: ALUCtrl = ALU_Blt;
                3'b101: ALUCtrl = ALU_Bge;
                3'b110: ALUCtrl = ALU_Bltu;
                default: ALUCtrl = ALU_Bgeu;    //avoid latch
            endcase
        end
        Csr_type : begin                        //added
            case (Funct3)
                3'b001: ALUCtrl = ALU_CsrRW;
                3'b010: ALUCtrl = ALU_CsrR;
                3'b011: ALUCtrl = ALU_CsrRC;
                3'b101: ALUCtrl = ALU_CsrRWI;
                3'b110: ALUCtrl = ALU_CsrRSI;
                default: ALUCtrl = ALU_CsrRCI;
            endcase
        end
        default: begin  //for lui, avoid latch
           ALUCtrl = ALU_Imm;
        end
    endcase
end
endmodule