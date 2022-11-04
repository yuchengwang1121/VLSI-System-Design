`include "../include/AXI_define.svh"
module ROM_wrapper(
    input clk,rst,
    input [31:0] ROM_out,
    output logic ROM_en,
    output logic ROM_read,
    output logic [31:0] ROM_addr,
    inter_WA.MEM ROM_AW,
    inter_WD.MEM ROM_W,
    inter_WR.MEM ROM_B,
    inter_RA.MEM ROM_AR,
    inter_RD.MEM ROM_R
);
logic CS;
logic OE;
logic [3:0] WEB;
logic [13:0] A;
logic [31:0] DI;
logic [31:0] DO;

assign ROM_en = CS;
assign ROM_read = OE;
assign ROM_addr = WEB;
assign DO = ROM_out;

logic AW_done, AR_done, R_done, W_done, B_done;
assign AW_done = ROM_AW.AWREADY & ROM_AW.AWVALID;
assign W_done = ROM_W.WREADY & ROM_W.WVALID;
assign B_done = ROM_B.BREADY & ROM_B.BVALID;
assign AR_done = ROM_AR.ARREADY & ROM_AR.ARVALID;
assign R_done = ROM_R.RREADY & ROM_R.RVALID;

logic R_donelast,W_donelast;
assign R_donelast = R_done & ROM_R.RLAST;
assign W_donelast = W_done & ROM_W.WLAST;

logic [1:0] s_slave,s_next;
parameter [1:0] S_addr = 2'b00,
                S_readdata = 2'b01,
                S_writedata = 2'b10,
                S_resp = 2'b11;
                
always_ff @(posedge clk or negedge rst) begin
  if (~rst) begin
    s_slave <= S_addr;
  end else begin
    s_slave <= s_next;
  end
end

always_comb begin
  case (s_slave)
    S_addr:begin
      if (AW_done & W_done) begin
        s_next = S_resp;
      end
      else if (AW_done) begin
        s_next = S_writedata;
      end
      else if (AR_done) begin
        s_next = S_readdata;
      end
      else begin
        s_next = S_addr;
      end
    end
    S_readdata:begin
      if (R_donelast & AW_done) begin
        s_next = S_writedata;
      end
      else if (R_donelast & AR_done) begin
        s_next = S_readdata;
      end
      else if (R_donelast) begin
        s_next = S_addr;
      end
      else s_next = S_readdata;
    end
    S_writedata:begin
      s_next = (W_donelast)?S_resp:S_writedata;
    end
    default: begin  //S_resp
      if (B_done & AW_done) begin
        s_next = S_writedata;
      end
      else if (B_done & AR_done) begin
        s_next = S_readdata;
      end
      else if (B_done) begin
        s_next = S_addr;
      end
      else s_next = S_resp;
    end
  endcase
end

always_comb begin
  ROM_AW.AWREADY = (s_slave == S_addr)?1'b1:(s_slave == S_resp)?B_done:(s_slave == S_readdata)?R_done:1'b0;
  ROM_AR.ARREADY = (s_slave == S_addr)?(~S_AW.AWVALID):1'b0;
end

assign ROM_W.WREADY = (s_slave == S_writedata)? 1'b1:1'b0;
assign ROM_B.BVALID = (s_slave == S_resp)? 1'b1:1'b0;
assign ROM_R.RVALID = (s_slave == S_readdata)? 1'b1:1'b0;
assign ROM_R.RRESP = `AXI_RESP_OKAY;
assign ROM_B.BRESP = `AXI_RESP_OKAY;

//ARID, AWID
logic [`AXI_IDS_BITS-1:0] reg_ARID, reg_AWID;
always_ff @(posedge clk or negedge rst) begin
      if(~rst) begin
          reg_ARID <= `AXI_IDS_BITS'b0;
          reg_AWID <= `AXI_IDS_BITS'b0;
      end else begin
          reg_ARID <= (AR_done)? ROM_AR.S_ARID:reg_ARID;
          reg_AWID <= (AW_done)? ROM_AW.S_AWID:reg_AWID;
      end
end
logic [`AXI_IDS_BITS-1:0]RID_temp;

assign ROM_R.S_RID = reg_ARID;
assign ROM_B.S_BID = reg_AWID;

//ARLEN, AWLEN
logic [`AXI_LEN_BITS-1:0] reg_ARLEN, reg_AWLEN;
always_ff @(posedge clk or negedge rst) begin
  if (~rst) begin
    {reg_ARLEN,reg_AWLEN} <= {2{`AXI_LEN_BITS'b0}};
  end
  else begin
    reg_ARLEN <= (AR_done)?S_AR.ARLEN:reg_ARLEN;
    reg_AWLEN <= (AW_done)?S_AW.AWLEN:reg_AWLEN;
  end
end

//RLAST
logic [`AXI_LEN_BITS-1:0] cnt;
always_ff @(posedge clk or negedge rst) begin
  if (~rst) begin
    cnt <= `AXI_LEN_BITS'b0;
  end
  else begin
    case (s_slave)
      S_readdata:  cnt <= (R_donelast)?`AXI_LEN_BITS'b0:((R_done)? cnt+`AXI_LEN_BITS'b1:cnt);
      S_writedata: cnt <= (W_donelast)?`AXI_LEN_BITS'b0:((W_done)? cnt+`AXI_LEN_BITS'b1:cnt);
    endcase
  end
end
assign S_R.RLAST = (reg_ARLEN == cnt);

// //RVALID
// logic reg_RVALID;
// always_ff @(posedge clk or negedge rst) begin
//   if (~rst) reg_RVALID <= 1'b0;
//   else reg_RVALID <= S_R.RVALID;
// end

// //RDATA
// logic [`AXI_DATA_BITS-1:0] reg_RDATA;
// always_ff @(posedge clk or negedge rst) begin
//   if (~rst) begin
//     reg_RDATA <= `AXI_DATA_BITS'b0;
//   end
//   else begin
//     reg_RDATA <= (S_R.RVALID & ~reg_RVALID)?DO:reg_RDATA;
//   end
// end

// assign S_R.RDATA = (S_R. RVALID & reg_RVALID)? reg_RDATA:DO;
assign ROM_R.RDATA = DO;

//WEB, DI, OE, CS
assign WEB = ROM_W.WSTRB;
assign DI = ROM_W.WDATA;
assign OE = (s_slave == S_addr)?(~ROM_AW.AWVALID & AR_done):(s_slave == S_readdata)?1'b1:1'b0;
assign CS = (s_slave == S_addr)?(ROM_AW.AWVALID|ROM_AR.ARVALID):1'b1;

//RADDR, WADDR
logic [13:0] reg_RADDR, reg_WADDR;
logic [1:0] offset;
assign offset = (cnt[1:0] == 2'b0)? ((R_done)? cnt[1:0]+1'b1:cnt[1:0]): cnt[1:0] + 1'b1;
always_ff @(posedge clk or negedge rst) begin
  if (~rst) begin
    {reg_RADDR, reg_WADDR} <= 28'b0;
  end
  else begin
    reg_RADDR <= AR_done?S_AR.ARADDR[15:2]:reg_RADDR;
    reg_WADDR <= AW_done?S_AW.AWADDR[15:2]:reg_WADDR;  
  end
end

//A
always_comb begin
    case(s_slave)
        S_addr:  A = (AW_done)? ROM_AW.AWADDR[15:2]:ROM_AR.ARADDR[15:2];
        S_readdata:  A = reg_RADDR + offset;
        S_writedata: A = reg_WADDR;
        default: A = ~B_done? reg_WADDR:(AW_done ? ROM_AW.AWADDR[15:2]:ROM_AR.ARADDR[15:2]);
    endcase
end
endmodule