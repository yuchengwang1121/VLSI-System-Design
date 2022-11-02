`include "AXI_define.svh"
`include "CPU.sv"
`include "Master.sv"
// `include "Interface.sv"
module CPU_wrapper(
    input clk,
    input rst,
    inter_WA.M0_AW M0_AW,
    inter_WD.M0_W M0_W,
    inter_WR.M0_B M0_B,
    inter_RA.M0_AR M0_AR,
    inter_RD.M0_R M0_R,
    inter_WA.M1_AW M1_AW,
    inter_WD.M1_W M1_W,
    inter_WR.M1_B M1_B,
    inter_RA.M1_AR M1_AR,
    inter_RD.M1_R M1_R,
    input [`AXI_DATA_BITS-1:0]rdata_m0,
    input [`AXI_DATA_BITS-1:0]rdata_m1
);
    //wire
    inter_IFIO wire_IFIO();
    inter_MEMIO wire_MEMIO();

logic IM_stall,DM_stall,lock_DM;

CPU CPU(
    .clk                (clk),
    .rst                (~rst),
    //IFIO
    .Instr_out          (wire_IFIO.Instr_out),
    .b_instr_read       (wire_IFIO.b_instr_read),
    .instr_addr         (wire_IFIO.instr_addr),
    //MEMIO
    .DM_dataout         (wire_MEMIO.DM_dataout),
    .b_data_read        (wire_MEMIO.b_data_read),
    .b_data_write       (wire_MEMIO.b_data_write),
    .write_type         (wire_MEMIO.write_type),
    .data_addr          (wire_MEMIO.data_addr),
    .MEM_din            (wire_MEMIO.MEM_din),
    .IM_stall           (IM_stall),
    .DM_stall           (DM_stall)
);

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        lock_DM <= 1'b0;
    end else begin
        lock_DM <= (~IM_stall)?1'b0:((IM_stall & ~DM_stall)?1'b1:lock_DM);
    end
end

Master M0(
    .clk            (clk),
    .rst            (rst),
    .read           (wire_IFIO.b_instr_read),
    .write          (1'b0),
    .write_type     (4'b1111),
    .addr_in        (wire_IFIO.instr_addr),
    .data_in        (`AXI_DATA_BITS'b0),
    .data_out       (wire_IFIO.Instr_out),
    .stall          (IM_stall),

    //WA
    .AWID       (M0_AW.AWID),
    .AWLEN      (M0_AW.AWLEN),
    .AWADDR     (M0_AW.AWADDR),
    .AWSIZE     (M0_AW.AWSIZE),
    .AWBURST    (M0_AW.AWBURST),
    .AWVALID    (M0_AW.AWVALID),
    .AWREADY    (M0_AW.AWREADY),
    //WD
    .WDATA      (M0_W.WDATA),
    .WSTRB      (M0_W.WSTRB),
    .WLAST      (M0_W.WLAST),
    .WVALID     (M0_W.WVALID),
    .WREADY     (M0_W.WREADY),
    //WR
    .BID        (M0_B.BID),
    .BRESP      (M0_B.BRESP),
    .BVALID     (M0_B.BVALID),
    .BREADY     (M0_B.BREADY),
    //AR
    .ARID       (M0_AR.ARID),
    .ARADDR     (M0_AR.ARADDR),
    .ARLEN      (M0_AR.ARLEN),
    .ARSIZE     (M0_AR.ARSIZE),
    .ARBURST    (M0_AR.ARBURST),
    .ARVALID    (M0_AR.ARVALID),
    .ARREADY    (M0_AR.ARREADY),
    //R
    .RID        (M0_R.RID),
    .RDATA      (rdata_m0),
    .RRESP      (M0_R.RRESP),
    .RLAST      (M0_R.RLAST),
    .RVALID     (M0_R.RVALID),
    .RREADY     (M0_R.RREADY)

    // .M_AW  (M0_AW),
    // .M_W   (M0_W),
    // .M_B   (M0_B),
    // .M_AR  (M0_AR),
    // .M_R   (M0_R)
);
Master M1(
    .clk            (clk),
    .rst            (rst),
    .read           (wire_MEMIO.b_data_read & ~lock_DM),
    .write          (wire_MEMIO.b_data_write & ~lock_DM),
    .write_type     (wire_MEMIO.write_type),
    .addr_in        (wire_MEMIO.data_addr),
    .data_in        (wire_MEMIO.MEM_din),
    .data_out       (wire_MEMIO.DM_dataout),
    .stall          (DM_stall),

    //WA
    .AWID       (M1_AW.AWID),
    .AWLEN      (M1_AW.AWLEN),
    .AWADDR     (M1_AW.AWADDR),
    .AWSIZE     (M1_AW.AWSIZE),
    .AWBURST    (M1_AW.AWBURST),
    .AWVALID    (M1_AW.AWVALID),
    .AWREADY    (M1_AW.AWREADY),
    //WD
    .WDATA      (M1_W.WDATA),
    .WSTRB      (M1_W.WSTRB),
    .WLAST      (M1_W.WLAST),
    .WVALID     (M1_W.WVALID),
    .WREADY     (M1_W.WREADY),
    //WR
    .BID        (M1_B.BID),
    .BRESP      (M1_B.BRESP),
    .BVALID     (M1_B.BVALID),
    .BREADY     (M1_B.BREADY),
    //AR
    .ARID       (M1_AR.ARID),
    .ARADDR     (M1_AR.ARADDR),
    .ARLEN      (M1_AR.ARLEN),
    .ARSIZE     (M1_AR.ARSIZE),
    .ARBURST    (M1_AR.ARBURST),
    .ARVALID    (M1_AR.ARVALID),
    .ARREADY    (M1_AR.ARREADY),
    //R
    .RID        (M1_R.RID),
    .RDATA      (rdata_m1),
    .RRESP      (M1_R.RRESP),
    .RLAST      (M1_R.RLAST),
    .RVALID     (M1_R.RVALID),
    .RREADY     (M1_R.RREADY)
);

endmodule
