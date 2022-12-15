`include "../../include/AXI_define.svh"
// `include "Interface.sv"

module Decoder(
    input VALID,
    input [`AXI_ADDR_BITS-1:0] ADDR,
    input READY_S0,
    input READY_S1,
    input READY_S2,
    input READY_S3,
    input READY_S4,
    input READY_S5,
    input READY_SD,
    output logic VALID_S0,
    output logic VALID_S1,
    output logic VALID_S2,
    output logic VALID_S3,
    output logic VALID_S4,
    output logic VALID_S5,
    output logic VALID_SD,
    output logic READY_S
);
    
    always_comb begin
        if(ADDR[31:16] == 16'h0000) begin
            {VALID_SD, VALID_S5, VALID_S4, VALID_S3, VALID_S2, VALID_S1, VALID_S0} = {6'b0, VALID};
            READY_S = (VALID)? READY_S0:1'b0;
        end
        else if(ADDR[31:16] == 16'h0001) begin
            {VALID_SD, VALID_S5, VALID_S4, VALID_S3, VALID_S2, VALID_S1, VALID_S0} = {5'b0, VALID, 1'b0};
            READY_S = (VALID)? READY_S1:1'b0;
        end
        else  if(ADDR[31:16] == 16'h0002) begin
            {VALID_SD, VALID_S5, VALID_S4, VALID_S3, VALID_S2, VALID_S1, VALID_S0} = {4'b0, VALID, 2'b0};
            READY_S = (VALID)? READY_S2:1'b0;
        end
        else if(16'h2000<=ADDR[31:16] & ADDR[31:16]<=16'h207F) begin
            {VALID_SD, VALID_S5, VALID_S4, VALID_S3, VALID_S2, VALID_S1, VALID_S0} = {3'b0, VALID, 3'b0};
            READY_S = (VALID)? READY_S3:1'b0;
        end
        else if(16'h1000 == ADDR[31:16] & ADDR[15:0]<=16'h3FF) begin
            {VALID_SD, VALID_S5, VALID_S4, VALID_S3, VALID_S2, VALID_S1, VALID_S0} = {2'b0, VALID, 4'b0};
            READY_S = (VALID)? READY_S4:1'b0;
        end
        else if(16'h1001<=ADDR[31:16] & ADDR[31:16]<=16'h3FF) begin
            {VALID_SD, VALID_S5, VALID_S4, VALID_S3, VALID_S2, VALID_S1, VALID_S0} = {1'b0, VALID, 5'b0};
            READY_S = (VALID)? READY_S5:1'b0;
        end
        else begin
            {VALID_SD, VALID_S5, VALID_S4, VALID_S3, VALID_S2, VALID_S1, VALID_S0} = {VALID, 6'b0};
            READY_S = (VALID)? READY_SD:1'b0;
        end
    end
endmodule
