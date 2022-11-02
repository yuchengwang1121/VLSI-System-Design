//================================================
// Auther:      Chun-Wen Yang (Willie)            
// Filename:    top.v                            
// Description: Top module of AXI master VIP                
// Version:     1.0 
//================================================
`include "../../src/AXI/Interface.sv"
`include "../../include/AXI_define.svh"
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
    localparam BRESP_WIDTH              = 2;
    localparam RRESP_WIDTH              = 2;
    localparam AWUSER_WIDTH            = 32; // Size of AWUser field
    localparam WUSER_WIDTH             = 32; // Size of WUser field
    localparam BUSER_WIDTH             = 32; // Size of BUser field
    localparam ARUSER_WIDTH            = 32; // Size of ARUser field
    localparam RUSER_WIDTH             = 32; // Size of RUser field
    localparam QOS_WIDTH               = 4;  // Size of QOS field
    localparam REGION_WIDTH            = 4;  // Size of Region field

    // Clock and reset    
    wire                        aclk;
    wire                        aresetn;
    inter_WA wire_M0AW();
    inter_WA wire_M1AW(); 
    inter_WD wire_M0W();
    inter_WD wire_M1W();
    inter_WR wire_M0B();
    inter_WR wire_M1B();
    inter_RA wire_M0AR();
    inter_RA wire_M1AR();
    inter_RD wire_M0R();
    inter_RD wire_M1R();
    // ----------master0---------- //

    //--------------------------------------------//
    //----- You should add your signals here -----//
    //--------------------------------------------//
    wire rst = ~aresetn;


    // Read address channel signals
    wire                        arlock_m0;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot_m0;    // Read address protection level
    wire    [CACHE_WIDTH-1:0]   arcache_m0;   // Read address cache type
    wire    [DATA_WIDTH-1:0] rdata_m0;
    wire    [DATA_WIDTH-1:0] rdata_m1;
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


    //-------------------------------------------//
    //----- you should put your design here -----//
    reg latch_rst;
    always@(posedge aclk or posedge rst)begin 
    if(rst)
	latch_rst <= rst;
    else
	latch_rst <= rst;
    end
    CPU_wrapper CPU_wrapper(
    .clk    (aclk),      
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
    .rdata_m0(rdata_m0),
    .rdata_m1(rdata_m1)
    );
    
    //-------------------------------------------//

    // Instance of the AXI Monitor
    axi4_slave axi_monitor_0 (
        .aclk            (aclk),
        .aresetn         (~latch_rst),
        .awid            (wire_M0AW.AWID),
        .awaddr          (wire_M0AW.AWADDR),
        .awlen           (wire_M0AW.AWLEN),
        .awsize          (wire_M0AW.AWSIZE),
        .awburst         (wire_M0AW.AWBURST),
        .awlock          (awlock_m0),
        .awcache         (awcache_m0),
        .awprot          (awprot_m0),
        .awvalid         (0),
        .awready         (wire_M0AW.AWREADY),
        .awqos           (awqos_m0),  
        .awregion        (awregion_m0),  
        .awuser          (awuser_m0),   
	  .ruser           (ruser_m0),
        .arqos           (arqos_m0),  
        .arregion        (arregion_m0),  
        .aruser          (aruser_m0),
        .buser           (buser_m0),
	  .wuser           (wuser_m0),
     
        .wdata           (wire_M0W.WDATA),
        .wstrb           (wire_M0W.WSTRB),
        .wlast           (wire_M0W.WLAST),
        .wvalid          (0),
        .wready          (wire_M0W.WREADY),
        
        .bid             (wire_M0B.BID),
        .bresp           (wire_M0B.BRESP),
        .bvalid          (wire_M0B.BVALID),
        .bready          (wire_M0B.BREADY),
        
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
        
        .rid             (wire_M0R.RID),
        .rdata           (rdata_m0),
        .rresp           (wire_M0R.RRESP),
        .rlast           (wire_M0R.RLAST),
        .rvalid          (wire_M0R.RVALID),
        .rready          (wire_M0R.RREADY),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_monitor_0.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_monitor_0.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_monitor_0.ID_WIDTH                = ID_WIDTH;
    defparam axi_monitor_0.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_monitor_0.MAXLEN                  = MAXLEN;
    defparam axi_monitor_0.READ_INTERLEAVE_ON      = 0;
    defparam axi_monitor_0.BYTE_STROBE_ON          = 0;
    defparam axi_monitor_0.EXCL_ACCESS_ON          = 0;
    defparam axi_monitor_0.DATA_BEFORE_CONTROL_ON  = 0;
    // To enable debug and coverage
    defparam axi_monitor_0.COVERAGE_ON             = COVERAGE_ON;

 
    axi4_slave axi_monitor_1 (
        .aclk            (aclk),
        .aresetn         (~latch_rst),
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
        .awqos           (awqos_m1),  
        .awregion        (awregion_m1),  
        .awuser          (awuser_m1),   
	  .ruser           (ruser_m1),
        .arqos           (arqos_m1),  
        .arregion        (arregion_m1),  
        .aruser          (aruser_m1),
        .buser           (buser_m1),
	  .wuser           (wuser_m1),
     
        .wdata           (wire_M1W.WDATA),
        .wstrb           (wire_M1W.WSTRB),
        .wlast           (wire_M1W.WLAST),
        .wvalid          (wire_M1W.WVALID),
        .wready          (wire_M1W.WREADY),
        
        .bid             (wire_M1B.BID),
        .bresp           (wire_M1B.BRESP),
        .bvalid          (wire_M1B.BVALID),
        .bready          (wire_M1B.BREADY),
        
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
        
        .rid             (wire_M1R.RID),
        .rdata           (rdata_m1),
        .rresp           (wire_M1R.RRESP),
        .rlast           (wire_M1R.RLAST),
        .rvalid          (wire_M1R.RVALID),
        .rready          (wire_M1R.RREADY),
        
        .csysreq         (csysreq),
        .csysack         (csysack),
        .cactive         (cactive)
    );

    defparam axi_monitor_1.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_monitor_1.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_monitor_1.ID_WIDTH                = ID_WIDTH;
    defparam axi_monitor_1.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_monitor_1.MAXLEN                  = MAXLEN;
    defparam axi_monitor_1.READ_INTERLEAVE_ON      = 0;
    defparam axi_monitor_1.BYTE_STROBE_ON          = 0;
    defparam axi_monitor_1.EXCL_ACCESS_ON          = 0;
    defparam axi_monitor_1.DATA_BEFORE_CONTROL_ON  = 0;
    // To enable debug and coverage
    defparam axi_monitor_1.COVERAGE_ON             = COVERAGE_ON;


endmodule