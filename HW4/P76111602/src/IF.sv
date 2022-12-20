`include "ProgramCounter.sv"
module IF(
    input clk,
    input rst,
    IFEXE_inter.IFEXEi IFEXEi,
    IFHC_inter.IFHCi IFHCi,

    input [1:0]BranchCtrl,      //form BC
    input [31:0] Instr_out,     //from IM
    input csrctrl,
    input csrret,
	input csrrst,

    IFID_inter.IFIDo IFIDo,

    output logic [31:0] PC_out  //for IM
);

parameter [1:0] PC4 = 2'b00;    //PC for normal
parameter [1:0] PCB = 2'b01;    //PC for branch
parameter [1:0] PCJR = 2'b10;   //PC for jalr

logic[31:0] PC_4,PC_in,PCtoIM;

assign PC_4 = PCtoIM + 32'd4;
assign PC_out = PCtoIM;

ProgramCounter PC(.clk      (clk),
                  .rst      (rst),
                  .PC_in    (PC_in),
                  .PCWrite  (IFHCi.PCWrite),
                  .PC_out   (PCtoIM));

always_comb begin
    if (csrret) begin
        PC_in = IFEXEi.csrret_pc;
    end
    else if (csrctrl) begin
        PC_in = IFEXEi.csrISR_pc;
    end
	else if(csrrst) begin
		PC_in = 1'b0;
	end
    else begin
        case (BranchCtrl)
            PCB:        PC_in = IFEXEi.PC_imm;
            PCJR:       PC_in = IFEXEi.PC_jr;
            default :   PC_in = PC_4;
        endcase
    end
end

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        IFIDo.IF_pcout       <= 32'b0;
        IFIDo.IF_instrout    <= 32'b0;
    end
    else begin
        if (IFHCi.IFID_RegWrite) begin
            IFIDo.IF_pcout <= PCtoIM;                 //send the instr addr to IF/ID reg
            if (IFHCi.InstrFlush) begin
                IFIDo.IF_instrout <= 32'd0;
            end
            else
                IFIDo.IF_instrout <= Instr_out;       //get from IM
        end
    end
end

endmodule