module top(
  input clk,
  input clk2,
  input rst,
  input rst2,
  input sensor_ready,
  input [31:0] sensor_out,
  output sensor_en,
  input [31:0] ROM_out,
  input [31:0] DRAM_Q,
  output ROM_read,
  output ROM_enable,
  output [11:0] ROM_address,
  output DRAM_CSn,
  output [3:0] DRAM_WEn,
  output DRAM_RASn,
  output DRAM_CASn,
  output [10:0] DRAM_A,
  output [31:0] DRAM_D,
  input DRAM_valid
);

	
endmodule


