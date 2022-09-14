`include "ProgramCounter.sv"
module IF(
    input clk,
    input rst,
    input [1:0]BranchCtrl,
    input [31:0] PC_imm,
    input [31:0] PC_jr,
    input InstrFlush,
    input IFID_RegWrite,
    input PCWrite,
    input [31:0] Instr_out,

    output logic [31:0] IF_pcout,
    output logic [31:0] IF_instrout,
    output logic [31:0] PC_out          //used for SRAM
);

parameter [1:0] PC4 = 2'b00;  //PC for normal
parameter [1:0] PCB = 2'b01;  //PC for branch
parameter [1:0] PCJR = 2'b10;  //PC for jalr

logic[31:0] PC_4,PC_in,PCtoIM;

assign PC_4 = PCtoIM + 32'd4;
assign PC_out = PCtoIM;     //output to PC_out

ProgramCounter PC(.clk      (clk),  //connect PC into IF state
                  .rst      (rst),
                  .PC_in    (PC_in),
                  .PCWrite  (PCWrite),
                  .PC_out   (PCtoIM));

 always_comb begin
        case (BranchCtrl)
            PCB:        PC_in = PC_imm;
            PCJR:       PC_in = PC_jr; // imm_rs1
            default :   PC_in = PC_4; // PC4
        endcase
    end

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        IF_pcout       <= 32'b0;
        IF_instrout    <= 32'b0;
    end
    else begin
        if (IFID_RegWrite) begin
            IF_pcout <= PCtoIM;                 //send the instr addr to IF/ID reg
            if (InstrFlush) begin
                IF_instrout <= 32'd0;
            end
            else
                IF_instrout <= Instr_out;       //get freom IM wrapper
        end
    end
end

endmodule