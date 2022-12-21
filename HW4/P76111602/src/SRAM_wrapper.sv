`include "../include/AXI_define.svh"
module SRAM_wrapper (
  input clk,
  input rst,
  inter_WA.SRAM S_AW,
  inter_WD.SRAM S_W,
  inter_WR.SRAM S_B,
  inter_RA.SRAM S_AR,
  inter_RD.SRAM S_R
);

logic CS;
logic OE;
logic [3:0] WEB;
logic [13:0] A;
logic [31:0] DI;
logic [31:0] DO;

logic AW_done, AR_done, R_done, W_done, B_done;
assign AW_done = S_AW.AWREADY & S_AW.AWVALID;
assign W_done = S_W.WREADY & S_W.WVALID;
assign B_done = S_B.BREADY & S_B.BVALID;
assign AR_done = S_AR.ARREADY & S_AR.ARVALID;
assign R_done = S_R.RREADY & S_R.RVALID;

logic R_donelast,W_donelast;
assign R_donelast = R_done & S_R.RLAST;
assign W_donelast = W_done & S_W.WLAST;

logic [1:0] s_slave,s_next;
parameter [1:0] S_addr = 2'b00,
                S_readdata = 2'b01,
                S_writedata = 2'b10,
                S_resp = 2'b11;
                
always_ff @(posedge clk) begin
  if (rst) begin
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
  S_AW.AWREADY = (s_slave == S_addr)?1'b1:(s_slave == S_resp)?B_done:(s_slave == S_readdata)?R_done:1'b0;
  S_AR.ARREADY = (s_slave == S_addr)?(~S_AW.AWVALID):1'b0;
end

assign S_W.WREADY = (s_slave == S_writedata)? 1'b1:1'b0;
assign S_B.BVALID = (s_slave == S_resp)? 1'b1:1'b0;
assign S_R.RVALID = (s_slave == S_readdata)? 1'b1:1'b0;
assign S_R.RRESP = `AXI_RESP_OKAY;
assign S_B.BRESP = `AXI_RESP_OKAY;

//ARID, AWID
logic [`AXI_IDS_BITS-1:0] reg_ARID, reg_AWID;
always_ff @(posedge clk) begin
      if(rst) begin
          reg_ARID <= `AXI_IDS_BITS'b0;
          reg_AWID <= `AXI_IDS_BITS'b0;
      end else begin
          reg_ARID <= (AR_done)? S_AR.S_ARID:reg_ARID;
          reg_AWID <= (AW_done)? S_AW.S_AWID:reg_AWID;
      end
end


assign S_R.S_RID = reg_ARID;
assign S_B.S_BID = reg_AWID;

//ARLEN, AWLEN
logic [`AXI_LEN_BITS-1:0] reg_ARLEN, reg_AWLEN;
always_ff @(posedge clk) begin
  if (rst) begin
    {reg_ARLEN,reg_AWLEN} <= {2{`AXI_LEN_BITS'b0}};
  end
  else begin
    reg_ARLEN <= (AR_done)?S_AR.ARLEN:reg_ARLEN;
    reg_AWLEN <= (AW_done)?S_AW.AWLEN:reg_AWLEN;
  end
end

//RLAST
logic [`AXI_LEN_BITS-1:0] cnt;
always_ff @(posedge clk) begin
  if (rst) begin
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

//RVALID
// logic reg_RVALID;
// always_ff @(posedge clk or ) begin
//   if (rst) reg_RVALID <= 1'b0;
//   else reg_RVALID <= S_R.RVALID;
// end

// //RDATA
// logic [`AXI_DATA_BITS-1:0] reg_RDATA;
// always_ff @(posedge clk) begin
//   if (rst) begin
//     reg_RDATA <= `AXI_DATA_BITS'b0;
//   end
//   else begin
//     reg_RDATA <= (S_R.RVALID & ~reg_RVALID)?DO:reg_RDATA;
//   end
// end

// assign S_R.RDATA = (S_R. RVALID & reg_RVALID)? reg_RDATA:DO;

//WEB, DI, OE, CS
assign S_R.RDATA = DO;
assign WEB = S_W.WSTRB;
assign DI = S_W.WDATA;
assign OE = (s_slave == S_addr)?(~S_AW.AWVALID & AR_done):(s_slave == S_readdata)?1'b1:1'b0;
assign CS = (s_slave == S_addr)?(S_AW.AWVALID|S_AR.ARVALID):1'b1;

//RADDR, WADDR
logic [13:0] reg_RADDR, reg_WADDR;
always_ff @(posedge clk) begin
  if (rst) begin
    {reg_RADDR, reg_WADDR} <= 28'b0;
  end
  else begin
    reg_RADDR <= AR_done?S_AR.ARADDR[15:2]:reg_RADDR;
    reg_WADDR <= AW_done?S_AW.AWADDR[15:2]:reg_WADDR;  
  end
end

//A
logic [1:0] A_offset;
assign A_offset = (cnt[1:0] == 2'b0)? ((R_done)? cnt[1:0] + 2'b1: cnt[1:0]):cnt[1:0] + 2'b1;
always_comb begin
    case(s_slave)
        S_addr:  A = (AW_done)? S_AW.AWADDR[15:2]:S_AR.ARADDR[15:2];
        S_readdata:  A = reg_RADDR + A_offset;
        S_writedata: A = reg_WADDR;
        default: A = ~B_done? reg_WADDR:(AW_done ? S_AW.AWADDR[15:2]:S_AR.ARADDR[15:2]);
    endcase
end

  SRAM i_SRAM (
    .A0   (A[0]  ),
    .A1   (A[1]  ),
    .A2   (A[2]  ),
    .A3   (A[3]  ),
    .A4   (A[4]  ),
    .A5   (A[5]  ),
    .A6   (A[6]  ),
    .A7   (A[7]  ),
    .A8   (A[8]  ),
    .A9   (A[9]  ),
    .A10  (A[10] ),
    .A11  (A[11] ),
    .A12  (A[12] ),
    .A13  (A[13] ),
    .DO0  (DO[0] ),
    .DO1  (DO[1] ),
    .DO2  (DO[2] ),
    .DO3  (DO[3] ),
    .DO4  (DO[4] ),
    .DO5  (DO[5] ),
    .DO6  (DO[6] ),
    .DO7  (DO[7] ),
    .DO8  (DO[8] ),
    .DO9  (DO[9] ),
    .DO10 (DO[10]),
    .DO11 (DO[11]),
    .DO12 (DO[12]),
    .DO13 (DO[13]),
    .DO14 (DO[14]),
    .DO15 (DO[15]),
    .DO16 (DO[16]),
    .DO17 (DO[17]),
    .DO18 (DO[18]),
    .DO19 (DO[19]),
    .DO20 (DO[20]),
    .DO21 (DO[21]),
    .DO22 (DO[22]),
    .DO23 (DO[23]),
    .DO24 (DO[24]),
    .DO25 (DO[25]),
    .DO26 (DO[26]),
    .DO27 (DO[27]),
    .DO28 (DO[28]),
    .DO29 (DO[29]),
    .DO30 (DO[30]),
    .DO31 (DO[31]),
    .DI0  (DI[0] ),
    .DI1  (DI[1] ),
    .DI2  (DI[2] ),
    .DI3  (DI[3] ),
    .DI4  (DI[4] ),
    .DI5  (DI[5] ),
    .DI6  (DI[6] ),
    .DI7  (DI[7] ),
    .DI8  (DI[8] ),
    .DI9  (DI[9] ),
    .DI10 (DI[10]),
    .DI11 (DI[11]),
    .DI12 (DI[12]),
    .DI13 (DI[13]),
    .DI14 (DI[14]),
    .DI15 (DI[15]),
    .DI16 (DI[16]),
    .DI17 (DI[17]),
    .DI18 (DI[18]),
    .DI19 (DI[19]),
    .DI20 (DI[20]),
    .DI21 (DI[21]),
    .DI22 (DI[22]),
    .DI23 (DI[23]),
    .DI24 (DI[24]),
    .DI25 (DI[25]),
    .DI26 (DI[26]),
    .DI27 (DI[27]),
    .DI28 (DI[28]),
    .DI29 (DI[29]),
    .DI30 (DI[30]),
    .DI31 (DI[31]),
    .CK   (clk   ),
    .WEB0 (WEB[0]),
    .WEB1 (WEB[1]),
    .WEB2 (WEB[2]),
    .WEB3 (WEB[3]),
    .OE   (OE    ),
    .CS   (CS    )
  );

endmodule
