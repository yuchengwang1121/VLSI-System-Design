//==============================================
// Author:       Chang Wan-Yun (Claire)
// Filename:     top.v
// Description:  Top module of AXI bridge VIP
// Version:      1.0
// ============================================
`include "../../src/AXI/Interface.sv"

module top #(parameter bit COVERAGE_ON = 0) ();
   
    
    // user defined AXI parameters
    localparam DATA_WIDTH              = 32;
    localparam ADDR_WIDTH              = 32;
    localparam ID_WIDTH                = 4;
    localparam IDS_WIDTH               = 8;
    localparam LEN_WIDTH               = 4;
    localparam MAXLEN                  = 1;
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

    // Slave interface (connects to a master device)

    // Clock and reset    
    wire                        aclk_m;
    wire                        aresetn_m;
    // Clock and reset    
    wire                        aclk_s;
    wire                        aresetn_s;
    inter_WA wire_M0AW();
    inter_WA wire_M1AW(); 
    inter_WA wire_S0AW();
    inter_WA wire_S1AW();
    inter_WA wire_S2AW();
    inter_WA wire_S4AW();

    inter_WD wire_M0W();
    inter_WD wire_M1W();
    inter_WD wire_S0W();
    inter_WD wire_S1W();
    inter_WD wire_S2W();
    inter_WD wire_S4W();

    inter_WR wire_M0B();
    inter_WR wire_M1B();
    inter_WR wire_S0B();
    inter_WR wire_S1B();
    inter_WR wire_S2B();
    inter_WR wire_S4B();

    inter_RA wire_M0AR();
    inter_RA wire_M1AR();
    inter_RA wire_S0AR();
    inter_RA wire_S1AR();
    inter_RA wire_S2AR();
    inter_RA wire_S4AR();

    inter_RD wire_M0R();
    inter_RD wire_M1R();
    inter_RD wire_S0R();
    inter_RD wire_S1R();
    inter_RD wire_S2R();
    inter_RD wire_S4R();
    // ----------slave 0---------- //
    // Write address channel signals
    /*wire    [IDS_WIDTH-1:0]     awid_s0;      // Write address ID tag
    wire    [ADDR_WIDTH-1:0]    awaddr_s0;    // Write address
    wire    [LEN_WIDTH-1:0]     awlen_s0;     // Write address burst length
    wire    [SIZE_WIDTH-1:0]    awsize_s0;    // Write address burst size
    wire    [BURST_WIDTH-1:0]   awburst_s0;   // Write address burst type
    wire                        awlock_s0;    // Write address lock type
    wire    [PROT_WIDTH-1:0]    awprot_s0;    // Write address protection level
    wire    [QOS_WIDTH-1:0]     awqos_s0;     // Write address Quality of service
    wire    [REGION_WIDTH-1:0]  awregion_s0;  // Write address slave address region
    wire    [AWUSER_WIDTH-1:0]  awuser_s0;    // Write address user signal

    wire    [CACHE_WIDTH-1:0]   awcache_s0;   // Write address cache type
    wire                        awvalid_s0;   // Write address valid
    wire                        awready_s0;   // Write address ready

    // Write data channel signals
    wire    [DATA_WIDTH-1:0]    wdata_s0;     // Write data
    wire    [DATA_WIDTH/8-1:0]  wstrb_s0;     // Write strobe
    wire                        wlast_s0;     // Write last
    wire                        wvalid_s0;    // Write valid
    wire                        wready_s0;    // Write ready
    wire    [WUSER_WIDTH-1:0]   wuser_s0;     // Write user signal

    // Write response channel signals
    wire    [IDS_WIDTH-1:0]     bid_s0;       // Write response ID tag
    wire    [BRESP_WIDTH-1:0]   bresp_s0;     // Write response
    wire                        bvalid_s0;    // Write response valid
    wire                        bready_s0;    // Write response ready
    wire    [BUSER_WIDTH-1:0]   buser_s0;     // Write response user signal
    */
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


    // ----------slave2---------- //
    // Write address channel signals
    
    wire                        awlock_s2;    // Write address lock type
    wire    [PROT_WIDTH-1:0]    awprot_s2;    // Write address protection level
    wire    [QOS_WIDTH-1:0]     awqos_s2;     // Write address Quality of service
    wire    [REGION_WIDTH-1:0]  awregion_s2;  // Write address slave address region
    wire    [AWUSER_WIDTH-1:0]  awuser_s2;    // Write address user signal

    wire    [CACHE_WIDTH-1:0]   awcache_s2;   // Write address cache type
    

    // Write data channel signals
    
    wire    [WUSER_WIDTH-1:0]   wuser_s2;     // Write user signal

    // Write response channel signals
    
    wire    [BUSER_WIDTH-1:0]   buser_s2;     // Write response user signal

    // Read address channel signals
    
    wire                        arlock_s2;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot_s2;    // Read address protection level
    wire    [QOS_WIDTH-1:0]     arqos_s2;     // Read address Quality of service
    wire    [REGION_WIDTH-1:0]  arregion_s2;  // Read address slave address region
    wire    [ARUSER_WIDTH-1:0]  aruser_s2;    // Read address user signal

    wire    [CACHE_WIDTH-1:0]   arcache_s2;   // Read address cache type
    
    // Read data channel signals
   
    wire    [RUSER_WIDTH-1:0]   ruser_s2;     // Read address user signal


    // ----------slave3---------- //
    // Write address channel signals
   /* wire    [IDS_WIDTH-1:0]     awid_s3;      // Write address ID tag
    wire    [ADDR_WIDTH-1:0]    awaddr_s3;    // Write address
    wire    [LEN_WIDTH-1:0]     awlen_s3;     // Write address burst length
    wire    [SIZE_WIDTH-1:0]    awsize_s3;    // Write address burst size
    wire    [BURST_WIDTH-1:0]   awburst_s3;   // Write address burst type
    wire                        awlock_s3;    // Write address lock type
    wire    [PROT_WIDTH-1:0]    awprot_s3;    // Write address protection level
    wire    [QOS_WIDTH-1:0]     awqos_s3;     // Write address Quality of service
    wire    [REGION_WIDTH-1:0]  awregion_s3;  // Write address slave address region
    wire    [AWUSER_WIDTH-1:0]  awuser_s3;    // Write address user signal

    wire    [CACHE_WIDTH-1:0]   awcache_s3;   // Write address cache type
    wire                        awvalid_s3;   // Write address valid
    wire                        awready_s3;   // Write address ready

    // Write data channel signals
    wire    [DATA_WIDTH-1:0]    wdata_s3;     // Write data
    wire    [DATA_WIDTH/8-1:0]  wstrb_s3;     // Write strobe
    wire                        wlast_s3;     // Write last
    wire                        wvalid_s3;    // Write valid
    wire                        wready_s3;    // Write ready
    wire    [WUSER_WIDTH-1:0]   wuser_s3;     // Write user signal

    // Write response channel signals
    wire    [IDS_WIDTH-1:0]     bid_s3;       // Write response ID tag
    wire    [BRESP_WIDTH-1:0]   bresp_s3;     // Write response
    wire                        bvalid_s3;    // Write response valid
    wire                        bready_s3;    // Write response ready
    wire    [BUSER_WIDTH-1:0]   buser_s3;     // Write response user signal

    // Read address channel signals
    wire    [IDS_WIDTH-1:0]     arid_s3;      // Read address ID tag
    wire    [ADDR_WIDTH-1:0]    araddr_s3;    // Read address
    wire    [LEN_WIDTH-1:0]     arlen_s3;     // Read address burst length
    wire    [SIZE_WIDTH-1:0]    arsize_s3;    // Read address burst size
    wire    [BURST_WIDTH-1:0]   arburst_s3;   // Read address burst type
    wire                        arlock_s3;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot_s3;    // Read address protection level
    wire    [QOS_WIDTH-1:0]     arqos_s3;     // Read address Quality of service
    wire    [REGION_WIDTH-1:0]  arregion_s3;  // Read address slave address region
    wire    [ARUSER_WIDTH-1:0]  aruser_s3;    // Read address user signal

    wire    [CACHE_WIDTH-1:0]   arcache_s3;   // Read address cache type
    wire                        arvalid_s3;   // Read address valid
    wire                        arready_s3;   // Read address ready

    // Read data channel signals
    wire    [IDS_WIDTH-1:0]     rid_s3;       // Read ID tag
    wire    [DATA_WIDTH-1:0]    rdata_s3;     // Read data
    wire                        rlast_s3;     // Read last
    wire                        rvalid_s3;    // Read valid
    wire                        rready_s3;    // Read ready
    wire    [RRESP_WIDTH-1:0]   rresp_s3;     // Read response
    wire    [RUSER_WIDTH-1:0]   ruser_s3;     // Read address user signal*/


    // ----------slave4---------- //
    // Write address channel signals
    
    wire                        awlock_s4;    // Write address lock type
    wire    [PROT_WIDTH-1:0]    awprot_s4;    // Write address protection level
    wire    [QOS_WIDTH-1:0]     awqos_s4;     // Write address Quality of service
    wire    [REGION_WIDTH-1:0]  awregion_s4;  // Write address slave address region
    wire    [AWUSER_WIDTH-1:0]  awuser_s4;    // Write address user signal

    wire    [CACHE_WIDTH-1:0]   awcache_s4;   // Write address cache type
    
    // Write data channel signals
    
    wire    [WUSER_WIDTH-1:0]   wuser_s4;     // Write user signal

    // Write response channel signals
   
    wire    [BUSER_WIDTH-1:0]   buser_s4;     // Write response user signal

    // Read address channel signals
   
    wire                        arlock_s4;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot_s4;    // Read address protection level
    wire    [QOS_WIDTH-1:0]     arqos_s4;     // Read address Quality of service
    wire    [REGION_WIDTH-1:0]  arregion_s4;  // Read address slave address region
    wire    [ARUSER_WIDTH-1:0]  aruser_s4;    // Read address user signal

    wire    [CACHE_WIDTH-1:0]   arcache_s4;   // Read address cache type
    

    // Read data channel signals
    
    wire    [RRESP_WIDTH-1:0]   rresp_s4;     // Read response
    wire    [RUSER_WIDTH-1:0]   ruser_s4;     // Read address user signal





    // AXI 4 Master Interface (connects to a slave device)

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
    // AXI 4 Bridge GLobal Interface (connects to low power controller)

    // Low power signals
    wire                        csysreq;     // Low Power - Power Off Request
    wire                        csysack;     // Low Power - Power Off Acknowledge
    wire                        cactive;     // Low Power - activate

    // Instance of the AXI bridge DUV
    AXI axi_duv_bridge(
	 .ACLK       (aclk_m      ),
	 .ARESETn    (aresetn_m   ),
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
	 .RD_S1  (wire_S1R),
	 
	 .WA_S2  (wire_S2AW),
	 .WD_S2  (wire_S2W),
	 .WR_S2  (wire_S2B),
	 .RA_S2  (wire_S2AR),
	 .RD_S2  (wire_S2R),

	 .WA_S3  (wire_S4AW),
	 .WD_S3  (wire_S4W),
	 .WR_S3  (wire_S4B),
	 .RA_S3  (wire_S4AR),
	 .RD_S3  (wire_S4R)
	);

    axi4_slave axi_slave_0 (
        .aclk            (aclk_s),
        .aresetn         (aresetn_s),
        .awid            (wire_S0AW.S_AWID),
        .awaddr          (wire_S0AW.AWADDR),
        .awlen           (wire_S0AW.AWLEN),
        .awsize          (wire_S0AW.AWSIZE),
        .awburst         (wire_S0AW.AWSIZE),
        .awlock          (awlock_s0),
        .awcache         (awcache_s0),
        .awprot          (awprot_s0),
        .awvalid         (0/*awvalid_s0*/),
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
      
        .wdata           (wire_S0W.WDATA),
        .wstrb           (wire_S0W.WSTRB),
        .wlast           (wire_S0W.WLAST),
        .wvalid          (0/*wvalid_s0*/),
        .wready          (wire_S0W.WREADY),
        
        .bid             (wire_S0B.S_BID),
        .bresp           (wire_S0B.BRESP),
        .bvalid          (wire_S0B.BVALID),
        .bready          (wire_S0B.BREADY),
        
        .arid            (wire_S0AR.S_ARID),
        .araddr          (wire_S0AR.ARADDR),
        .arlen           (wire_S0AR.ARLEN),
        .arsize          (wire_S0AR.ARSIZE),
        .arburst         (wire_S0AR.ARBURST),
        .arlock          (arlock_s0),
        .arcache         (arcache_s0),
        .arprot          (arprot_s0),
        .arvalid         (wire_S0AR.ARVALID),
        .arready         (wire_S0AR.ARREADY),
        
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


    axi4_slave axi_slave_2 (
        .aclk            (aclk_s),
        .aresetn         (aresetn_s),
        .awid            (wire_S2AW.S_AWID),
        .awaddr          (wire_S2AW.AWADDR),
        .awlen           (wire_S2AW.AWLEN),
        .awsize          (wire_S2AW.AWSIZE),
        .awburst         (wire_S2AW.AWSIZE),
        .awlock          (awlock_s2),
        .awcache         (awcache_s2),
        .awprot          (awprot_s2),
        .awvalid         (wire_S2AW.AWVALID),
        .awready         (wire_S2AW.AWREADY),
        .awqos           (awqos_s2),  
        .awregion        (awregion_s2),  
        .awuser          (awuser_s2),   
		.ruser           (ruser_s2),
        .arqos           (arqos_s2),  
        .arregion        (arregion_s2),  
        .aruser          (aruser_s2),
        .buser           (buser_s2),
		.wuser           (wuser_s2),
        // WD
        .wdata           (wire_S2W.WDATA),
        .wstrb           (wire_S2W.WSTRB),
        .wlast           (wire_S2W.WLAST),
        .wvalid          (wire_S2W.WVALID),
        .wready          (wire_S2W.WREADY),
        // WR
        .bid             (wire_S2B.S_BID),
        .bresp           (wire_S2B.BRESP),
        .bvalid          (wire_S2B.BVALID),
        .bready          (wire_S2B.BREADY),
        // AR
        .arid            (wire_S2AR.S_ARID),
        .araddr          (wire_S2AR.ARADDR),
        .arlen           (wire_S2AR.ARLEN),
        .arsize          (wire_S2AR.ARSIZE),
        .arburst         (wire_S2AR.ARBURST),
        .arlock          (arlock_s2),
        .arcache         (arcache_s2),
        .arprot          (arprot_s2),
        .arvalid         (wire_S2AR.ARVALID),
        .arready         (wire_S2AR.ARREADY),
        // RD
        .rid             (wire_S2R.S_RID),
        .rdata           (wire_S2R.RDATA),
        .rresp           (wire_S2R.RRESP),
        .rlast           (wire_S2R.RLAST),
        .rvalid          (wire_S2R.RVALID),
        .rready          (wire_S2R.RREADY),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_slave_2.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_slave_2.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_slave_2.ID_WIDTH                = IDS_WIDTH;
    defparam axi_slave_2.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_slave_2.MAXLEN                  = MAXLEN;
    defparam axi_slave_2.READ_INTERLEAVE_ON      = 0;
   // defparam axi_slave_2.READ_RESP_IN_ORDER_ON  = 1;
    defparam axi_slave_2.BYTE_STROBE_ON          = 0;
    defparam axi_slave_2.EXCL_ACCESS_ON          = 0;
    defparam axi_slave_2.DATA_BEFORE_CONTROL_ON  = 0;
    defparam axi_slave_2.COVERAGE_ON             = COVERAGE_ON;


    /*axi4_slave axi_slave_3 (
        .aclk            (aclk_s),
        .aresetn         (aresetn_s),
        .awid            (awid_s3),
        .awaddr          (awaddr_s3),
        .awlen           (awlen_s3),
        .awsize          (awsize_s3),
        .awburst         (awburst_s3),
        .awlock          (awlock_s3),
        .awcache         (awcache_s3),
        .awprot          (awprot_s3),
        .awvalid         (awvalid_s3),
        .awready         (awready_s3),
        .awqos           (awqos_s3),  
        .awregion        (awregion_s3),  
        .awuser          (awuser_s3),   
	    .ruser           (ruser_s3),
        .arqos           (arqos_s3),  
        .arregion        (arregion_s3),  
        .aruser          (aruser_s3),
        .buser           (buser_s3),
	    .wuser           (wuser_s3),
      
        .wdata           (wdata_s3),
        .wstrb           (wstrb_s3),
        .wlast           (wlast_s3),
        .wvalid          (wvalid_s3),
        .wready          (wready_s3),
        
        .bid             (bid_s3),
        .bresp           (bresp_s3),
        .bvalid          (bvalid_s3),
        .bready          (bready_s3),
        
        .arid            (arid_s3),
        .araddr          (araddr_s3),
        .arlen           (arlen_s3),
        .arsize          (arsize_s3),
        .arburst         (arburst_s3),
        .arlock          (arlock_s3),
        .arcache         (arcache_s3),
        .arprot          (arprot_s3),
        .arvalid         (arvalid_s3),
        .arready         (arready_s3),
        
        .rid             (rid_s3),
        .rdata           (rdata_s3),
        .rresp           (rresp_s3),
        .rlast           (rlast_s3),
        .rvalid          (rvalid_s3),
        .rready          (rready_s3),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_slave_3.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_slave_3.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_slave_3.ID_WIDTH                = IDS_WIDTH;
    defparam axi_slave_3.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_slave_3.MAXLEN                  = MAXLEN;
    defparam axi_slave_3.READ_INTERLEAVE_ON      = 0;
   // defparam axi_slave_3.READ_RESP_IN_ORDER_ON  = 1;
    defparam axi_slave_3.BYTE_STROBE_ON          = 0;
    defparam axi_slave_3.EXCL_ACCESS_ON          = 0;
    defparam axi_slave_3.DATA_BEFORE_CONTROL_ON  = 0;
    defparam axi_slave_3.COVERAGE_ON             = COVERAGE_ON;*/


    axi4_slave axi_slave_4 (
        .awid            (wire_S4AW.S_AWID),
        .awaddr          (wire_S4AW.AWADDR),
        .awlen           (wire_S4AW.AWLEN),
        .awsize          (wire_S4AW.AWSIZE),
        .awburst         (wire_S4AW.AWBURST),
        .awlock          (awlock_s4),
        .awcache         (awcache_s4),
        .awprot          (awprot_s4),
        .awvalid         (wire_S4AW.AWVALID),
        .awready         (wire_S4AW.AWREADY),
        .awqos           (awqos_s4),  
        .awregion        (awregion_s4),  
        .awuser          (awuser_s4),   
		.ruser           (ruser_s4),
        .arqos           (arqos_s4),  
        .arregion        (arregion_s4),  
        .aruser          (aruser_s4),
        .buser           (buser_s4),
		.wuser           (wuser_s4),
        // WD
        .wdata           (wire_S4W.WDATA),
        .wstrb           (wire_S4W.WSTRB),
        .wlast           (wire_S4W.WLAST),
        .wvalid          (wire_S4W.WVALID),
        .wready          (wire_S4W.WREADY),
        // WR
        .bid             (wire_S4B.S_BID),
        .bresp           (wire_S4B.BRESP),
        .bvalid          (wire_S4B.BVALID),
        .bready          (wire_S4B.BREADY),
        // AR
        .arid            (wire_S4AR.S_ARID),
        .araddr          (wire_S4AR.ARADDR),
        .arlen           (wire_S4AR.ARLEN),
        .arsize          (wire_S4AR.ARSIZE),
        .arburst         (wire_S4AR.ARBURST),
        .arlock          (arlock_s4),
        .arcache         (arcache_s4),
        .arprot          (arprot_s4),
        .arvalid         (wire_S4AR.ARVALID),
        .arready         (wire_S4AR.ARREADY),
        // RD
        .rid             (wire_S4R.S_RID),
        .rdata           (wire_S4R.RDATA),
        .rresp           (wire_S4R.RRESP),
        .rlast           (wire_S4R.RLAST),
        .rvalid          (wire_S4R.RVALID),
        .rready          (wire_S4R.RREADY),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_slave_4.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_slave_4.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_slave_4.ID_WIDTH                = IDS_WIDTH;
    defparam axi_slave_4.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_slave_4.MAXLEN                  = MAXLEN;
    defparam axi_slave_4.READ_INTERLEAVE_ON      = 0;
   // defparam axi_slave_4.READ_RESP_IN_ORDER_ON  = 1;
    defparam axi_slave_4.BYTE_STROBE_ON          = 0;
    defparam axi_slave_4.EXCL_ACCESS_ON          = 0;
    defparam axi_slave_4.DATA_BEFORE_CONTROL_ON  = 0;
    defparam axi_slave_4.COVERAGE_ON             = COVERAGE_ON;


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

endmodule // top
