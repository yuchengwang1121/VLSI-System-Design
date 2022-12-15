module BranchCtrl(
    input [1:0] ID_branch,
    input ZeroFlag,

    output logic [1:0] BranchCtrl
);

parameter [1:0] No_branch = 2'b00;  //PC for normal
parameter [1:0] B_branch = 2'b01;  //PC for branch
parameter [1:0] Jalr_branch = 2'b10;  //PC for jalr
parameter [1:0] J_branch = 2'b11;  //PC for jump

parameter [1:0] PC4 = 2'b00;  //PC for normal
parameter [1:0] PCB = 2'b01;  //PC for branch
parameter [1:0] PCJR = 2'b10;  //PC for jalr

always_comb begin                           //used to give Branch Ctrl signal
    case (ID_branch)
        No_branch : BranchCtrl = PC4;
        B_branch : begin
            if (ZeroFlag) BranchCtrl = PCB;
            else BranchCtrl = PC4;
        end
        Jalr_branch : BranchCtrl = PCJR;
        J_branch : BranchCtrl = PCB;
    endcase
end   
endmodule