//================================================
// Auther:      Chen Tsung-Chi (Michael)           
// Filename:    AXI.sv                            
// Description: Top module of AXI                  
// Version:     1.0 
//================================================
`include "../../include/AXI_define.svh"
`include "Arbiter.sv"
`include "Decoder.sv"
`include "DefaultSlave.sv"
`include "ReadAddr.sv"
`include "ReadData.sv"
`include "WriteAddr.sv"
`include "WriteData.sv"
`include "WriteRespon.sv"
// `include "Interface.sv"
module AXI
(
    input logic ACLK,
    input logic ARESETn,

    // AXI to master 0 (IF-stage)
    // ARx
    inter_RA.M0 RA_M0,
    // Rx
    inter_RD.M0 RD_M0,

    // AXI to master 1 (MEM-stage)
    // AWx
    inter_WA.M1 WA_M1,
    // Wx
    inter_WD.M1 WD_M1,
    // Bx
    inter_WR.M1 WR_M1,
    // ARx
    inter_RA.M1 RA_M1,
    // Rx
    inter_RD.M1 RD_M1,

    // AXI to slave 0 (IM)
    // AWx
    inter_WA.S0 WA_S0,
    // Wx
    inter_WD.S0 WD_S0,
    // Bx
    inter_WR.S0 WR_S0,
    // ARx
    inter_RA.S0 RA_S0,
    // Rx
    inter_RD.S0 RD_S0,

    // AXI to slave 1 (DM)
    // AWx
    inter_WA.S1 WA_S1,
    // Wx
    inter_WD.S1 WD_S1,
    // Bx
    inter_WR.S1 WR_S1,
    // ARx
    inter_RA.S1 RA_S1,
    // Rx
    inter_RD.S1 RD_S1    
);

//wire
inter_RA wire_AR();
inter_RD wire_R();
inter_WA wire_AW();
inter_WD wire_W();
inter_WR wire_B();

DefaultSlave DS(
    .clk            (ACLK),
    .rst            (ARESETn),
    .SD_RA          (wire_AR),
    .SD_RD          (wire_R),
    .SD_WA          (wire_AW),
    .SD_WD          (wire_W),
    .SD_WR          (wire_B)
);
ReadAddr RA(
    .clk            (ACLK),
    .rst            (ARESETn),
    .M0             (RA_M0),
    .M1             (RA_M1),
    .S0             (RA_S0),
    .S1             (RA_S1),
    .SD             (wire_AR)
);
ReadData RD(
    .clk            (ACLK),
    .rst            (ARESETn),
    .M0             (RD_M0),
    .M1             (RD_M1),
    .S0             (RD_S0),
    .S1             (RD_S1),
    .SD             (wire_R)
);
WriteAddr WA(
    .clk            (ACLK),
    .rst            (ARESETn),
    .M1             (WA_M1),             //only DataMemory needs to Write
    .S0             (WA_S0),
    .S1             (WA_S1),
    .SD             (wire_AW)
);
WriteData WD(
    .clk            (ACLK),
    .rst            (ARESETn),
    .M1             (WD_M1),
    .S0             (WD_S0),
    .S1             (WD_S1),
    .SD             (wire_W),
    .AWVALID_S0     (WA_S0.AWVALID),
    .AWVALID_S1     (WA_S1.AWVALID),
    .AWVALID_SD     (wire_AW.AWVALID)
);
WriteRespon WR(
    .clk            (ACLK),
    .rst            (ARESETn),
    .M1             (WR_M1),
    .S0             (WR_S0),
    .S1             (WR_S1),
    .SD             (wire_B)
);
endmodule
