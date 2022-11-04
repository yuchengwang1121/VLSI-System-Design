module DRAM_wrapper(
  input clk,rst,
  output logic DRAM_CSn,
  output logic [`AXI_STRB_BITS-1:0] DRAM_WEn,
  output logic DRAM_RASn,
  output logic DRAM_CASn,
  output logic [10:0] DRAM_A,
  output logic [`AXI_DATA_BITS-1:0] DRAM_D,
  input [`AXI_DATA_BITS-1:0] DRAM_Q,
  input DRAM_valid,
  inter_WA.MEM D_AW,
  inter_WD.MEM D_W,
  inter_WR.MEM D_B,
  inter_RA.MEM D_AR,
  inter_RD.MEM D_R
);

parameter S_init = 3'b000,
          S_act = 3'b001,
          S_read = 3'b010,
          S_write = 3'b011,
          S_pre = 3'b100;

logic AW_done, AR_done, R_done, W_done, B_done, Delay_done;
logic [2:0] delay_cnt;  // wait 5 cycle
logic [2:0] d_cur, d_next;
assign AW_done = D_AW.AWREADY & D_AW.AWVALID;
assign W_done = D_W.WREADY & D_W.WVALID;
assign B_done = D_B.BREADY & D_B.BVALID;
assign AR_done = D_AR.ARREADY & D_AR.ARVALID;
assign R_done = D_R.RREADY & D_R.RVALID;
assign Delay_done = (d_cur == S_read) ? delay_cnt == 3'h5 : delay_cnt[2];

logic R_donelast,W_donelast;
assign R_donelast = R_done & D_R.RLAST;
assign W_donelast = W_done & D_W.WLAST;

logic write;
always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        write <= 1'b0;
    end
    else begin
        write <= (d_cur==S_init)? (AW_done?1'b1:write) : (d_cur==S_act)? write : 1'b0;       //need to check
    end
end

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        d_cur <= S_init;
    end
    else begin
        d_cur <= d_next;
    end
end

always_comb begin
    case (d_cur)
        S_init: d_next <= (AW_done|AR_done)? S_act : S_init;
        S_act: d_next <= Delay_done? (write? S_write : S_read) : S_act;
        S_read: d_next <= (Delay_done & R_donelast)? S_pre : S_read;
        S_write: d_next <= Delay_done? S_pre : S_write;
        default: d_next <= Delay_done? S_init : S_pre;
    endcase
end

logic [`AXI_ADDR_BITS-1:0] reg_ADDR;
logic [`AXI_IDS_BITS-1:0] reg_ID;
logic [1:0] reg_BURST;
logic [`AXI_LEN_BITS  -1:0] reg_LEN;
logic [`AXI_SIZE_BITS -1:0] reg_SIZE;
logic [`DATA_BITS -1:0] reg_WDATA;

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        reg_ADDR    <= `AXI_ADDR_BITS'b0;
        reg_ID      <= `AXI_IDS_BITS'b0;
        reg_BURST   <= 2'b0;
        reg_LEN     <= `AXI_LEN_BITS'b0;
        reg_SIZE    <= `AXI_SIZE_BITS'b0;
        reg_WDATA   <= `DATA_BITS'b0;
    end
    else begin
        if (AR_done) begin
            reg_ID      <= D_AR.ARID;
            reg_ADDR    <= D_AR.ARADDR;
            reg_LEN     <= D_AR.ARLEN;
            reg_SIZE    <= D_AR.ARSIZE;
            reg_BURST   <= D_AR.ARBURST;
        end
        else if (AW_done) begin
            reg_ID      <= D_AW.AWID;
            reg_ADDR    <= D_AW.AWADDR;
            reg_LEN     <= D_AW.AWLEN;
            reg_SIZE    <= D_AW.AWSIZE;
            reg_BURST   <= D_AW.AWBURST;
        end
        reg_WDATA <= (d_cur == S_act)? D_W.WDATA:reg_WDATA;
    end
end

logic [`AXI_LEN_BITS-1:0] read_cnt;
always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        delay_cnt <= 3'b0;
        read_cnt <= `AXI_LEN_BITS'b0;
    end
    else begin
        delay_cnt <= (d_cur == S_init)? 3'b0 : (Delay_done? 3'b0: delay_cnt+1'b1);
        read_cnt <= (d_cur == S_read)? (R_done? read_cnt+`AXI_LEN_BITS'b1 : read_cnt) : `AXI_LEN_BITS'b0;
    end
end

always_comb begin
    case (d_cur)
        S_init: begin
            DRAM_RASn = 1'b1;
            DRAM_CASn = 1'b1;
            DRAM_WEn  = 4'b1111;
        end
        S_act: begin
            DRAM_RASn = (delay_cnt == 3'b0)? 1'b0:1'b1;
            DRAM_CASn = 1'b1;
            DRAM_WEn  = 4'b1111;
        end
        S_read: begin
            DRAM_RASn = 1'b1;
            DRAM_CASn = (delay_cnt == 3'b0)? 1'b0:1'b1;
            DRAM_WEn  = 4'b1111;
        end
        S_write: begin
            DRAM_RASn = 1'b1;
            DRAM_CASn = (delay_cnt == 3'b0)? 1'b0:1'b1;
            DRAM_WEn  = (delay_cnt == 3'b0)? WSTRB:4'b1111;
        end
        default: begin // S_pre 
            DRAM_RASn = (delay_cnt == 3'b0)? 1'b0:1'b1;
            DRAM_CASn = 1'b1;
            DRAM_WEn  = (delay_cnt == 3'b0)? 4'b0:4'b1111;
        end
    endcase
end

always_comb begin
    case (d_cur)
        S_init: begin
            DRAM_A      = reg_ADDR[22:12];
            DRAM_D      = `DATA_BITS'h0;
            DRAM_CSn    = 1'b1;
        end
        S_act: begin
            DRAM_A      = reg_ADDR[22:12];
            DRAM_D      = D_W.WDATA;
            DRAM_CSn    = 1'b0;
        end
        S_read: begin
            DRAM_A      = reg_ADDR[11:2] + read_cnt[1:0];
            DRAM_D      = WDATA;
            DRAM_CSn    = 1'b0;
        end
        S_write: begin
            DRAM_A      = reg_ADDR[11:2];
            DRAM_D      = reg_WDATA;
            DRAM_CSn    = 1'b0;
        end
        default: begin
            DRAM_A      = reg_ADDR[22:12];
            DRAM_D      = `DATA_BITS'h0;
            DRAM_CSn    = 1'b0;
        end
    endcase
end

assign {D_AR.ARREADY, D_AW.AWREADY} = (d_cur == S_init)? {~D_AW.AWVALID, 1'b1} : 2'b0;
assign D_W.WREADY = (d_cur == S_write)? 1'b1:1'b0;
assign {D_R.RVALID, D_B.BVALID} = (d_cur == S_read)? {DRAM_valid, 1'b0}:(d_cur == S_pre)? {1'b0, (delay_cnt == 3'b0)? 1'b1 : 1'b0}:2'b0;  //need to check

logic [`DATA_BITS -1:0] reg_RDATA;
always_ff @(posedge clk or negedge rst) begin
    if(~rst) begin
        reg_RDATA <= `DATA_BITS'b0;
    end else begin
        reg_RDATA <= DRAM_valid? DRAM_Q:reg_RDATA;
    end
end

assign D_R.RID   = reg_ID;
assign D_R.RDATA = DRAM_valid? DRAM_Q : reg_RDATA;
assign D_R.RRESP = `AXI_RESP_OKAY;

assign D_R.RLAST = (read_cnt == reg_LEN);
assign D_B.BID   = reg_ID;
assign D_B.BRESP = `AXI_RESP_OKAY;
endmodule