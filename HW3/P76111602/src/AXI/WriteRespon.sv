`include "../../include/AXI_define.svh"
// `include "Interface.sv"
module WriteRespon(
    input clk,
    input rst,
    inter_WR.M1 M1,
    inter_WR.S0 S0,
    inter_WR.S1 S1,
    inter_WR.SDEFAULT SD
);
inter_WR Wire();

logic wire_READY;
logic [2:0] slave;
logic [1:0] master;

assign M1.BID = Wire.BID;
assign M1.BRESP = Wire.BRESP;
assign slave =  (S0.BVALID)?3'b001:(S1.BVALID)?3'b010:(SD.BVALID)?3'b100:3'b000;

always_comb begin
    if (master == 2'b10) begin
        {wire_READY, M1.BVALID} = {M1.BREADY, Wire.BVALID};
    end
    else begin
        {wire_READY, M1.BVALID} = 2'b10;
    end
end

always_comb begin
    case (slave)
        3'b001:begin
            master = S0.S_BID[5:4];
            Wire.BID = S0.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S0.BRESP;
            Wire.BVALID = S0.BVALID;
            {S0.BREADY, S1.BREADY, SD.BREADY} = {wire_READY & S0.BVALID, 2'b0};
        end
        3'b010:begin
            master = S1.S_BID[5:4];
            Wire.BID = S1.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S1.BRESP;
            Wire.BVALID = S1.BVALID;
            {S0.BREADY, S1.BREADY, SD.BREADY} = {1'b0, wire_READY & S1.BVALID, 1'b0};
        end
        3'b100:begin
            master = SD.S_BID[5:4];
            Wire.BID = SD.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = SD.BRESP;
            Wire.BVALID = SD.BVALID;
            {S0.BREADY, S1.BREADY, SD.BREADY} = {2'b0, wire_READY & SD.BVALID};
        end
        default: begin
            master = 2'b0;
            Wire.BID = `AXI_ID_BITS'b0;
            Wire.BRESP = 2'b0;
            Wire.BVALID = 1'b0;
            {S0.BREADY, S1.BREADY, SD.BREADY} = 3'b0;
        end
    endcase
end
endmodule