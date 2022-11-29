module WB(
    MEMWB_inter.MEMWBi MEMWBi,  // input MEM_MemtoReg,
                                // input MEM_RegWrite,
                                // input [31:0] MEM_rddata,
                                // input [31:0] MEM_dout,
                                // input [4:0] MEM_rdaddr,

    output logic [31:0] WB_rddata,
    output logic [4:0] WB_rdaddr,
    output logic WB_RegWrite
);

assign WB_rddata = (MEMWBi.MEM_MemtoReg)? MEMWBi.MEM_dout : MEMWBi.MEM_rddata;
assign WB_rdaddr = MEMWBi.MEM_rdaddr;
assign WB_RegWrite = MEMWBi.MEM_RegWrite;

endmodule