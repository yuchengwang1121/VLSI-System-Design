`include "../include/AXI_define.svh"
`include "def.svh"
// `include "Interface.sv"
module Master(
    input clk,
    input rst,
    //from CPU
    input read,write,
    input [2:0] write_type,
    input [`AXI_DATA_BITS-1:0] data_in,
    input [`AXI_ADDR_BITS-1:0] addr_in,
    //to CPU
    output logic [`AXI_DATA_BITS-1:0] data_out,
    output logic stall,

    //AXI
    //WRITE ADDRESS
    output logic [`AXI_ID_BITS   -1:0] AWID,
    output logic [`AXI_ADDR_BITS -1:0] AWADDR,
    output logic [`AXI_LEN_BITS  -1:0] AWLEN,
    output logic [`AXI_SIZE_BITS -1:0] AWSIZE,
    output logic [1:0] AWBURST,
    output logic AWVALID,
    input AWREADY,
    //WRITE DATA
    output logic [`AXI_DATA_BITS-1:0] WDATA,
    output logic [`AXI_STRB_BITS-1:0] WSTRB,
    output logic WLAST,
    output logic WVALID,
    input WREADY,
    //WRITE RESPONSE
    input [`AXI_ID_BITS   -1:0] BID,
    input [1:0] BRESP,
    input BVALID,
    output logic BREADY,

    //READ ADDRESS
    output logic [`AXI_ID_BITS   -1:0] ARID,
    output logic [`AXI_ADDR_BITS -1:0] ARADDR,
    output logic [`AXI_LEN_BITS  -1:0] ARLEN,
    output logic [`AXI_SIZE_BITS -1:0] ARSIZE,
    output logic [1:0] ARBURST,
    output logic ARVALID,
    input ARREADY,
    //READ DATA
    input [`AXI_ID_BITS  -1:0] RID,
    input [`AXI_DATA_BITS-1:0] RDATA,
    input [1:0] RRESP,
    input RLAST,
    input RVALID,
    output logic RREADY

    // inter_WA.M_AW M_AW,
    // inter_WD.M_W M_W,
    // inter_WR.M_B M_B,
    // inter_RA.M_AR M_AR,
    // inter_RD.M_R M_R
);
    
logic [2:0] s_master, s_next;
parameter S_init = 3'b000,
          S_readaddr = 3'b001,
          S_readdata = 3'b010,
          S_writeaddr = 3'b011,
          S_writedata = 3'b100,
          S_resp = 3'b101;

logic AW_done, AR_done, R_done, W_done, B_done;
assign AW_done = AWREADY & AWVALID;
assign W_done = WREADY & WVALID;
assign B_done = BREADY & BVALID;
assign AR_done = ARREADY & ARVALID;
assign R_done = RREADY & RVALID;

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        s_master <= S_init;
    end else begin
        s_master <= s_next;
    end
end

always_comb begin
    case (s_master)
        S_init: begin
            if (ARVALID) begin
                s_next = (AR_done)?S_readdata:S_readaddr;
            end
            else if(AWVALID) begin
                s_next = (AW_done)?S_writedata:S_writeaddr;
            end
            else s_next = S_init;
        end
        S_readaddr:begin
            s_next = (AR_done)?S_readdata:S_readaddr;
        end
        S_readdata:begin
            s_next = (R_done & RLAST)?S_init:S_readdata;
        end
        S_writeaddr:begin
            s_next = (AW_done)?S_writedata:S_writeaddr;
        end
        S_writedata:begin
            s_next = (W_done)?S_resp:S_writedata;
        end
        default: begin  //S_resp
            s_next = (B_done)?S_init:S_resp;
        end
    endcase
end

logic r, w;
always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        {r,w} <= 2'b00;
    end
    else begin
        {r,w} <= 2'b11;
    end
end

//AR
assign ARID = `AXI_ID_BITS'b0;
assign ARLEN = `AXI_LEN_BITS'b11;
assign ARSIZE  = `AXI_SIZE_BITS'b10;
assign ARBURST = `AXI_BURST_INC;
assign ARADDR  = addr_in;

always_comb begin
    ARVALID = (s_master==S_init)?read & r : (s_master==S_readaddr)?1'b1:1'b0;
end

//R
logic [`AXI_DATA_BITS-1:0] reg_RDATA;
assign data_out = R_done?RDATA:reg_RDATA;
assign RREADY = (s_master == S_readdata)?1'b1:1'b0;


always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        reg_RDATA <= `AXI_DATA_BITS'b0;
    end else begin
        reg_RDATA <= R_done?RDATA:reg_RDATA;
    end
end

//AW
assign AWID  = `AXI_ID_BITS'b0;
assign AWLEN = `AXI_LEN_BITS'b11;
assign AWSIZE = `AXI_SIZE_BITS'b10;
assign AWBURST = `AXI_BURST_INC;
assign AWADDR = addr_in;

always_comb begin
    AWVALID = (s_master==S_init)?write&w:(s_master==S_writeaddr)?1'b1:1'b0;
end

//W
always_comb begin
        WSTRB = 4'b1111;
        case(write_type)
            `CACHE_BYTE:    WSTRB[addr_in[1:0]] = 1'b0;
            `CACHE_HWORD:   WSTRB[{addr_in[1],1'b0}+:2] = 2'b0;
            `CACHE_WORD:    WSTRB = 4'b0000;
        endcase
    end
assign WLAST = 1'b1;
assign WDATA = data_in;

assign WVALID = (s_master == S_writedata)?1'b1:1'b0;

//B
assign BREADY = ((s_master == S_resp)||W_done)?1'b1:1'b0;
// logic bready_temp;
// assign bready_temp = ((s_master == S_resp))?1'b1:1'b0;
// always@(posedge clk or negedge rst)begin
//     if(~rst)begin
// 	BREADY <= 0;
//     end
//     else begin
// 	BREADY <= bready_temp;
//     end
// end
assign stall = (read & ~R_done) || (write & ~W_done);
endmodule
