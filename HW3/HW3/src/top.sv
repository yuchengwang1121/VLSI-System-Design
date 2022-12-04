`include "CPU_wrapper.sv"
`include "AXI/AXI.sv"
`include "SRAM_wrapper.sv"
`include "AXI_define.svh"
`include "def.svh"
`include "DRAM_wrapper.sv"
`include "ROM_wrapper.sv"
// `include "Struct.sv"
module top(
    input clk, 
    input rst,
    //ROM
    output ROM_enable,
    output ROM_read,
    output [11:0] ROM_address,
    input  [`AXI_DATA_BITS-1:0] ROM_out,
    //DRAM
    output DRAM_CSn,
    output [`AXI_STRB_BITS-1:0] DRAM_WEn,
    output DRAM_RASn,
    output DRAM_CASn,
    output [10:0] DRAM_A,
    output [`AXI_DATA_BITS-1:0] DRAM_D,
    input [`AXI_DATA_BITS-1:0] DRAM_Q,
    input DRAM_valid
);
inter_WA wire_M0AW();
inter_WA wire_M1AW(); 
inter_WA wire_S0AW();
inter_WA wire_S1AW();
inter_WA wire_S2AW();
inter_WA wire_S3AW();

inter_WD wire_M0W();
inter_WD wire_M1W();
inter_WD wire_S0W();
inter_WD wire_S1W();
inter_WD wire_S2W();
inter_WD wire_S3W();

inter_WR wire_M0B();
inter_WR wire_M1B();
inter_WR wire_S0B();
inter_WR wire_S1B();
inter_WR wire_S2B();
inter_WR wire_S3B();

inter_RA wire_M0AR();
inter_RA wire_M1AR();
inter_RA wire_S0AR();
inter_RA wire_S1AR();
inter_RA wire_S2AR();
inter_RA wire_S3AR();

inter_RD wire_M0R();
inter_RD wire_M1R();
inter_RD wire_S0R();
inter_RD wire_S1R();
inter_RD wire_S2R();
inter_RD wire_S3R();
logic [`AXI_DATA_BITS-1:0]rdata_m0;
logic [`AXI_DATA_BITS-1:0]rdata_m1;
logic latch_rst;
always_ff@(posedge clk or posedge rst) begin
    latch_rst <= rst ? rst : rst;
end 

AXI AXI(
    .ACLK    (clk),
    .ARESETn (~latch_rst),
    .RA_M0   (wire_M0AR),
    .RD_M0   (wire_M0R),

    .WA_M1  (wire_M1AW),
    .WD_M1  (wire_M1W),
    .WR_M1  (wire_M1B),
    .RA_M1  (wire_M1AR),
    .RD_M1  (wire_M1R),
    //ROM
    .WA_S0  (wire_S0AW),
    .WD_S0  (wire_S0W),
    .WR_S0  (wire_S0B),
    .RA_S0  (wire_S0AR),
    .RD_S0  (wire_S0R),
    //IM1
    .WA_S1  (wire_S1AW),
    .WD_S1  (wire_S1W),
    .WR_S1  (wire_S1B),
    .RA_S1  (wire_S1AR),
    .RD_S1  (wire_S1R),
    //DM1
    .WA_S2  (wire_S2AW),
    .WD_S2  (wire_S2W),
    .WR_S2  (wire_S2B),
    .RA_S2  (wire_S2AR),
    .RD_S2  (wire_S2R),
    //DRAM
    .WA_S3  (wire_S3AW),
    .WD_S3  (wire_S3W),
    .WR_S3  (wire_S3B),
    .RA_S3  (wire_S3AR),
    .RD_S3  (wire_S3R)
);
CPU_wrapper CPU_wrapper(
    .clk    (clk),      
    .rst    (~latch_rst),
    .M0_AW  (wire_M0AW),
    .M0_W   (wire_M0W),
    .M0_B   (wire_M0B),
    .M0_AR  (wire_M0AR),
    .M0_R   (wire_M0R),

    .M1_AW  (wire_M1AW),
    .M1_W   (wire_M1W),
    .M1_B   (wire_M1B),
    .M1_AR  (wire_M1AR),
    .M1_R   (wire_M1R),
    .rdata_m0(wire_M0R.RDATA),
    .rdata_m1(wire_M1R.RDATA)
);
ROM_wrapper ROM_wrapper(
    .clk(clk),
    .rst(~latch_rst),
    .S0AW(wire_S0AW),
    .S0W(wire_S0W),
    .S0B(wire_S0B),
    .S0AR(wire_S0AR),
    .S0R(wire_S0R),
    .ROM_enable(ROM_enable),
    .ROM_read(ROM_read),
    .ROM_address(ROM_address),
    .ROM_out(ROM_out)
);
SRAM_wrapper IM1(
    .clk    (clk),
    .rst    (~latch_rst),
    .S_AW   (wire_S1AW),
    .S_W    (wire_S1W),
    .S_B    (wire_S1B),
    .S_AR   (wire_S1AR),
    .S_R    (wire_S1R)
);
SRAM_wrapper DM1(
    .clk    (clk),
    .rst    (~latch_rst),
    .S_AW   (wire_S2AW),
    .S_W    (wire_S2W),
    .S_B    (wire_S2B),
    .S_AR   (wire_S2AR),
    .S_R    (wire_S2R)
);
DRAM_wrapper DRAM_wrapper
(
    .clk    (clk),
    .rst    (~latch_rst),
    .S4AW   (wire_S3AW),
    .S4W    (wire_S3W),
    .S4B    (wire_S3B),
    .S4AR   (wire_S3AR),
    .S4R    (wire_S3R),
    .DRAM_CSn(DRAM_CSn),
    .DRAM_WEn(DRAM_WEn),
    .DRAM_RASn(DRAM_RASn),
    .DRAM_CASn(DRAM_CASn),
    .DRAM_A(DRAM_A),
    .DRAM_D(DRAM_D),
    .DRAM_Q(DRAM_Q),
    .DRAM_valid(DRAM_valid)
);
endmodule
