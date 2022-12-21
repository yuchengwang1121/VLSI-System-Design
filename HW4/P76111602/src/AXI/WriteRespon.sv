`include "../../include/AXI_define.svh"
// `include "Interface.sv"
module WriteRespon(
    input clk,
    input rst,
    inter_WR.M1 M1,
    inter_WR.S0 S0,
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
//assign slave =  (S0.BVALID)?5'b00001:(S1.BVALID)?5'b00010:(S2.BVALID)?5'b00100:(S3.BVALID)?5'b01000:(SD.BVALID)?5'b10000:5'b00000;
logic lock_S0, lock_S1, lock_S2, lock_S3, lock_S4, lock_S5, lock_SDEFAULT;
    always_ff @(posedge clk) begin
        if(rst) begin
            lock_S0 <= 1'b0;
            lock_S1 <= 1'b0;
            lock_S2 <= 1'b0;
            lock_S3 <= 1'b0;
            lock_S4 <= 1'b0;
            lock_S5 <= 1'b0;
            lock_SDEFAULT <= 1'b0;
        end else begin
            lock_S0 <= (lock_S0 & wire_READY)? 1'b0:(S0.BVALID & ~S1.BVALID & ~S2.BVALID & ~S3.BVALID & ~S4.BVALID & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S0;
            lock_S1 <= (lock_S1 & wire_READY)? 1'b0:(~lock_S0  & S1.BVALID  & ~S2.BVALID & ~S3.BVALID & ~S4.BVALID & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S1;
            lock_S2 <= (lock_S2 & wire_READY)? 1'b0:(~lock_S0  & ~lock_S1   & S2.BVALID  & ~S3.BVALID & ~S4.BVALID & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S2;
            lock_S3 <= (lock_S3 & wire_READY)? 1'b0:(~lock_S0  & ~lock_S1   & ~lock_S2   & S3.BVALID  & ~S4.BVALID & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S3;
            lock_S4 <= (lock_S4 & wire_READY)? 1'b0:(~lock_S0  & ~lock_S1   & ~lock_S2   & ~lock_S3   & S4.BVALID  & ~S5.BVALID & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S4;
            lock_S5 <= (lock_S5 & wire_READY)? 1'b0:(~lock_S0  & ~lock_S1   & ~lock_S2   & ~lock_S3   & ~lock_S4   & S5.BVALID  & ~SD.BVALID & ~wire_READY)? 1'b1:lock_S5;
            lock_SDEFAULT <= (lock_SDEFAULT & wire_READY)? 1'b0:(~lock_S0  & ~lock_S1   & ~lock_S2   & ~lock_S3  & ~lock_S4 & ~lock_S5 & SD.BVALID & ~wire_READY)? 1'b1:lock_SDEFAULT;
        end
    end

    always_comb begin
        if((SD.BVALID & ~(lock_S5 | lock_S4 | lock_S3 | lock_S2 | lock_S1 | lock_S0)) | lock_SDEFAULT)
            slave = 7'b1000000;
        else if((S5.BVALID & ~(lock_S4 | lock_S3 | lock_S2 | lock_S1 | lock_S0)) | lock_S5)
            slave = 7'b0100000;
        else if((S4.BVALID & ~(lock_S3 | lock_S2 | lock_S1 | lock_S0)) | lock_S4)
            slave = 7'b0010000;
        else if((S3.BVALID & ~(lock_S2 | lock_S1 | lock_S0)) | lock_S3)
            slave = 7'b0001000;    
        else if((S2.BVALID & ~(lock_S1 | lock_S0)) | lock_S2)
            slave = 7'b0000100;
        else if((S1.BVALID & ~lock_S0)| lock_S1)
            slave = 7'b0000010;
        else if (S0.BVALID | lock_S0)
            slave = 7'b0000001;
        else
            slave = 7'b0;
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
        7'b0000001:begin
            master = S0.S_BID[5:4];
            Wire.BID = S0.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S0.BRESP;
            Wire.BVALID = S0.BVALID;
            {S0.BREADY, S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {wire_READY & S0.BVALID, 6'b0};
        end
        7'b0000010:begin
            master = S1.S_BID[5:4];
            Wire.BID = S1.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S1.BRESP;
            Wire.BVALID = S1.BVALID;
            {S0.BREADY, S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {1'b1,wire_READY & S1.BVALID, 5'b0};
        end
        7'b0000100:begin
            master = S2.S_BID[5:4];
            Wire.BID = S2.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S2.BRESP;
            Wire.BVALID = S2.BVALID;
            {S0.BREADY, S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {2'b0,wire_READY & S2.BVALID, 4'b0};
        end
        7'b0001000:begin
            master = S3.S_BID[5:4];
            Wire.BID = S3.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S3.BRESP;
            Wire.BVALID = S3.BVALID;
            {S0.BREADY, S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {3'b0,wire_READY & S3.BVALID, 3'b0};
        end
        7'b0010000:begin
            master = S4.S_BID[5:4];
            Wire.BID = S4.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S4.BRESP;
            Wire.BVALID = S4.BVALID;
            {S0.BREADY, S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {4'b0,wire_READY & S4.BVALID, 2'b0};
        end
        7'b0100000:begin
            master = S5.S_BID[5:4];
            Wire.BID = S5.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = S5.BRESP;
            Wire.BVALID = S5.BVALID;
            {S0.BREADY, S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {5'b0,wire_READY & S5.BVALID, 1'b0};
        end
        7'b1000000:begin
            master = SD.S_BID[5:4];
            Wire.BID = SD.S_BID[`AXI_ID_BITS-1:0];
            Wire.BRESP = SD.BRESP;
            Wire.BVALID = SD.BVALID;
            {S0.BREADY, S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = {6'b0,wire_READY & SD.BVALID};
        end
        default: begin
            master = 2'b0;
            Wire.BID = `AXI_ID_BITS'b0;
            Wire.BRESP = 2'b0;
            Wire.BVALID = 1'b0;
            {S0.BREADY, S1.BREADY,S2.BREADY, S3.BREADY, S4.BREADY, S5.BREADY, SD.BREADY} = 7'b0;
        end
    endcase
end
endmodule
