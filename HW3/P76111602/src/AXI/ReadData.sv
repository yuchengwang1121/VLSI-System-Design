`include "../../include/AXI_define.svh"
// `include "Interface.sv"
module ReadData(
    input clk,
    input rst,
    inter_RD.M0 M0,
    inter_RD.M1 M1,
    inter_RD.S0 S0,
    inter_RD.S1 S1,
    inter_RD.SDEFAULT SD
);
inter_RD Wire();

logic READY_M;

logic [2:0] slave;
logic [1:0] master;
logic lockS0, lockS1, lockS2;

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

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        {lockS0, lockS1, lockS2} <= 3'b0;
    end
    else begin
        lockS0 <= (READY_M & S0.RLAST)?1'b0:(S0.RVALID & ~S1.RVALID & ~SD.RVALID)?1'b1:lockS0;
        lockS1 <= (READY_M & S1.RLAST)?1'b0:(~lockS0 & S1.RVALID & ~SD.RVALID)?1'b1:lockS1;
        lockS2 <= (READY_M & SD.RLAST)?1'b0:(~lockS0 & ~lockS1 & SD.RVALID)?1'b1:lockS2;
    end
end

always_comb begin
    if ((SD.RVALID & ~(lockS0 || lockS1)) || lockS2) slave = 3'b100;
    else if ((S1.RVALID & ~lockS0) || lockS1) slave = 3'b010; 
    else if (S0.RVALID || lockS0) slave = 3'b001; 
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

            {S0.RREADY,S1.RREADY, SD.RREADY} = {READY_M & S0.RVALID, 2'b0};
        end
        3'b010:begin
            master = S1.S_RID[5:4];
            Wire.S_RID = S1.S_RID;
            Wire.RDATA = S1.RDATA;
            Wire.RRESP = S1.RRESP;
            Wire.RLAST = S1.RLAST;
            Wire.RVALID = S1.RVALID;

            {S0.RREADY, S1.RREADY, SD.RREADY} = {1'b0, READY_M & S1.RVALID, 1'b0};
        end
        3'b100:begin
            master = SD.S_RID[5:4];
            Wire.S_RID = SD.S_RID;
            Wire.RDATA = SD.RDATA;
            Wire.RRESP = SD.RRESP;
            Wire.RLAST = SD.RLAST;
            Wire.RVALID = SD.RVALID;

            {S0.RREADY, S1.RREADY, SD.RREADY} = {2'b0, READY_M & SD.RVALID};
        end
        default: begin
            master = 2'b0;
            Wire.S_RID = `AXI_IDS_BITS'b0;
            Wire.RDATA = `AXI_DATA_BITS'b0;
            Wire.RRESP = 2'b0;
            Wire.RLAST = 1'b0;
            Wire.RVALID = 1'b0;

            {S0.RREADY, S1.RREADY, SD.RREADY} = 3'b0;
        end
    endcase
end
endmodule