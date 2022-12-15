module RegisterFile(
    input clk,
    input rst,
    input RegWrite,
    input [4:0] rs1_addr,
    input [4:0] rs2_addr,
    input [4:0] WB_rdaddr,
    input [31:0] WB_rddata,

    output logic [31:0] rs1data,
    output logic [31:0] rs2data
);

logic [31:0] Reg [31:0];

assign rs1data = Reg[rs1_addr];     //get data from the reg
assign rs2data = Reg[rs2_addr];

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        for (int i=0; i<32; i++) begin
            Reg[i] <= 32'b0 ;
        end
    end
    else begin
        if(RegWrite && (WB_rdaddr != 5'b0))
            Reg[WB_rdaddr] <= WB_rddata;
    end
end
endmodule