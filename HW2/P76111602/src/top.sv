`include "CPU_wrapper.sv"
`include "AXI/AXI.sv"
`include "SRAM_wrapper.sv"
`include "AXI_define.svh"
`include "Interface.sv"
// `include "Struct.sv"
module top(
    input clk,
    input rst
);
inter_WA wire_M0AW();
inter_WA wire_M1AW(); 
inter_WA wire_S0AW();
inter_WA wire_S1AW();

inter_WD wire_M0W();
inter_WD wire_M1W();
inter_WD wire_S0W();
inter_WD wire_S1W();

inter_WR wire_M0B();
inter_WR wire_M1B();
inter_WR wire_S0B();
inter_WR wire_S1B();

inter_RA wire_M0AR();
inter_RA wire_M1AR();
inter_RA wire_S0AR();
inter_RA wire_S1AR();

inter_RD wire_M0R();
inter_RD wire_M1R();
inter_RD wire_S0R();
inter_RD wire_S1R();
    
AXI AXI(
    .ACLK    (clk),
    .ARESETn (~rst),
    .RA_M0   (wire_M0AR),
    .RD_M0   (wire_M0R),

    .WA_M1  (wire_M1AW),
    .WD_M1  (wire_M1W),
    .WR_M1  (wire_M1B),
    .RA_M1  (wire_M1AR),
    .RD_M1  (wire_M1R),

    .WA_S0  (wire_S0AW),
    .WD_S0  (wire_S0W),
    .WR_S0  (wire_S0B),
    .RA_S0  (wire_S0AR),
    .RD_S0  (wire_S0R),

    .WA_S1  (wire_S1AW),
    .WD_S1  (wire_S1W),
    .WR_S1  (wire_S1B),
    .RA_S1  (wire_S1AR),
    .RD_S1  (wire_S1R)
);
CPU_wrapper CPU_wrapper(
    .clk    (clk),      
    .rst    (~rst),
    .M0_AW  (wire_M0AW),
    .M0_W   (wire_M0W),
    .M0_B   (wire_M0B),
    .M0_AR  (wire_M0AR),
    .M0_R   (wire_M0R),

    .M1_AW  (wire_M1AW),
    .M1_W   (wire_M1W),
    .M1_B   (wire_M1B),
    .M1_AR  (wire_M1AR),
    .M1_R   (wire_M1R)
);
SRAM_wrapper IM1(
    .clk    (clk),
    .rst    (~rst),
    .S_AW   (wire_S0AW),
    .S_W    (wire_S0W),
    .S_B    (wire_S0B),
    .S_AR   (wire_S0AR),
    .S_R    (wire_S0R)
);
SRAM_wrapper DM1(
    .clk    (clk),
    .rst    (~rst),
    .S_AW   (wire_S1AW),
    .S_W    (wire_S1W),
    .S_B    (wire_S1B),
    .S_AR   (wire_S1AR),
    .S_R    (wire_S1R)
);

endmodule