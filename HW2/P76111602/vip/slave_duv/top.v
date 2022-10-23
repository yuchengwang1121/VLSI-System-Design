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
    localparam ADDR_WIDTH              = 16;
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
    reg                        aclk;
    reg                        aresetn;

    inter_WA wire_S1AW();
    inter_WD wire_S1W();
    inter_WR wire_S1B();
    inter_RA wire_S1AR();
    inter_RD wire_S1R();
    // Write address channel signals
    wire                        awlock;    // Write address lock type
    wire    [PROT_WIDTH-1:0]    awprot;    // Write address protection level
    wire    [CACHE_WIDTH-1:0]   awcache;   // Write address cache type
    wire    [QOS_WIDTH-1:0]     awqos;     // Write address Quality of service
    wire    [REGION_WIDTH-1:0]  awregion;  // Write address slave address region
    wire    [AWUSER_WIDTH-1:0]  awuser;    // Write address user signal

    // Write data channel signals
    wire    [WUSER_WIDTH-1:0]   wuser;     // Write user signal
    // Write response channel signals
    wire    [BUSER_WIDTH-1:0]   buser;     // Write response user signal
    // Read address channel signals
    wire                        arlock;    // Read address lock type
    wire    [PROT_WIDTH-1:0]    arprot;    // Read address protection level
    wire    [CACHE_WIDTH-1:0]   arcache;   // Read address cache type
    wire    [QOS_WIDTH-1:0]     arqos;     // Read address Quality of service
    wire    [REGION_WIDTH-1:0]  arregion;  // Read address slave address region
    wire    [ARUSER_WIDTH-1:0]  aruser;    // Read address user signal

    // Read data channel signals
    wire    [RUSER_WIDTH-1:0]   ruser;     // Read address user signal

    // AXI 4 Bridge GLobal Interface (connects to low power controller)

    // Low power signals
    wire                        csysreq;     // Low Power - Power Off Request
    wire                        csysack;     // Low Power - Power Off Acknowledge
    wire                        cactive;     // Low Power - activate



    //-------------------------------------------//
    //----- you should put your design here -----//
    //-------------------------------------------//
    SRAM_wrapper axi_duv_slave(
    .clk    (aclk),
    .rst    (aresetn),
    .S_AW   (wire_S1AW),
    .S_W    (wire_S1W),
    .S_B    (wire_S1B),
    .S_AR   (wire_S1AR),
    .S_R    (wire_S1R)
    );
    axi4_master axi_monitor (
        .aclk            (aclk),
        .aresetn         (aresetn),
        .awid            (wire_S1AW.S_AWID),
        .awaddr          (wire_S1AW.AWADDR),
        .awlen           (wire_S1AW.AWLEN),
        .awsize          (wire_S1AW.AWSIZE),
        .awburst         (wire_S1AW.AWBURST),
        .awlock          (awlock),
        .awcache         (awcache),
        .awprot          (awprot),
        .awvalid         (wire_S1AW.AWVALID),
        .awready         (wire_S1AW.AWREADY),
        .awqos           (awqos),  
        .awregion        (awregion),  
        .awuser          (awuser),   
	    .ruser           (ruser),
        .arqos           (arqos),  
        .arregion        (arregion),  
        .aruser          (aruser),
        .buser           (buser),
	    .wuser           (wuser),
     
        .wdata           (wire_S1W.WDATA),
        .wstrb           (wire_S1W.WSTRB),
        .wlast           (wire_S1W.WLAST),
        .wvalid          (wire_S1W.WVALID),
        .wready          (wire_S1W.WREADY),
        
        .bid             (wire_S1B.S_BID),
        .bresp           (wire_S1B.BRESP),
        .bvalid          (wire_S1B.BVALID),
        .bready          (wire_S1B.BREADY),
        
        .arid            (wire_S1AR.S_ARID),
        .araddr          (wire_S1AR.ARADDR),
        .arlen           (wire_S1AR.ARLEN),
        .arsize          (wire_S1AR.ARSIZE),
        .arburst         (wire_S1AR.ARBURST),
        .arlock          (arlock),
        .arcache         (arcache),
        .arprot          (arprot),
        .arvalid         (wire_S1AR.ARVALID),
        .arready         (wire_S1AR.ARREADY),
        
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

    defparam axi_monitor.ADDR_WIDTH              = ADDR_WIDTH;
    defparam axi_monitor.DATA_WIDTH              = DATA_WIDTH;
    defparam axi_monitor.ID_WIDTH                = IDS_WIDTH;
    defparam axi_monitor.LEN_WIDTH               = LEN_WIDTH;
    defparam axi_monitor.MAXLEN                  = MAXLEN;
    defparam axi_monitor.READ_INTERLEAVE_ON      = 0;
    defparam axi_monitor.BYTE_STROBE_ON          = 0;
    defparam axi_monitor.EXCL_ACCESS_ON          = 0;
    defparam axi_monitor.DATA_BEFORE_CONTROL_ON  = 0;
    // To enable debug and coverage
    defparam axi_monitor.COVERAGE_ON             = COVERAGE_ON;   

endmodule
