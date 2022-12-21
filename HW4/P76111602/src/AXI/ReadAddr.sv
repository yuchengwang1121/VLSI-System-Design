`include "../../include/AXI_define.svh"
// `include "Arbiter.sv"
// `include "Decoder.sv"
// `include "Interface.sv"

module ReadAddr(
    input clk,
    input rst,
    inter_RA.M0 M0,
    inter_RA.M1 M1,
    inter_RA.S0 S0,
    inter_RA.S1 S1,
    inter_RA.S2 S2,
    inter_RA.S3 S3,
    inter_RA.S3 S4,
    inter_RA.S3 S5,
    inter_RA.SDEFAULT SD
);
//wire
inter_RA Wire();                      //used to connect submodule for "assign" output
VALIDCtrl VS0();
VALIDCtrl VS1();
VALIDCtrl VS2();
VALIDCtrl VS3();
VALIDCtrl VS4();
VALIDCtrl VS5();
VALIDCtrl VSD();    //parameter to control valid value

// logic wire_READY;                   //wire for READY signal

//Slave 0 ROM
assign S0.S_ARID = Wire.S_ARID;
assign S0.ARADDR = Wire.ARADDR;
assign S0.ARLEN = Wire.ARLEN;
assign S0.ARSIZE = Wire.ARSIZE;
assign S0.ARBURST = Wire.ARBURST;

//Slave 1 IM
assign S1.S_ARID = Wire.S_ARID;
assign S1.ARADDR = Wire.ARADDR;
assign S1.ARLEN = Wire.ARLEN;
assign S1.ARSIZE = Wire.ARSIZE;
assign S1.ARBURST = Wire.ARBURST;

//Slave 2 DM
assign S2.S_ARID = Wire.S_ARID;
assign S2.ARADDR = Wire.ARADDR;
assign S2.ARLEN = Wire.ARLEN;
assign S2.ARSIZE = Wire.ARSIZE;
assign S2.ARBURST = Wire.ARBURST;

//Slave 3 DRAM
assign S3.S_ARID = Wire.S_ARID;
assign S3.ARADDR = Wire.ARADDR;
assign S3.ARLEN = Wire.ARLEN;
assign S3.ARSIZE = Wire.ARSIZE;
assign S3.ARBURST = Wire.ARBURST;

//Slave 4 sensor
assign S4.S_ARID = Wire.S_ARID;
assign S4.ARADDR = Wire.ARADDR;
assign S4.ARLEN = Wire.ARLEN;
assign S4.ARSIZE = Wire.ARSIZE;
assign S4.ARBURST = Wire.ARBURST;

//Slave 5 WDT
assign S5.S_ARID = Wire.S_ARID;
assign S5.ARADDR = Wire.ARADDR;
assign S5.ARLEN = Wire.ARLEN;
assign S5.ARSIZE = Wire.ARSIZE;
assign S5.ARBURST = Wire.ARBURST;

//Slave Default
assign SD.S_ARID = Wire.S_ARID;
assign SD.ARADDR = Wire.ARADDR;
assign SD.ARLEN = Wire.ARLEN;
assign SD.ARSIZE = Wire.ARSIZE;
assign SD.ARBURST = Wire.ARBURST;

assign VS0.busy = VS0.reg_READY & ~S0.ARREADY;
assign VS1.busy = VS1.reg_READY & ~S1.ARREADY;
assign VS2.busy = VS2.reg_READY & ~S2.ARREADY;
assign VS3.busy = VS3.reg_READY & ~S3.ARREADY;
assign VS4.busy = VS4.reg_READY & ~S4.ARREADY;
assign VS5.busy = VS5.reg_READY & ~S5.ARREADY;
assign VSD.busy = VSD.reg_READY & ~SD.ARREADY;

assign S0.ARVALID = VS0.busy?1'b0:VS0.temp_ARVALID;
assign S1.ARVALID = VS1.busy?1'b0:VS1.temp_ARVALID;
assign S2.ARVALID = VS2.busy?1'b0:VS2.temp_ARVALID;
assign S3.ARVALID = VS3.busy?1'b0:VS3.temp_ARVALID;
assign S4.ARVALID = VS4.busy?1'b0:VS4.temp_ARVALID;
assign S5.ARVALID = VS5.busy?1'b0:VS5.temp_ARVALID;
assign SD.ARVALID = VSD.busy?1'b0:VSD.temp_ARVALID;

always_ff @(posedge clk) begin
    if (rst) begin
        VS0.reg_READY <= 1'b0;
        VS1.reg_READY <= 1'b0;
        VS2.reg_READY <= 1'b0;
        VS3.reg_READY <= 1'b0;
        VSD.reg_READY <= 1'b0;
        VS4.reg_READY <= 1'b0;
        VS5.reg_READY <= 1'b0;
    end else begin
        VS0.reg_READY <= S0.ARREADY? 1'b1 : VS0.reg_READY;
        VS1.reg_READY <= S1.ARREADY? 1'b1 : VS1.reg_READY;
        VS2.reg_READY <= S2.ARREADY? 1'b1 : VS2.reg_READY;
        VS3.reg_READY <= S3.ARREADY? 1'b1 : VS3.reg_READY;
        VSD.reg_READY <= SD.ARREADY? 1'b1 : VSD.reg_READY;
        VS4.reg_READY <= S4.ARREADY? 1'b1 : VS4.reg_READY;
        VS5.reg_READY <= S5.ARREADY? 1'b1 : VS5.reg_READY;
    end
end

Arbiter RArbiter(
    .clk        (clk),
    .rst        (rst),
    .ID_M0      (M0.ARID),
    .ADDR_M0    (M0.ARADDR),
    .SIZE_M0    (M0.ARSIZE),
    .LEN_M0     (M0.ARLEN),
    .BURST_M0   (M0.ARBURST),
    .VALID_M0   (M0.ARVALID),
    .READY_M0   (M0.ARREADY),
    .ID_M1      (M1.ARID),
    .ADDR_M1    (M1.ARADDR),
    .SIZE_M1    (M1.ARSIZE),
    .LEN_M1     (M1.ARLEN),
    .BURST_M1   (M1.ARBURST),
    .VALID_M1   (M1.ARVALID),
    .READY_M1   (M1.ARREADY),
    .ID_M       (Wire.S_ARID),
    .ADDR_M     (Wire.ARADDR),
    .SIZE_M     (Wire.ARSIZE),
    .LEN_M      (Wire.ARLEN),
    .BURST_M    (Wire.ARBURST),
    .VALID_M    (Wire.ARVALID),
    .READY_M    (Wire.ARREADY)
);

Decoder RDecoder(
    .VALID        (Wire.ARVALID),
    .ADDR         (Wire.ARADDR),
    .READY_S0     (S0.ARREADY),
    .READY_S1     (S1.ARREADY),
    .READY_S2     (S2.ARREADY),
    .READY_S3     (S3.ARREADY),
    .READY_S4     (S4.ARREADY),
    .READY_S5     (S5.ARREADY),
    .READY_SD     (SD.ARREADY),
    .VALID_S0     (VS0.temp_ARVALID),
    .VALID_S1     (VS1.temp_ARVALID),
    .VALID_S2     (VS2.temp_ARVALID),
    .VALID_S3     (VS3.temp_ARVALID),
    .VALID_S4     (VS4.temp_ARVALID),
    .VALID_S5     (VS5.temp_ARVALID),
    .VALID_SD     (VSD.temp_ARVALID),
    .READY_S      (Wire.ARREADY)
);

endmodule

