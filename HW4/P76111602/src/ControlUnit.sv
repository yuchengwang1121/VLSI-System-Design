module ControlUnit(
    input[6:0] OPcode,

    output logic [2:0] ImmType,
    output logic [2:0] ALUOP,
    output logic PCtoRegSrc,            //(0: PC+4; 1: PC+imm)
    output logic ALUSrc,                //(0: imm; 1: reg)
    output logic RDSrc,                 //(0: result of alu; 1: PC)
    output logic MemRead,
    output logic MemWrite,
    output logic MemtoReg,              //(0: ALU result; 1: data from Mem)
    output logic RegWrite,              //(0: can't write data into reg; 1: can write data into reg)
    output logic [1:0] branch,
    output logic csr_web
);
    
parameter [1:0] No_branch = 2'b00;      //PC for normal
parameter [1:0] B_branch = 2'b01;       //PC for branch
parameter [1:0] Jalr_branch = 2'b10;    //PC for jalr
parameter [1:0] J_branch = 2'b11;       //PC for jump

parameter [2:0] R_type = 3'b000;        //types of ALUOP for ALUCtrl
parameter [2:0] I_type = 3'b001;
parameter [2:0] Add_type = 3'b010;
parameter [2:0] Jalr_type = 3'b011;
parameter [2:0] B_type = 3'b100;
parameter [2:0] Lui_type = 3'b101;
parameter [2:0] Csr_type = 3'b110;


parameter [2:0] I_imm = 3'b000;         //types of immediate
parameter [2:0] S_imm = 3'b001;
parameter [2:0] B_imm = 3'b010;
parameter [2:0] U_imm = 3'b011;
parameter [2:0] J_imm = 3'b100;


always_comb begin
    csr_web = 1'b0;
    case (OPcode)
        7'b0110011 : begin  //R-type
            ImmType = I_imm;  // X
            ALUOP = R_type;
            PCtoRegSrc = 1'b0;  // X
            ALUSrc = 1'b1;
            RDSrc = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
            branch = No_branch;
        end
        7'b0000011 : begin  //Lw
            ImmType = I_imm;
            ALUOP = Add_type;
            PCtoRegSrc =  1'b0;  // X
            ALUSrc = 1'b0;
            RDSrc = 1'b0;  // X
            MemRead = 1'b1;
            MemWrite = 1'b0;
            MemtoReg = 1'b1;
            RegWrite = 1'b1;
            branch = No_branch;
        end
        7'b0010011 : begin  //I-type
            ImmType = I_imm;
            ALUOP = I_type;
            PCtoRegSrc = 1'b0;  // X
            ALUSrc = 1'b0;
            RDSrc = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
            branch = No_branch;
        end
        7'b1100111 : begin  //Jalr
            ImmType = I_imm;
            ALUOP = Jalr_type;
            PCtoRegSrc = 1'b0;
            ALUSrc = 1'b0;
            RDSrc = 1'b1;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
            branch = Jalr_branch;
        end
        7'b0100011 : begin  //SW
            ImmType = S_imm;
            ALUOP = Add_type;
            PCtoRegSrc = 1'b0;  // X
            ALUSrc = 1'b0;
            RDSrc = 1'b0;  // X
            MemRead = 1'b0;
            MemWrite = 1'b1;
            MemtoReg = 1'b0;
            RegWrite = 1'b0;
            branch = No_branch;
        end
        7'b1100011 : begin  //B-type
            ImmType = B_imm;
            ALUOP = B_type;
            PCtoRegSrc = 1'b0;  // X
            ALUSrc = 1'b1;
            RDSrc = 1'b0;  // X
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b0;
            branch = B_branch;
        end
        7'b0010111 : begin  //Auipc
            ImmType = U_imm;
            ALUOP = Add_type;  // X
            PCtoRegSrc = 1'b1;
            ALUSrc = 1'b0;
            RDSrc = 1'b1;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
            branch = No_branch;
        end
        7'b0110111 : begin  //Lui
            ImmType = U_imm;
            ALUOP = Lui_type;
            PCtoRegSrc = 1'b0;  // X
            ALUSrc = 1'b0;
            RDSrc = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
            branch = No_branch;
        end
        7'b1101111 : begin  //Jal
            ImmType = J_imm;
            ALUOP = Add_type;   //X
            PCtoRegSrc = 1'b0;
            ALUSrc = 1'b0;
            RDSrc = 1'b1;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
            branch = J_branch;
        end
        7'b1110011: begin   //CSR               //added
            ImmType = I_imm;
            ALUOP = Csr_type;
            PCtoRegSrc = 1'b0;  // X
            ALUSrc = 1'b0;
            RDSrc = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
            csr_web = 1'b1;
            branch = No_branch;
        end
        default : begin
            ImmType = I_imm;
            ALUOP = Add_type;   //X
            PCtoRegSrc = 1'b0;
            ALUSrc = 1'b0;
            RDSrc = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b0;
            branch = No_branch;
        end
    endcase
end
endmodule