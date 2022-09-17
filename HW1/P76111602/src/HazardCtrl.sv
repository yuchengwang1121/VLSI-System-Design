module HazardCtrl(
    input[1:0] BranchCtrl,
    input ID_MemRead,
    input[4:0] rs1addr,
    input[4:0] rs2addr,
    input[4:0] ID_rdaddr,

    IFHC_inter.IFHCo IFHCo, // output logic PCWrite,
                            // output logic InstrFlush,
                            // output logic IFID_RegWrite,
    output logic IDFlush
);

parameter [1:0] PC4 = 2'b00;  //PC for normal
parameter [1:0] PCB = 2'b01;  //PC for branch
parameter [1:0] PCJR = 2'b10;  //PC for jalr

always_comb begin
    if (BranchCtrl!=PC4) begin  //if branch or jalr, flush the 1st,2nd instr
        IFHCo.PCWrite = 1'b1;
        IFHCo.IFID_RegWrite = 1'b1;        
        IFHCo.InstrFlush = 1'b1;
        IDFlush = 1'b1;
    end
    else if (ID_MemRead && ((ID_rdaddr == rs1addr)||(ID_rdaddr == rs2addr))) begin   //load use (MEM<read && (rd=rs || rd=rt))
        IFHCo.PCWrite = 1'b0;                 //stall the PC
        IFHCo.IFID_RegWrite = 1'b0;           //stall the IF/ID reg
        IFHCo.InstrFlush = 1'b0;              //stall the Instr
        IDFlush = 1'b1;                 //clear ID state to NOP
    end
    else begin                  //normal situtation
        IFHCo.PCWrite = 1'b1;
        IFHCo.IFID_RegWrite = 1'b1;
        IFHCo.InstrFlush = 1'b0;
        IDFlush = 1'b0;
    end
end
endmodule