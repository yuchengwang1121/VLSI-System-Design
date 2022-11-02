`include "../../include/AXI_define.svh"
// `include "Interface.sv"
module WriteData(
    input clk,
    input rst,
    inter_WD.M1 M1,
    inter_WD.S0 S0,
    inter_WD.S1 S1,
    inter_WD.SDEFAULT SD,
    input AWVALID_S0,
    input AWVALID_S1,
    input AWVALID_SD
);
inter_WD Wire();

logic wire_READY;
logic reg_WVALID_S0, reg_WVALID_S1, reg_WVALID_SD;
logic [2:0] slave;
    
assign Wire.WDATA = M1.WDATA;
assign Wire.WSTRB = M1.WSTRB;
assign Wire.WLAST = M1.WLAST;
assign Wire.WVALID = M1.WVALID;
assign M1.WREADY = wire_READY & Wire.WVALID;

assign S0.WDATA = Wire.WDATA;
assign S0.WSTRB = (S0.WVALID)?Wire.WSTRB:`AXI_STRB_BITS'b1111;
assign S0.WLAST = Wire.WLAST;

assign S1.WDATA = Wire.WDATA;
assign S1.WSTRB = (S1.WVALID)?Wire.WSTRB:`AXI_STRB_BITS'b1111;
assign S1.WLAST = Wire.WLAST;

assign SD.WDATA = Wire.WDATA;
assign SD.WSTRB = Wire.WSTRB;
assign SD.WLAST = Wire.WLAST;

assign slave = {(reg_WVALID_SD || AWVALID_SD),(reg_WVALID_S1 || AWVALID_S1),(reg_WVALID_S0 || AWVALID_S0)};

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        reg_WVALID_S0 <= 1'b0;
        reg_WVALID_S1 <= 1'b0;
        reg_WVALID_SD <= 1'b0;
    end else begin
        reg_WVALID_S0 <= (AWVALID_S0)?1'b1:(Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_S0;
        reg_WVALID_S1 <= (AWVALID_S1)?1'b1:(Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_S1;
        reg_WVALID_SD <= (AWVALID_SD)?1'b1:(Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_SD;
    end
end

always_comb begin
    case (slave)
        3'b001:begin
            wire_READY = S0.WREADY;
            {S0.WVALID, S1.WVALID, SD.WVALID} = {Wire.WVALID, 2'b0};
        end
        3'b010:begin
            wire_READY = S1.WREADY;
            {S0.WVALID, S1.WVALID, SD.WVALID} = {1'b0, Wire.WVALID, 1'b0};
        end
        3'b100:begin
            wire_READY = SD.WREADY;
            {S0.WVALID, S1.WVALID, SD.WVALID} = {2'b0,Wire.WVALID};
        end
        default: begin
            wire_READY = 1'b1;
            {S0.WVALID, S1.WVALID, SD.WVALID} = 3'b0;
        end
    endcase
end
endmodule