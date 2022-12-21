`include "../../include/AXI_define.svh"
// `include "Interface.sv"
module ReadData(
    input clk,
    input rst,
    inter_RD.M0 M0,
    inter_RD.M1 M1,
    inter_RD.S0 S0,
    inter_RD.S1 S1,
    inter_RD.S2 S2,
    inter_RD.S3 S3,
    inter_RD.S3 S4,
    inter_RD.S3 S5,
    inter_RD.SDEFAULT SD
);
inter_RD Wire();

logic READY_M;

logic [2:0] slave;
logic [1:0] master;
logic lockS0;
logic lockS1;
logic lockS2;
logic lockS3;
logic lockS4;
logic lockS5;
logic lockSD;

//M0
assign M0.RID = Wire.S_RID[`AXI_ID_BITS-1:0];
assign M0.RDATA = Wire.RDATA;
assign M0.RRESP = Wire.RRESP;
assign M0.RLAST = Wire.RLAST;

//M1
assign M1.RID = Wire.S_RID[`AXI_ID_BITS-1:0];
assign M1.RDATA = Wire.RDATA;
assign M1.RRESP = Wire.RRESP;
assign M1.RLAST = Wire.RLAST;

always_ff @(posedge clk) begin
    if (rst) begin
        {lockS0, lockS1, lockS2, lockS3, lockS4, lockS5, lockSD} <= 7'b0;
    end
    else begin
        lockS0 <= (lockS0 & READY_M & S0.RLAST)?1'b0:(S0.RVALID & ~S1.RVALID & ~S2.RVALID & ~S3.RVALID & ~S4.RVALID & ~S5.RVALID & ~SD.RVALID & ~READY_M)?1'b1:lockS0;
        lockS1 <= (lockS1 & READY_M & S1.RLAST)?1'b0:(~lockS0 & S1.RVALID & ~S2.RVALID & ~S3.RVALID & ~S4.RVALID & ~S5.RVALID & ~SD.RVALID & ~READY_M)?1'b1:lockS1;
        lockS2 <= (lockS2 & READY_M & S2.RLAST)?1'b0:(~lockS0 & ~lockS1 & S2.RVALID & ~S3.RVALID & ~S4.RVALID & ~S5.RVALID & ~SD.RVALID & ~READY_M)?1'b1:lockS2;
        lockS3 <= (lockS3 & READY_M & S3.RLAST)?1'b0:(~lockS0 & ~lockS1 & ~lockS2 & S3.RVALID & ~S4.RVALID & ~S5.RVALID & ~SD.RVALID & ~READY_M)?1'b1:lockS3;
        lockS4 <= (lockS4 & READY_M & S4.RLAST)?1'b0:(~lockS0 & ~lockS1 & ~lockS2 & ~lockS3 & S4.RVALID & ~S5.RVALID & ~SD.RVALID & ~READY_M)?1'b1:lockS4;
        lockS5 <= (lockS5 & READY_M & S5.RLAST)?1'b0:(~lockS0 & ~lockS1 & ~lockS2 & ~lockS3 & ~lockS4 & S5.RVALID & ~SD.RVALID & ~READY_M)?1'b1:lockS5;
        lockSD <= (lockSD & READY_M & SD.RLAST)?1'b0:(~lockS0 & ~lockS1 & ~lockS2 & ~lockS3 & ~lockS4 & ~lockS5 & SD.RVALID & ~READY_M)?1'b1:lockSD;
    end
end

always_comb begin
    if ((SD.RVALID & ~(lockS0 | lockS1 | lockS2 | lockS3 | lockS4 | lockS5)) | lockSD) slave = 3'b111;
    else if ((S5.RVALID & ~(lockS0 | lockS1 | lockS2 | lockS3 | lockS4)) | lockS5) slave = 3'b110; 
    else if ((S4.RVALID & ~(lockS0 | lockS1 | lockS2 | lockS3)) | lockS4) slave = 3'b101; 
    else if ((S3.RVALID & ~(lockS0 | lockS1 | lockS2)) | lockS3) slave = 3'b100;
    else if ((S2.RVALID & ~(lockS0 | lockS1)) | lockS2) slave = 3'b011;
    else if ((S1.RVALID & ~(lockS0)) | lockS1) slave = 3'b010; 
    else if (S0.RVALID | lockS0) slave = 3'b001; 
    else slave = 3'b0;
end

always_comb begin
    case (master)
        2'b01: begin
           READY_M = M0.RREADY;
           {M0.RVALID, M1.RVALID} = {Wire.RVALID, 1'b0};
        end
        2'b10: begin
            READY_M = M1.RREADY;
           {M0.RVALID, M1.RVALID} = {1'b0, Wire.RVALID};
        end
        default: begin
            READY_M = 1'b1;
            {M0.RVALID, M1.RVALID} = 2'b0;
        end
    endcase
end

always_comb begin
    case (slave)
        3'b001:begin
            master = S0.S_RID[5:4];
            Wire.S_RID = S0.S_RID;
            Wire.RDATA = S0.RDATA;
            Wire.RRESP = S0.RRESP;
            Wire.RLAST = S0.RLAST;
            Wire.RVALID = S0.RVALID;

            {S0.RREADY,S1.RREADY,S2.RREADY,S3.RREADY,S4.RREADY,S5.RREADY, SD.RREADY} = {READY_M & S0.RVALID, 6'b0};
        end
        3'b010:begin
            master = S1.S_RID[5:4];
            Wire.S_RID = S1.S_RID;
            Wire.RDATA = S1.RDATA;
            Wire.RRESP = S1.RRESP;
            Wire.RLAST = S1.RLAST;
            Wire.RVALID = S1.RVALID;

            {S0.RREADY,S1.RREADY,S2.RREADY,S3.RREADY,S4.RREADY,S5.RREADY, SD.RREADY} = {1'b0,READY_M & S1.RVALID, 5'b0};
        end
        3'b011:begin
            master = S2.S_RID[5:4];
            Wire.S_RID = S2.S_RID;
            Wire.RDATA = S2.RDATA;
            Wire.RRESP = S2.RRESP;
            Wire.RLAST = S2.RLAST;
            Wire.RVALID = S2.RVALID;

            {S0.RREADY,S1.RREADY,S2.RREADY,S3.RREADY,S4.RREADY,S5.RREADY, SD.RREADY} = {2'b0,READY_M & S2.RVALID, 4'b0};
        end
        3'b100:begin
            master = S3.S_RID[5:4];
            Wire.S_RID = S3.S_RID;
            Wire.RDATA = S3.RDATA;
            Wire.RRESP = S3.RRESP;
            Wire.RLAST = S3.RLAST;
            Wire.RVALID = S3.RVALID;

            {S0.RREADY,S1.RREADY,S2.RREADY,S3.RREADY,S4.RREADY,S5.RREADY, SD.RREADY} = {3'b0,READY_M & S3.RVALID, 3'b0};
        end
        3'b101:begin
            master = S4.S_RID[5:4];
            Wire.S_RID = S4.S_RID;
            Wire.RDATA = S4.RDATA;
            Wire.RRESP = S4.RRESP;
            Wire.RLAST = S4.RLAST;
            Wire.RVALID = S4.RVALID;

            {S0.RREADY,S1.RREADY,S2.RREADY,S3.RREADY,S4.RREADY,S5.RREADY, SD.RREADY} = {4'b0,READY_M & S4.RVALID, 2'b0};
        end
        3'b110:begin
            master = S5.S_RID[5:4];
            Wire.S_RID = S5.S_RID;
            Wire.RDATA = S5.RDATA;
            Wire.RRESP = S5.RRESP;
            Wire.RLAST = S5.RLAST;
            Wire.RVALID = S5.RVALID;

            {S0.RREADY,S1.RREADY,S2.RREADY,S3.RREADY,S4.RREADY,S5.RREADY, SD.RREADY} = {5'b0,READY_M & S5.RVALID, 1'b0};
        end
        3'b111:begin
            master = SD.S_RID[5:4];
            Wire.S_RID = SD.S_RID;
            Wire.RDATA = SD.RDATA;
            Wire.RRESP = SD.RRESP;
            Wire.RLAST = SD.RLAST;
            Wire.RVALID = SD.RVALID;

            {S0.RREADY,S1.RREADY,S2.RREADY,S3.RREADY,S4.RREADY,S5.RREADY, SD.RREADY} = {6'b0,READY_M & SD.RVALID};
        end
        default: begin
            master = 2'b0;
            Wire.S_RID = `AXI_IDS_BITS'b0;
            Wire.RDATA = `AXI_DATA_BITS'b0;
            Wire.RRESP = 2'b0;
            Wire.RLAST = 1'b0;
            Wire.RVALID = 1'b0;

            {S0.RREADY,S1.RREADY,S2.RREADY,S3.RREADY,S4.RREADY,S5.RREADY, SD.RREADY} = 7'b0;
        end
    endcase
end
endmodule
