module ImmediateGenerator(
    input [2:0] ImmType,
    input [31:0] Instr_out,

    output logic [31:0] Imm
);
    
parameter [2:0] I_imm = 3'b000;         //types of immediate
parameter [2:0] S_imm = 3'b001;
parameter [2:0] B_imm = 3'b010;
parameter [2:0] U_imm = 3'b011;
parameter [2:0] J_imm = 3'b100;
parameter [2:0] C_imm = 3'b101;

always_comb begin       //for imm sign extension
    case (ImmType)
        I_imm: Imm = {{20{Instr_out[31]}}, Instr_out[31:20]};
        S_imm: Imm = {{20{Instr_out[31]}}, Instr_out[31:25], Instr_out[11:7]};
        B_imm: Imm = {{19{Instr_out[31]}}, Instr_out[31], Instr_out[7], Instr_out[30:25], Instr_out[11:8], 1'b0}; //imm = [31][7][30:25][11:8]0
        U_imm: Imm = {Instr_out[31:12], 12'b0};
        C_imm: Imm = {27'b0, Instr_out[19:15]};
        default: Imm = {{11{Instr_out[31]}}, Instr_out[31], Instr_out[19:12], Instr_out[20], Instr_out[30:21], 1'b0}; //imm = [31][19:12][20][30:21], J type and avoid latch
    endcase
end
endmodule