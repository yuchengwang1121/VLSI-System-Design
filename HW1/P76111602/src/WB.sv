module WB(
    input clk,
    input rst,
    input MEM_MemtoReg,
    input MEM_RegWrite,
    input [31:0] MEM_rddata,
    input [31:0] MEM_dout,
    input [4:0] MEM_rdaddr,

    output logic [31:0] WB_rddata,
    output logic [4:0] WB_rdaddr,
    output logic WB_RegWrite
);

assign WB_rddata = (MEM_MemtoReg)? MEM_dout : MEM_rddata;
assign WB_rdaddr = MEM_rdaddr;
assign WB_RegWrite = MEM_RegWrite;

endmodule