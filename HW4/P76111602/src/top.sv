`include "CPU_wrapper.sv"
`include "AXI/AXI.sv"
`include "SRAM_wrapper.sv"
`include "AXI_define.svh"
`include "def.svh"
`include "DRAM_wrapper.sv"
`include "ROM_wrapper.sv"
`include "WDT_wrapper.sv"
`include "sensor_wrapper.sv"
// `include "Struct.sv"
module top(
    input clk, 
    input clk2,
    input rst,
    input rst2,
    //ROM
    output logic ROM_enable,
    output logic ROM_read,
    output logic [11:0] ROM_address,
    input  [`AXI_DATA_BITS-1:0] ROM_out,
    //DRAM
    output DRAM_CSn,
    output [`AXI_STRB_BITS-1:0] DRAM_WEn,
    output DRAM_RASn,
    output DRAM_CASn,
    output [10:0] DRAM_A,
    output [`AXI_DATA_BITS-1:0] DRAM_D,
    input [`AXI_DATA_BITS-1:0] DRAM_Q,
    input DRAM_valid,
    //sensor
    input sensor_ready,
    input [31:0]sensor_out,
    output sensor_en
);
inter_WA wire_M0AW();
inter_WA wire_M1AW(); 
inter_WA wire_S0AW();
inter_WA wire_S1AW();
inter_WA wire_S2AW();
inter_WA wire_S3AW();
inter_WA wire_S4AW();
inter_WA wire_S5AW();

inter_WD wire_M0W();
inter_WD wire_M1W();
inter_WD wire_S0W();
inter_WD wire_S1W();
inter_WD wire_S2W();
inter_WD wire_S3W();
inter_WD wire_S4W();
inter_WD wire_S5W();

inter_WR wire_M0B();
inter_WR wire_M1B();
inter_WR wire_S0B();
inter_WR wire_S1B();
inter_WR wire_S2B();
inter_WR wire_S3B();
inter_WR wire_S4B();
inter_WR wire_S5B();

inter_RA wire_M0AR();
inter_RA wire_M1AR();
inter_RA wire_S0AR();
inter_RA wire_S1AR();
inter_RA wire_S2AR();
inter_RA wire_S3AR();
inter_RA wire_S4AR();
inter_RA wire_S5AR();

inter_RD wire_M0R();
inter_RD wire_M1R();
inter_RD wire_S0R();
inter_RD wire_S1R();
inter_RD wire_S2R();
inter_RD wire_S3R();
inter_RD wire_S4R();
inter_RD wire_S5R();
logic [`AXI_DATA_BITS-1:0]rdata_m0;
logic [`AXI_DATA_BITS-1:0]rdata_m1;
logic ROM_enable_r;
logic ROM_read_r;
logic [11:0] ROM_address_r;

always_ff@(posedge clk) begin
    if(rst) begin
        ROM_enable  <= 1'b0;
        ROM_read    <= 1'b0;
        ROM_address <= 32'b0;
    end
    else begin
        ROM_enable  <= ROM_enable_r;
        ROM_read    <= ROM_read_r;
        ROM_address <= ROM_address_r;
    end
end

AXI AXI(
    .ACLK    (clk),
    .ARESETn (rst),
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
    .RD_S3  (wire_S3R),
    //sensor
    .WA_S4  (wire_S4AW),
    .WD_S4  (wire_S4W),
    .WR_S4  (wire_S4B),
    .RA_S4  (wire_S4AR),
    .RD_S4  (wire_S4R),
    //WDT
    .WA_S5  (wire_S5AW),
    .WD_S5  (wire_S5W),
    .WR_S5  (wire_S5B),
    .RA_S5  (wire_S5AR),
    .RD_S5  (wire_S5R)
);
logic sensor_interrupt;
logic wto;
CPU_wrapper CPU_wrapper(
    .clk    (clk),      
    .rst    (rst),
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
    .rdata_m1(wire_M1R.RDATA),
    
    .interrupt(sensor_interrupt),
    .timeout(wto)
);
ROM_wrapper ROM_wrapper(
    .clk(clk),
    .rst(rst),
    .S0AW(wire_S0AW),
    .S0W(wire_S0W),
    .S0B(wire_S0B),
    .S0AR(wire_S0AR),
    .S0R(wire_S0R),
    .ROM_enable(ROM_enable_r),
    .ROM_read(ROM_read_r),
    .ROM_address(ROM_address_r),
    .ROM_out(ROM_out)
);
SRAM_wrapper IM1(
    .clk    (clk),
    .rst    (rst),
    .S_AW   (wire_S1AW),
    .S_W    (wire_S1W),
    .S_B    (wire_S1B),
    .S_AR   (wire_S1AR),
    .S_R    (wire_S1R)
);
SRAM_wrapper DM1(
    .clk    (clk),
    .rst    (rst),
    .S_AW   (wire_S2AW),
    .S_W    (wire_S2W),
    .S_B    (wire_S2B),
    .S_AR   (wire_S2AR),
    .S_R    (wire_S2R)
);
DRAM_wrapper DRAM_wrapper
(
    .clk    (clk),
    .rst    (rst),
    .S3AW   (wire_S3AW),
    .S3W    (wire_S3W),
    .S3B    (wire_S3B),
    .S3AR   (wire_S3AR),
    .S3R    (wire_S3R),
    .DRAM_CSn(DRAM_CSn),
    .DRAM_WEn(DRAM_WEn),
    .DRAM_RASn(DRAM_RASn),
    .DRAM_CASn(DRAM_CASn),
    .DRAM_A(DRAM_A),
    .DRAM_D(DRAM_D),
    .DRAM_Q(DRAM_Q),
    .DRAM_valid(DRAM_valid)
);
sensor_wrapper sensor_wrapper
(
    .clk(clk),
    .rst(rst),
    .S_AW(wire_S4AW),
    .S_W(wire_S4W),
    .S_B(wire_S4B),
    .S_AR(wire_S4AR),
    .S_R(wire_S4R),
    .sensor_ready(sensor_ready),
    .sensor_out(sensor_out),
    .sensor_en(sensor_en),
    .sensor_interrupt(sensor_interrupt)
);
WDT_wrapper WDT_wrapper
(
    .clk(clk),
    .rst(rst),
    .clk2(clk2),
    .rst2(rst2),
    .S_AW(wire_S5AW),
    .S_W(wire_S5W),
    .S_B(wire_S5B),
    .S_AR(wire_S5AR),
    .S_R(wire_S5R),
    .wto(wto)
);
endmodule
