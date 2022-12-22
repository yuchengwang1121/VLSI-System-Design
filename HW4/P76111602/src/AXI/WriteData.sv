`include "../../include/AXI_define.svh"
// `include "Interface.sv"
module WriteData(
    input clk,
    input rst,
    inter_WD.M1 M1,
    inter_WD.S1 S1,
    inter_WD.S2 S2,
    inter_WD.S3 S3,
    inter_WD.S3 S4,
    inter_WD.S3 S5,
    inter_WD.SDEFAULT SD,
    input AWVALID_S1,
    input AWVALID_S2,
    input AWVALID_S3,
    input AWVALID_S4,
    input AWVALID_S5,
    input AWVALID_SD
);
inter_WD Wire();

logic wire_READY;
logic reg_WVALID_S1, reg_WVALID_S2, reg_WVALID_S3, reg_WVALID_S4, reg_WVALID_S5, reg_WVALID_SD;
logic [5:0] slave;
    
assign Wire.WDATA = M1.WDATA;
assign Wire.WSTRB = M1.WSTRB;
assign Wire.WLAST = M1.WLAST;
assign Wire.WVALID = M1.WVALID;
assign M1.WREADY = wire_READY & Wire.WVALID;

assign S1.WDATA = Wire.WDATA;
assign S1.WSTRB = (S1.WVALID)?Wire.WSTRB:`AXI_STRB_BITS'b1111;
assign S1.WLAST = Wire.WLAST;

assign S2.WDATA = Wire.WDATA;
assign S2.WSTRB = (S2.WVALID)?Wire.WSTRB:`AXI_STRB_BITS'b1111;
assign S2.WLAST = Wire.WLAST;

assign S3.WDATA = Wire.WDATA;
assign S3.WSTRB = (S3.WVALID)?Wire.WSTRB:`AXI_STRB_BITS'b1111;
assign S3.WLAST = Wire.WLAST;

assign S4.WDATA = Wire.WDATA;
assign S4.WSTRB = (S4.WVALID)?Wire.WSTRB:`AXI_STRB_BITS'b1111;
assign S4.WLAST = Wire.WLAST;

assign S5.WDATA = Wire.WDATA;
assign S5.WSTRB = (S5.WVALID)?Wire.WSTRB:`AXI_STRB_BITS'b1111;
assign S5.WLAST = Wire.WLAST;

assign SD.WDATA = Wire.WDATA;
assign SD.WSTRB = Wire.WSTRB;
assign SD.WLAST = Wire.WLAST;

assign slave = {(reg_WVALID_SD || AWVALID_SD),(reg_WVALID_S5 || AWVALID_S5),(reg_WVALID_S4 || AWVALID_S4),(reg_WVALID_S3 || AWVALID_S3),(reg_WVALID_S2 || AWVALID_S2),(reg_WVALID_S1 || AWVALID_S1)};

always_ff @(posedge clk) begin
    if (rst) begin
        reg_WVALID_S1 <= 1'b0;
        reg_WVALID_S2 <= 1'b0;
        reg_WVALID_S3 <= 1'b0;
        reg_WVALID_S4 <= 1'b0;
        reg_WVALID_S5 <= 1'b0;
        reg_WVALID_SD <= 1'b0;
    end else begin
        reg_WVALID_S1 <= (AWVALID_S1)?1'b1:((Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_S1);
        reg_WVALID_S2 <= (AWVALID_S2)?1'b1:((Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_S2);
        reg_WVALID_S3 <= (AWVALID_S3)?1'b1:((Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_S3);
        reg_WVALID_S4 <= (AWVALID_S4)?1'b1:((Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_S4);
        reg_WVALID_S5 <= (AWVALID_S5)?1'b1:((Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_S5);
        reg_WVALID_SD <= (AWVALID_SD)?1'b1:((Wire.WVALID & wire_READY & Wire.WLAST)?1'b0:reg_WVALID_SD);
    end
end

always_comb begin
    case (slave)
        6'b000001:begin
            wire_READY = S1.WREADY;
            {S1.WVALID, S2.WVALID, S3.WVALID, S4.WVALID, S5.WVALID, SD.WVALID} = {Wire.WVALID, 5'b0};
        end
        6'b000010:begin
            wire_READY = S2.WREADY;
            {S1.WVALID, S2.WVALID, S3.WVALID, S4.WVALID, S5.WVALID, SD.WVALID} = {1'b0,Wire.WVALID,4'b0};
        end
        6'b000100:begin
            wire_READY = S3.WREADY;
            {S1.WVALID, S2.WVALID, S3.WVALID, S4.WVALID, S5.WVALID, SD.WVALID} = {2'b0,Wire.WVALID,3'b0};
        end
        6'b001000:begin
            wire_READY = S4.WREADY;
            {S1.WVALID, S2.WVALID, S3.WVALID, S4.WVALID, S5.WVALID, SD.WVALID} = {3'b0,Wire.WVALID,2'b0};
        end
        6'b010000:begin
            wire_READY = S5.WREADY;
            {S1.WVALID, S2.WVALID, S3.WVALID, S4.WVALID, S5.WVALID, SD.WVALID} = {4'b0,Wire.WVALID,1'b0};
        end
        6'b100000:begin
            wire_READY = SD.WREADY;
            {S1.WVALID, S2.WVALID, S3.WVALID, S4.WVALID, S5.WVALID, SD.WVALID} = {5'b0,Wire.WVALID};
        end
        default: begin
            wire_READY = 1'b0;
            {S1.WVALID, S2.WVALID, S3.WVALID, S4.WVALID, S5.WVALID, SD.WVALID} = 6'b0;
        end
    endcase
end
endmodule
