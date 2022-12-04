`include "../../include/AXI_define.svh"
`include "../../include/def.svh"
interface inter_Decoder;
    logic VALID,READY;

    modport SDEFAULT(input READY, output VALID);

endinterface

interface inter_RA;
    logic[`AXI_ID_BITS-1:0] ARID;
    logic[`AXI_IDS_BITS-1:0] S_ARID;
    logic[`AXI_ADDR_BITS-1:0] ARADDR;
    logic[`AXI_LEN_BITS-1:0] ARLEN;
    logic[`AXI_SIZE_BITS-1:0] ARSIZE;
    logic[1:0] ARBURST;
    logic ARVALID,ARREADY;

    //for AXI's RA
    modport M0(input ARID, input ARADDR, input ARLEN, input ARSIZE, input ARBURST, input ARVALID, output ARREADY);
    modport M1(input ARID, input ARADDR, input ARLEN, input ARSIZE, input ARBURST, input ARVALID, output ARREADY);
    modport S0(output S_ARID, output ARADDR, output ARLEN, output ARSIZE, output ARBURST, output ARVALID, input ARREADY);
    modport S1(output S_ARID, output ARADDR, output ARLEN, output ARSIZE, output ARBURST, output ARVALID, input ARREADY);
    modport S2(output S_ARID, output ARADDR, output ARLEN, output ARSIZE, output ARBURST, output ARVALID, input ARREADY);
    modport S3(output S_ARID, output ARADDR, output ARLEN, output ARSIZE, output ARBURST, output ARVALID, input ARREADY);
    modport SD(input S_ARID, input ARADDR, input ARLEN, input ARSIZE, input ARBURST, input ARVALID, output ARREADY);
    modport SDEFAULT(output S_ARID, output ARADDR, output ARLEN, output ARSIZE, output ARBURST, output ARVALID, input ARREADY);
    //for CPU_wrapper
    modport M0_AR(output ARID, output ARADDR, output ARLEN, output ARSIZE, output ARBURST, output ARVALID, input ARREADY);
    modport M1_AR(output ARID, output ARADDR, output ARLEN, output ARSIZE, output ARBURST, output ARVALID, input ARREADY);
    //for Master
    // modport M_AR(output ARID, output ARADDR, output ARLEN, output ARSIZE, output ARBURST, output ARVALID, input ARREADY);
    //for SRAM_wrapper
    modport SRAM(input S_ARID, input ARADDR, input ARLEN, input ARSIZE, input ARBURST, input ARVALID, output ARREADY);
    //for ROM_wrapper
    modport ROM(input S_ARID, input ARADDR, input ARLEN, input ARSIZE, input ARBURST, input ARVALID, output ARREADY);
    //for DRAM_wrapper
    modport DRAM(input S_ARID, input ARADDR, input ARLEN, input ARSIZE, input ARBURST, input ARVALID, output ARREADY);
endinterface

interface inter_RD;
    logic[`AXI_ID_BITS-1:0] RID;
    logic [`AXI_IDS_BITS -1:0] S_RID;
    logic[`AXI_DATA_BITS-1:0] RDATA;
    logic[1:0]RRESP;
    logic RLAST,RVALID,RREADY;

    //for AXI's RD
    modport M0(input RREADY, output RID, output RDATA, output RRESP, output RLAST,output RVALID);
    modport M1(input RREADY, output RID, output RDATA, output RRESP, output RLAST,output RVALID);
    modport S0(output RREADY, input S_RID, input RDATA, input RRESP, input RLAST,input RVALID);
    modport S1(output RREADY, input S_RID, input RDATA, input RRESP, input RLAST,input RVALID);
    modport S2(output RREADY, input S_RID, input RDATA, input RRESP, input RLAST,input RVALID);
    modport S3(output RREADY, input S_RID, input RDATA, input RRESP, input RLAST,input RVALID);
    modport SD(input RREADY, output S_RID, output RDATA, output RRESP, output RLAST,output RVALID);
    modport SDEFAULT(output RREADY, input S_RID, input RDATA, input RRESP, input RLAST,input RVALID);
    //for CPU_wrapper
    modport M0_R(output RREADY, input RID, input RDATA, input RRESP, input RLAST,input RVALID);
    modport M1_R(output RREADY, input RID, input RDATA, input RRESP, input RLAST,input RVALID);
    //for Master
    // modport M_R(output RREADY, input RID, input RDATA, input RRESP, input RLAST,input RVALID);
    //for SRAM_wrapper
    modport SRAM(input RREADY, output S_RID, output RDATA, output RRESP, output RLAST,output RVALID);
    //for ROM_wrapper
    modport ROM(input RREADY, output S_RID, output RDATA, output RRESP, output RLAST,output RVALID);
    //for DRAM_wrapper
    modport DRAM(input RREADY, output S_RID, output RDATA, output RRESP, output RLAST,output RVALID);
endinterface

interface inter_WA;
    logic [`AXI_ID_BITS-1:0] AWID;
    logic [`AXI_IDS_BITS -1:0] S_AWID;
    logic [`AXI_ADDR_BITS-1:0] AWADDR;
    logic [`AXI_LEN_BITS-1:0] AWLEN;
    logic [`AXI_SIZE_BITS-1:0] AWSIZE;
    logic [1:0] AWBURST;
    logic AWVALID, AWREADY;
    
    //for AXI's WA
    modport M1(input AWID, input AWADDR, input AWLEN, input AWSIZE, input AWBURST, input AWVALID, output AWREADY);
    modport S0(output S_AWID, output AWADDR, output AWLEN, output AWSIZE, output AWBURST, output AWVALID, input AWREADY);
    modport S1(output S_AWID, output AWADDR, output AWLEN, output AWSIZE, output AWBURST, output AWVALID, input AWREADY);
    modport S2(output S_AWID, output AWADDR, output AWLEN, output AWSIZE, output AWBURST, output AWVALID, input AWREADY);
    modport S3(output S_AWID, output AWADDR, output AWLEN, output AWSIZE, output AWBURST, output AWVALID, input AWREADY);
    modport SD(input S_AWID, input AWADDR, input AWLEN, input AWSIZE, input AWBURST, input AWVALID, output AWREADY);
    modport SDEFAULT(output S_AWID, output AWADDR, output AWLEN, output AWSIZE, output AWBURST, output AWVALID, input AWREADY);
    //for CPU_wrapper
    modport M0_AW(output AWID, output AWADDR, output AWLEN, output AWSIZE, output AWBURST, output AWVALID, input AWREADY);
    modport M1_AW(output AWID, output AWADDR, output AWLEN, output AWSIZE, output AWBURST, output AWVALID, input AWREADY);
    //for Master
    // modport M_AW(output AWID, output AWADDR, output AWLEN, output AWSIZE, output AWBURST, output AWVALID, input AWREADY);
    //for SRAM_wrapper
    modport SRAM(input S_AWID, input AWADDR, input AWLEN, input AWSIZE, input AWBURST, input AWVALID, output AWREADY);
    //for ROM_wrapper
    modport ROM(input S_AWID, input AWADDR, input AWLEN, input AWSIZE, input AWBURST, input AWVALID, output AWREADY);
    //for DRAM_wrapper
    modport DRAM(input S_AWID, input AWADDR, input AWLEN, input AWSIZE, input AWBURST, input AWVALID, output AWREADY);
endinterface

interface inter_WD;
    logic [`AXI_DATA_BITS-1:0] WDATA;
    logic [`AXI_STRB_BITS-1:0] WSTRB;
    logic WLAST, WVALID, WREADY;

     //for AXI's WD
    modport M1(input WDATA, input WSTRB, input WLAST, input WVALID, output WREADY);
    modport S0(output WDATA, output WSTRB, output WLAST, output WVALID, input WREADY);
    modport S1(output WDATA, output WSTRB, output WLAST, output WVALID, input WREADY);
    modport S2(output WDATA, output WSTRB, output WLAST, output WVALID, input WREADY);
    modport S3(output WDATA, output WSTRB, output WLAST, output WVALID, input WREADY);
    modport SD(input WDATA, input WSTRB, input WLAST, input WVALID, output WREADY);
    modport SDEFAULT(output WDATA, output WSTRB, output WLAST, output WVALID, input WREADY);
    //for CPU_wrapper
    modport M0_W(output WDATA, output WSTRB, output WLAST, output WVALID, input WREADY);
    modport M1_W(output WDATA, output WSTRB, output WLAST, output WVALID, input WREADY);
    //for Master
    // modport M_W(output WDATA, output WSTRB, output WLAST, output WVALID, input WREADY);
    //for SRAM_wrapper
    modport SRAM(input WDATA, input WSTRB, input WLAST, input WVALID, output WREADY);
    //for ROM_wrapper
    modport ROM(input WDATA, input WSTRB, input WLAST, input WVALID, output WREADY);
    //for DRAM_wrapper
    modport DRAM(input WDATA, input WSTRB, input WLAST, input WVALID, output WREADY);
endinterface

interface inter_WR;
    logic [`AXI_ID_BITS-1:0] BID;
    logic [`AXI_IDS_BITS-1:0] S_BID;
    logic [1:0] BRESP;
    logic BVALID, BREADY;

    //for AXI's WR
    modport M1(output BID, output BRESP, output BVALID, input BREADY);
    modport S0(input S_BID, input BRESP, input BVALID, output BREADY);
    modport S1(input S_BID, input BRESP, input BVALID, output BREADY);
    modport S2(input S_BID, input BRESP, input BVALID, output BREADY);
    modport S3(input S_BID, input BRESP, input BVALID, output BREADY);
    modport SD(output S_BID, output BRESP, output BVALID, input BREADY);
    modport SDEFAULT(input S_BID, input BRESP, input BVALID, output BREADY);
    //for CPU_wrapper
    modport M0_B(input BID, input BRESP, input BVALID, output BREADY);
    modport M1_B(input BID, input BRESP, input BVALID, output BREADY);
    //for Master
    // modport M_B(input BID, input BRESP, input BVALID, output BREADY);
    //for SRAM_wrapper
    modport SRAM(output S_BID, output BRESP, output BVALID, input BREADY);
    //for ROM_wrapper
    modport ROM(output S_BID, output BRESP, output BVALID, input BREADY);
    //for DRAM_wrapper
    modport DRAM(output S_BID, output BRESP, output BVALID, input BREADY);
endinterface

interface inter_IFIO;
    logic b_instr_read;
    logic [`AXI_ADDR_BITS-1:0] instr_addr;
    logic [`AXI_DATA_BITS-1:0] Instr_out;
endinterface

interface inter_MEMIO;
    logic b_data_read;
    logic b_data_write;
    logic [3:0] write_type;
    logic [`AXI_ADDR_BITS-1:0] data_addr;
    logic [`AXI_DATA_BITS-1:0] MEM_din;
    logic [`AXI_DATA_BITS-1:0] DM_dataout;
endinterface

interface VALIDCtrl;
    //for RA 
    logic temp_ARVALID, busy, reg_READY;
endinterface

interface cache;
    logic I_wait;
    logic [`AXI_DATA_BITS-1:0]I_out;
    logic I_req;
    logic [`DATA_BITS-1:0] I_addr;
    logic I_write;
    logic [`DATA_BITS-1:0] I_in;
    logic [`CACHE_TYPE_BITS-1:0] I_type;
    
    logic D_wait;
    logic [`DATA_BITS-1:0] D_out;
    logic D_req;
    logic [`DATA_BITS-1:0] D_addr;
    logic D_write;
    logic [`DATA_BITS-1:0] D_in;
    logic [`CACHE_TYPE_BITS-1:0] D_type;
endinterface