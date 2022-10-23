//================================================
// Auther:      Chun-Wen Yang (Willie)            
// Filename:    top.v                            
// Description: Top module of AXI bridge VIP                
// Version:     1.0 
// ----------DO NOT MODIFY THIS FILE-------------
//================================================
`include "../../src/AXI/Interface.sv"
module top #(parameter bit COVERAGE_ON = 0) ();
   
    
    // user defined AXI parameters
    localparam DATA_WIDTH              = 32;
    localparam ADDR_WIDTH              = 32;
    localparam ID_WIDTH                = 4;
    localparam IDS_WIDTH               = 8;
    localparam LEN_WIDTH               = 4;
    localparam MAXLEN                  = 4;
    // fixed AXI parameters
    localparam STRB_WIDTH              = DATA_WIDTH/8;
    localparam SIZE_WIDTH              = 3;
    localparam BURST_WIDTH             = 2;  
    localparam CACHE_WIDTH             = 4;  
    localparam PROT_WIDTH              = 3;  
    localparam BRESP_WIDTH             = 2; 
    localparam RRESP_WIDTH             = 2;      
    localparam AWUSER_WIDTH            = 32; // Size of AWUser field
    localparam WUSER_WIDTH             = 32; // Size of WUser field
    localparam BUSER_WIDTH             = 32; // Size of BUser field
    localparam ARUSER_WIDTH            = 32; // Size of ARUser field
    localparam RUSER_WIDTH             = 32; // Size of RUser field
    localparam QOS_WIDTH               = 4;  // Size of QOS field
    localparam REGION_WIDTH            = 4;  // Size of Region field



    // Clock and reset    
    wire                        aclk_m;
    wire                        aresetn_m;
    // Clock and reset    
    wire                        aclk_s;
    wire                        aresetn_s;
    // interface
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
    // ----------slave 0---------- //
    // Write address channel signals
    wire                        awlock_s0;    // Write address lock type
    wire    [PROT_WIDTH-1:0]    awprot_s0;    // Write address protection level
    wire    [QOS_WIDTH-1:0]     awqos_s0;     // Write address Quality of service
    wire    [REGION_WIDTH-1:0]  awregion_s0;  // Write address slave address region
    wire    [AWUSER_WIDTH-1:0]  awuser_s0;    // Write address user signal
    
    wire    [CACHE_WIDTH-1:0]   awcache_s0;   // Write address cache type
    
    // Write data channel signals
    wire    [WUSER_WIDTH-1:0]   wuser_s0;     // Write user signal

    // Write response channel signals
    wire    [BUSER_WIDTH-1:0]   buser_s0;     // Write response user signal
    
    // Read address channel signals
    wire                        arlock_s0;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot_s0;    // Read address protection level
    wire    [QOS_WIDTH-1:0]     arqos_s0;     // Read address Quality of service
    wire    [REGION_WIDTH-1:0]  arregion_s0;  // Read address slave address region
    wire    [ARUSER_WIDTH-1:0]  aruser_s0;    // Read address user signal
    wire    [CACHE_WIDTH-1:0]   arcache_s0;   // Read address cache type

    // Read data channel signals
    wire    [RUSER_WIDTH-1:0]   ruser_s0;     // Read address user signal

    // ----------slave1---------- //
    // Write address channel signals
    wire                        awlock_s1;    // Write address lock type
    wire    [PROT_WIDTH-1:0]    awprot_s1;    // Write address protection level
    wire    [QOS_WIDTH-1:0]     awqos_s1;     // Write address Quality of service
    wire    [REGION_WIDTH-1:0]  awregion_s1;  // Write address slave address region
    wire    [AWUSER_WIDTH-1:0]  awuser_s1;    // Write address user signal

    wire    [CACHE_WIDTH-1:0]   awcache_s1;   // Write address cache type

    // Write data channel signals
    wire    [WUSER_WIDTH-1:0]   wuser_s1;     // Write user signal

    // Write response channel signals
    wire    [BUSER_WIDTH-1:0]   buser_s1;     // Write response user signal

    // Read address channel signals
    wire                        arlock_s1;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot_s1;    // Read address protection level
    wire    [QOS_WIDTH-1:0]     arqos_s1;     // Read address Quality of service
    wire    [REGION_WIDTH-1:0]  arregion_s1;  // Read address slave address region
    wire    [ARUSER_WIDTH-1:0]  aruser_s1;    // Read address user signal

    wire    [CACHE_WIDTH-1:0]   arcache_s1;   // Read address cache type

    // Read data channel signals
    wire    [RUSER_WIDTH-1:0]   ruser_s1;     // Read address user signal


    // ----------master0---------- //
    // Read address channel signals
    wire                        arlock_m0;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot_m0;    // Read address protection level
    wire    [CACHE_WIDTH-1:0]   arcache_m0;   // Read address cache type
    wire    [QOS_WIDTH-1:0]     arqos_m0;     // Read address Quality of service
    wire    [REGION_WIDTH-1:0]  arregion_m0;  // Read address slave address region
    wire    [ARUSER_WIDTH-1:0]  aruser_m0;    // Read address user signal

    // Read data channel signals
    wire    [RUSER_WIDTH-1:0]   ruser_m0;     // Read address user signal

    // ----------master1---------- //
    // Write address channel signals
    wire                        awlock_m1;    // Write address lock type
    wire    [PROT_WIDTH-1:0]    awprot_m1;    // Write address protection level
    wire    [CACHE_WIDTH-1:0]   awcache_m1;   // Write address cache type
    wire    [QOS_WIDTH-1:0]     awqos_m1;     // Write address Quality of service
    wire    [REGION_WIDTH-1:0]  awregion_m1;  // Write address slave address region
    wire    [AWUSER_WIDTH-1:0]  awuser_m1;    // Write address user signal

    // Write data channel signals
    wire    [WUSER_WIDTH-1:0]   wuser_m1;     // Write user signal
    // Write response channel signals
    wire    [BUSER_WIDTH-1:0]   buser_m1;     // Write response user signal
    // Read address channel signals
    wire                        arlock_m1;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot_m1;    // Read address protection level
    wire    [CACHE_WIDTH-1:0]   arcache_m1;   // Read address cache type
    wire    [QOS_WIDTH-1:0]     arqos_m1;     // Read address Quality of service
    wire    [REGION_WIDTH-1:0]  arregion_m1;  // Read address slave address region
    wire    [ARUSER_WIDTH-1:0]  aruser_m1;    // Read address user signal

    // Read data channel signals
    wire    [RUSER_WIDTH-1:0]   ruser_m1;     // Read address user signal


    // Low power signals
    wire                        csysreq;     // Low Power - Power Off Request
    wire                        csysack;     // Low Power - Power Off Acknowledge
    wire                        cactive;     // Low Power - activate

    // Instance of the AXI bridge DUV
    AXI axi_duv_bridge(
    .ACLK    (aclk_m),
    .ARESETn (aresetn_m),
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


    axi4_slave axi_slave_0 (
        .aclk            (aclk_s),
        .aresetn         (aresetn_s),
        // AW
        .awid            (wire_S0AW.S_AWID),
        .awaddr          (wire_S0AW.AWADDR),
        .awlen           (wire_S0AW.AWLEN),
        .awsize          (wire_S0AW.AWSIZE),
        .awburst         (wire_S0AW.AWSIZE),
        .awlock          (awlock_s0),
        .awcache         (awcache_s0),
        .awprot          (awprot_s0),
        .awvalid         (wire_S0AW.AWVALID),
        .awready         (wire_S0AW.AWREADY),
        .awqos           (awqos_s0),  
        .awregion        (awregion_s0),  
        .awuser          (awuser_s0),   
	.ruser           (ruser_s0),
        .arqos           (arqos_s0),  
        .arregion        (arregion_s0),  
        .aruser          (aruser_s0),
        .buser           (buser_s0),
	.wuser           (wuser_s0),
        // WD
        .wdata           (wire_S0W.WDATA),
        .wstrb           (wire_S0W.WSTRB),
        .wlast           (wire_S0W.WLAST),
        .wvalid          (wire_S0W.WVALID),
        .wready          (wire_S0W.WREADY),
        // WR
        .bid             (wire_S0B.S_BID),
        .bresp           (wire_S0B.BRESP),
        .bvalid          (wire_S0B.BVALID),
        .bready          (wire_S0B.BREADY),
        // AR
        .arid            (wire_S0AR.S_ARID),
        .araddr          (wire_S0AR.ARADDR),
        .arlen           (wire_S0AR.ARLEN),
        .arsize          (wire_S0AR.ARSIZE),
        .arburst         (wire_S0AR.ARBURST),
        //cache
        .arlock          (arlock_s0),
        .arcache         (arcache_s0),
        .arprot          (arprot_s0),
        .arvalid         (wire_S0AR.ARVALID),
        .arready         (wire_S0AR.ARREADY),
        // RD
        .rid             (wire_S0R.S_RID),
        .rdata           (wire_S0R.RDATA),
        .rresp           (wire_S0R.RRESP),
        .rlast           (wire_S0R.RLAST),
        .rvalid          (wire_S0R.RVALID),
        .rready          (wire_S0R.RREADY),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_slave_0.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_slave_0.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_slave_0.ID_WIDTH                = IDS_WIDTH;
    defparam axi_slave_0.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_slave_0.MAXLEN                  = MAXLEN;
    defparam axi_slave_0.READ_INTERLEAVE_ON      = 0;
    defparam axi_slave_0.BYTE_STROBE_ON          = 0;
    defparam axi_slave_0.EXCL_ACCESS_ON          = 0;
    defparam axi_slave_0.DATA_BEFORE_CONTROL_ON  = 0;
    defparam axi_slave_0.COVERAGE_ON             = COVERAGE_ON;
    


    axi4_slave axi_slave_1 (
        .aclk            (aclk_s),
        .aresetn         (aresetn_s),
        //AW
        .awid            (wire_S1AW.S_AWID),
        .awaddr          (wire_S1AW.AWADDR),
        .awlen           (wire_S1AW.AWLEN),
        .awsize          (wire_S1AW.AWSIZE),
        .awburst         (wire_S1AW.AWSIZE),
        .awlock          (awlock_s1),
        .awcache         (awcache_s1),
        .awprot          (awprot_s1),
        .awvalid         (wire_S1AW.AWVALID),
        .awready         (wire_S1AW.AWREADY),
        .awqos           (awqos_s1),  
        .awregion        (awregion_s1),  
        .awuser          (awuser_s1),   
	.ruser           (ruser_s1),
        .arqos           (arqos_s1),  
        .arregion        (arregion_s1),  
        .aruser          (aruser_s1),
        .buser           (buser_s1),
	.wuser           (wuser_s1),
        // WD
        .wdata           (wire_S1W.WDATA),
        .wstrb           (wire_S1W.WSTRB),
        .wlast           (wire_S1W.WLAST),
        .wvalid          (wire_S1W.WVALID),
        .wready          (wire_S1W.WREADY),
        // WR
        .bid             (wire_S1B.S_BID),
        .bresp           (wire_S1B.BRESP),
        .bvalid          (wire_S1B.BVALID),
        .bready          (wire_S1B.BREADY),
        // AR
        .arid            (wire_S1AR.S_ARID),
        .araddr          (wire_S1AR.ARADDR),
        .arlen           (wire_S1AR.ARLEN),
        .arsize          (wire_S1AR.ARSIZE),
        .arburst         (wire_S1AR.ARBURST),
        .arlock          (arlock_s1),
        .arcache         (arcache_s1),
        .arprot          (arprot_s1),
        .arvalid         (wire_S1AR.ARVALID),
        .arready         (wire_S1AR.ARREADY),
        // RD
        .rid             (wire_S1R.S_RID),
        .rdata           (wire_S1R.RDATA),
        .rresp           (wire_S1R.RRESP),
        .rlast           (wire_S1R.RLAST),
        .rvalid          (wire_S1R.RVALID),
        .rready          (wire_S1R.RREADY),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_slave_1.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_slave_1.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_slave_1.ID_WIDTH                = IDS_WIDTH;
    defparam axi_slave_1.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_slave_1.MAXLEN                  = MAXLEN;
    defparam axi_slave_1.READ_INTERLEAVE_ON      = 0;
   // defparam axi_slave_1.READ_RESP_IN_ORDER_ON  = 1;
    defparam axi_slave_1.BYTE_STROBE_ON          = 0;
    defparam axi_slave_1.EXCL_ACCESS_ON          = 0;
    defparam axi_slave_1.DATA_BEFORE_CONTROL_ON  = 0;
    defparam axi_slave_1.COVERAGE_ON             = COVERAGE_ON;


    // Instance of the AXI Master (connects to the slave interface of the bridge)
    axi4_master axi_master_0 (
        .aclk            (aclk_m),
        .aresetn         (aresetn_m),
        //AW
        .awid            (wire_M0AW.AWID),
        .awaddr          (wire_M0AW.AWADDR),
        .awlen           (wire_M0AW.AWLEN),
        .awsize          (wire_M0AW.AWSIZE),
        .awburst         (wire_M0AW.AWBURST),
        .awlock          (awlock_m0),
        .awcache         (awcache_m0),
        .awprot          (awprot_m0),
        .awvalid         (wire_M0AW.AWVALID),
        .awready         (wire_M0AW.AWREADY),
        .awqos          (awqos_m0),  
        .awregion        (awregion_m0),  
        .awuser          (awuser_m0),   
	.ruser           (ruser_m0),
        .arqos           (arqos_m0),  
        .arregion        (arregion_m0),  
        .aruser          (aruser_m0),
        .buser           (buser_m0),
	.wuser           (wuser_m0),
        // WD
        .wdata           (wire_M0W.WDATA),
        .wstrb           (wire_M0W.WSTRB),
        .wlast           (wire_M0W.WLAST),
        .wvalid          (wire_M0W.WVALID),
        .wready          (wire_M0W.WREADY),
        // WR
        .bid             (wire_M0B.BID),
        .bresp           (wire_M0B.BRESP),
        .bvalid          (0),
        .bready          (wire_M0B.BREADY),
        // AR
        .arid            (wire_M0AR.ARID),
        .araddr          (wire_M0AR.ARADDR),
        .arlen           (wire_M0AR.ARLEN),
        .arsize          (wire_M0AR.ARSIZE),
        .arburst         (wire_M0AR.ARBURST),
        .arlock          (arlock_m0),
        .arcache         (arcache_m0),
        .arprot          (arprot_m0),
        .arvalid         (wire_M0AR.ARVALID),
        .arready         (wire_M0AR.ARREADY),
        //RD
        .rid             (wire_M0R.RID),
        .rdata           (wire_M0R.RDATA),
        .rresp           (wire_M0R.RRESP),
        .rlast           (wire_M0R.RLAST),
        .rvalid          (wire_M0R.RVALID),
        .rready          (wire_M0R.RREADY),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_master_0.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_master_0.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_master_0.ID_WIDTH                = ID_WIDTH;
    defparam axi_master_0.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_master_0.MAXLEN                  = MAXLEN;
    defparam axi_master_0.READ_INTERLEAVE_ON      = 0;
    defparam axi_master_0.BYTE_STROBE_ON          = 0;
    defparam axi_master_0.EXCL_ACCESS_ON          = 0;
    defparam axi_master_0.DATA_BEFORE_CONTROL_ON  = 0;
    defparam axi_master_0.COVERAGE_ON             = COVERAGE_ON;
    

    axi4_master axi_master_1 (
        .aclk            (aclk_m),
        .aresetn         (aresetn_m),
        // AW
        .awid            (wire_M1AW.AWID),
        .awaddr          (wire_M1AW.AWADDR),
        .awlen           (wire_M1AW.AWLEN),
        .awsize          (wire_M1AW.AWSIZE),
        .awburst         (wire_M1AW.AWBURST),
        .awlock          (awlock_m1),
        .awcache         (awcache_m1),
        .awprot          (awprot_m1),
        .awvalid         (wire_M1AW.AWVALID),
        .awready         (wire_M1AW.AWREADY),
        .awqos          (awqos_m1),  
        .awregion        (awregion_m1),  
        .awuser          (awuser_m1),   
	.ruser           (ruser_m1),
        .arqos           (arqos_m1),  
        .arregion        (arregion_m1),  
        .aruser          (aruser_m1),
        .buser           (buser_m1),
	.wuser           (wuser_m1),
        // WD
        .wdata           (wire_M1W.WDATA),
        .wstrb           (wire_M1W.WSTRB),
        .wlast           (wire_M1W.WLAST),
        .wvalid          (wire_M1W.WVALID),
        .wready          (wire_M1W.WREADY),
        // WR
        .bid             (wire_M1B.BID),
        .bresp           (wire_M1B.BRESP),
        .bvalid          (wire_M1B.BVALID),
        .bready          (wire_M1B.BREADY),
        // AR
        .arid            (wire_M1AR.ARID),
        .araddr          (wire_M1AR.ARADDR),
        .arlen           (wire_M1AR.ARLEN),
        .arsize          (wire_M1AR.ARSIZE),
        .arburst         (wire_M1AR.ARBURST),
        .arlock          (arlock_m1),
        .arcache         (arcache_m1),
        .arprot          (arprot_m1),
        .arvalid         (wire_M1AR.ARVALID),
        .arready         (wire_M1AR.ARREADY),
        //RD
        .rid             (wire_M1R.RID),
        .rdata           (wire_M1R.RDATA),
        .rresp           (wire_M1R.RRESP),
        .rlast           (wire_M1R.RLAST),
        .rvalid          (wire_M1R.RVALID),
        .rready          (wire_M1R.RREADY),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_master_1.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_master_1.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_master_1.ID_WIDTH                = ID_WIDTH;
    defparam axi_master_1.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_master_1.MAXLEN                  = MAXLEN;
    defparam axi_master_1.READ_INTERLEAVE_ON      = 0;
    defparam axi_master_1.BYTE_STROBE_ON          = 0;
    defparam axi_master_1.EXCL_ACCESS_ON          = 0;
    defparam axi_master_1.DATA_BEFORE_CONTROL_ON  = 0;
    defparam axi_master_1.COVERAGE_ON             = COVERAGE_ON;

endmodule 
