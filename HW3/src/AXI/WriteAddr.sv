`include "../../include/AXI_define.svh"
// `include "Arbiter.sv"
// `include "Decoder.sv"
// `include "Interface.sv"
module WriteAddr(
    input clk,
    input rst,
    inter_WA.M1 M1,             //only DataMemory needs to Write
    inter_WA.S0 S0,
    inter_WA.S1 S1,
    inter_WA.S2 S2,
    inter_WA.S3 S3,
    inter_WA.SDEFAULT SD
);
inter_WA Wire();

logic ARREADY_M0;


assign S0.S_AWID = Wire.S_AWID;
assign S0.AWADDR = Wire.AWADDR;
assign S0.AWLEN = Wire.AWLEN;
assign S0.AWSIZE = Wire.AWSIZE;
assign S0.AWBURST = Wire.AWBURST;

assign S1.S_AWID = Wire.S_AWID;
assign S1.AWADDR = Wire.AWADDR;
assign S1.AWLEN = Wire.AWLEN;
assign S1.AWSIZE = Wire.AWSIZE;
assign S1.AWBURST = Wire.AWBURST;

assign S2.S_AWID = Wire.S_AWID;
assign S2.AWADDR = Wire.AWADDR;
assign S2.AWLEN = Wire.AWLEN;
assign S2.AWSIZE = Wire.AWSIZE;
assign S2.AWBURST = Wire.AWBURST;

assign S3.S_AWID = Wire.S_AWID;
assign S3.AWADDR = Wire.AWADDR;
assign S3.AWLEN = Wire.AWLEN;
assign S3.AWSIZE = Wire.AWSIZE;
assign S3.AWBURST = Wire.AWBURST;

assign SD.S_AWID = Wire.S_AWID;
assign SD.AWADDR = Wire.AWADDR;
assign SD.AWLEN = Wire.AWLEN;
assign SD.AWSIZE = Wire.AWSIZE;
assign SD.AWBURST = Wire.AWBURST;

Arbiter WArbiter(
    .clk        (clk),
    .rst        (rst),
    .ID_M0      (`AXI_ID_BITS'b0),
    .ADDR_M0    (`AXI_ADDR_BITS'b0),
    .SIZE_M0    (`AXI_SIZE_BITS'b0),
    .LEN_M0     (`AXI_LEN_BITS'b0),
    .BURST_M0   (2'b0),
    .VALID_M0   (1'b0),
    .READY_M0   (ARREADY_M0),
    .ID_M1      (M1.AWID),
    .ADDR_M1    (M1.AWADDR),
    .SIZE_M1    (M1.AWSIZE),
    .LEN_M1     (M1.AWLEN),
    .BURST_M1   (M1.AWBURST),
    .VALID_M1   (M1.AWVALID),
    .READY_M1   (M1.AWREADY),
    .ID_M       (Wire.S_AWID),
    .ADDR_M     (Wire.AWADDR),
    .SIZE_M     (Wire.AWSIZE),
    .LEN_M      (Wire.AWLEN),
    .BURST_M    (Wire.AWBURST),
    .VALID_M    (Wire.AWVALID),
    .READY_M    (Wire.AWREADY)
);

Decoder WDecoder(
    .VALID        (Wire.AWVALID),
    .ADDR         (Wire.AWADDR),
    .READY_S0     (S0.AWREADY),
    .READY_S1     (S1.AWREADY),
    .READY_S2     (S2.AWREADY),
    .READY_S3     (S3.AWREADY),
    .READY_SD     (SD.AWREADY),
    .VALID_S0     (S0.AWVALID),
    .VALID_S1     (S1.AWVALID),
    .VALID_S2     (S2.AWVALID),
    .VALID_S3     (S3.AWVALID),
    .VALID_SD     (SD.AWVALID),
    .READY_S      (Wire.AWREADY)
);
endmodule