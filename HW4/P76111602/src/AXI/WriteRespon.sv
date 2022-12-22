`include "../../include/AXI_define.svh"
// `include "Interface.sv"
module WriteRespon(
    input clk,
    input rst,
    inter_WR.M1 M1,
    inter_WR.S1 S1,
    inter_WR.S2 S2,
    inter_WR.S3 S3,
    inter_WR.S3 S4,
    inter_WR.S3 S5,
    inter_WR.SDEFAULT SD
);
inter_WR Wire();

logic wire_READY;
logic [6:0] slave;
logic [1:0] master;

assign M1.BID = Wire.BID;
assign M1.BRESP = Wire.BRESP;
logic lock_S1, lock_S2, lock_S3, lock_S4, lock_S5, lock_SDEFAULT;
    always_ff @(posedge clk) begin
        if(rst) begin
            lock_S1 <= 1'b0;
            lock_S2 <= 1'b0;
            lock_S3 <= 1'b0;
            lock_S4 <= 1'b0;
            lock_S5 <= 1'b0;
            lock_SDEFAULT <= 1'b0;
        end else begin
            lock_S1 <= (lock_S1 & wire_READY)? 1'b0:(S1.BVALID  & ~S2.BVALID & ~S3.BVALID & ~S4.BVALID & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S1;
            lock_S2 <= (lock_S2 & wire_READY)? 1'b0:(~lock_S1   & S2.BVALID  & ~S3.BVALID & ~S4.BVALID & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S2;
            lock_S3 <= (lock_S3 & wire_READY)? 1'b0:(~lock_S1   & ~lock_S2   & S3.BVALID  & ~S4.BVALID & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S3;
            lock_S4 <= (lock_S4 & wire_READY)? 1'b0:(~lock_S1   & ~lock_S2   & ~lock_S3   & S4.BVALID  & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S4;
            lock_S5 <= (lock_S5 & wire_READY)? 1'b0:(~lock_S1   & ~lock_S2   & ~lock_S3   & ~lock_S4   & S5.BVALID  & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S5;
            lock_SDEFAULT <= (lock_SDEFAULT & wire_READY)? 1'b0:(~lock_S1   & ~lock_S2   & ~lock_S3  & ~lock_S4 & ~lock_S5 & SD.BVALID & ~wire_READY)? 1'b1:lock_SDEFAULT;
        end
    end

    always_comb begin
        if((SD.BVALID & ~(lock_S5 | lock_S4 | lock_S3 | lock_S2 | lock_S1)) | lock_SDEFAULT)
            slave = 6'b100000;
        else if((S5.BVALID & ~(lock_S4 | lock_S3 | lock_S2 | lock_S1)) | lock_S5)
            slave = 6'b010000;
        else if((S4.BVALID & ~(lock_S3 | lock_S2 | lock_S1)) | lock_S4)
            slave = 6'b001000;
        else if((S3.BVALID & ~(lock_S2 | lock_S1)) | lock_S3)
            slave = 6'b000100;    
        else if((S2.BVALID & ~(lock_S1)) | lock_S2)
            slave = 6'b000010;
        else if(S1.BVALID| lock_S1)
            slave = 6'b000001;
        else
            slave = 6'b0;
    end

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
        6'b000001:begin
            master = S1.S_BID[5:4];
            Wire.BID = S1.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S1.BRESP;
            Wire.BVALID = S1.BVALID;
            {S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {wire_READY & S1.BVALID, 5'b0};
        end
        6'b000010:begin
            master = S2.S_BID[5:4];
            Wire.BID = S2.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S2.BRESP;
            Wire.BVALID = S2.BVALID;
            {S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {1'b0, wire_READY & S2.BVALID, 4'b0};
        end
        6'b000100:begin
            master = S3.S_BID[5:4];
            Wire.BID = S3.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S3.BRESP;
            Wire.BVALID = S3.BVALID;
            {S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {2'b0, wire_READY & S3.BVALID, 3'b0};
        end
        6'b001000:begin
            master = S4.S_BID[5:4];
            Wire.BID = S4.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S4.BRESP;
            Wire.BVALID = S4.BVALID;
            {S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {3'b0, wire_READY & S4.BVALID, 2'b0};
        end
        6'b010000:begin
            master = S5.S_BID[5:4];
            Wire.BID = S5.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S5.BRESP;
            Wire.BVALID = S5.BVALID;
            {S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {4'b0, wire_READY & S5.BVALID, 1'b0};
        end
        6'b100000:begin
            master = SD.S_BID[5:4];
            Wire.BID = SD.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = SD.BRESP;
            Wire.BVALID = SD.BVALID;
            {S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {5'b0, wire_READY & SD.BVALID};
        end
        default: begin
            master = 2'b0;
            Wire.BID = `AXI_ID_BITS'b0;
            Wire.BRESP = 2'b0;
            Wire.BVALID = 1'b0;
            {S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = 6'b0;
        end
    endcase
end
endmodule
