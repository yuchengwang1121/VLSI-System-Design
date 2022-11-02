`include "../../include/AXI_define.svh"
// `include "Interface.sv"

module Decoder(
    input VALID,
    input [`AXI_ADDR_BITS-1:0] ADDR,
    input READY_S0,
    input READY_S1,
    input READY_SD,
    output logic VALID_S0,
    output logic VALID_S1,
    output logic VALID_SD,
    output logic READY_S
);
    always_comb begin
        case (ADDR[31:16])
            16'h0000:begin
                {VALID_SD, VALID_S1, VALID_S0} = {2'b0, VALID};
                READY_S = (VALID)? READY_S0:1'b1;
            end
            16'h0001: begin
                {VALID_SD, VALID_S1, VALID_S0} = {1'b0, VALID, 1'b0};
                READY_S = (VALID)? READY_S1:1'b1;
            end
            default: begin
                {VALID_SD, VALID_S1, VALID_S0} = {VALID, 2'b0};
                READY_S = (VALID)? READY_SD:1'b1;
            end
        endcase
    end
endmodule