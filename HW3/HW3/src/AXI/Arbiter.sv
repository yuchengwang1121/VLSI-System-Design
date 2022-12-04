`include "../../include/AXI_define.svh"
// `include "Interface.sv"

module Arbiter(
    input clk,
    input rst,
    //M0
    input [`AXI_ID_BITS-1:0]ID_M0,
    input [`AXI_ADDR_BITS-1:0]ADDR_M0,
    input [`AXI_LEN_BITS-1:0]LEN_M0,
    input [`AXI_SIZE_BITS-1:0]SIZE_M0,
    input [1:0]BURST_M0,
    input VALID_M0,
    output logic READY_M0,
    //M1
    input [`AXI_ID_BITS-1:0]ID_M1,
    input [`AXI_ADDR_BITS-1:0]ADDR_M1,
    input [`AXI_LEN_BITS-1:0]LEN_M1,
    input [`AXI_SIZE_BITS-1:0]SIZE_M1,
    input [1:0]BURST_M1,
    input VALID_M1,
    output logic READY_M1,
    //M
    output logic [`AXI_IDS_BITS-1:0]ID_M,
    output logic [`AXI_ADDR_BITS-1:0]ADDR_M,
    output logic [`AXI_LEN_BITS-1:0]LEN_M,
    output logic [`AXI_SIZE_BITS-1:0]SIZE_M,
    output logic [1:0]BURST_M,
    output logic VALID_M,
    input READY_M
);
    
logic lockM0, lockM1;
logic [1:0] master;

always_ff @(posedge clk or negedge rst ) begin
    if (~rst) begin
        lockM0 <= 1'b0;
        lockM1 <= 1'b0;
    end
    else begin
        //if lock want & MEM is ready, then release
        //else ifMX is valid & MEM and otherMY is locked then locked
        //else lockMX == lockMX(old)
        lockM0 <= (lockM0 & READY_M)? 1'b0 : (~lockM1 & VALID_M0 & ~READY_M) ? 1'b1 : lockM0;
        lockM1 <= (lockM1 & READY_M)? 1'b0 : (VALID_M1 & ~lockM0 & ~READY_M) ? 1'b1 : lockM1;
    end
end

always_comb begin
    if ((VALID_M1 & ~lockM0) || lockM1) begin
        master = 2'b10;
    end
    else if (lockM0 || VALID_M0) begin
        master = 2'b01;
    end
    else master = 2'b00;
end

always_comb begin
    case (master)
        2'b01: begin
            ID_M = {4'b0001, ID_M0};
            ADDR_M = ADDR_M0;
            LEN_M = LEN_M0;
            SIZE_M = SIZE_M0;
            BURST_M = BURST_M0;
            VALID_M = VALID_M0;

            READY_M0 = VALID_M0 & READY_M;
            READY_M1 = 1'b0;
        end
        2'b10,2'b11: begin
            ID_M = {4'b0010, ID_M1};
            ADDR_M = ADDR_M1;
            LEN_M = LEN_M1;
            SIZE_M = SIZE_M1;
            BURST_M = BURST_M1;
            VALID_M = VALID_M1;

            READY_M0 = 1'b0;
            READY_M1 = VALID_M1 & READY_M;
        end
        default: begin
            ID_M = {4'b0, `AXI_ID_BITS'b0};
            ADDR_M = `AXI_ADDR_BITS'b0;
            LEN_M = `AXI_LEN_BITS'b0;
            SIZE_M = `AXI_SIZE_BITS'b0;
            BURST_M = 2'b0;
            VALID_M = 1'b0;

            READY_M0 = 1'b0;
            READY_M1 = 1'b0;
        end
    endcase
end

endmodule
