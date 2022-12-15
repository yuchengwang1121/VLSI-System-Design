module DRAM_wrapper (
    input clk,
    input rst,
    inter_WA.DRAM S4AW,
    inter_WD.DRAM S4W,
    inter_WR.DRAM S4B,
    inter_RA.DRAM S4AR,
    inter_RD.DRAM S4R,
    
    output logic DRAM_CSn,
    output logic [`AXI_STRB_BITS-1:0] DRAM_WEn,
    output logic DRAM_RASn,
    output logic DRAM_CASn,
    output logic [10:0] DRAM_A,
    output logic [`AXI_DATA_BITS-1:0] DRAM_D,
    input [`AXI_DATA_BITS-1:0] DRAM_Q,
    input DRAM_valid
);
    logic AR_done, R_done, AW_done, W_done, B_done;
    assign AR_done = S4AR.ARVALID & S4AR.ARREADY;
    assign R_done = S4R.RVALID & S4R.RREADY;
    assign AW_done = S4AW.AWVALID & S4AW.AWREADY;
    assign W_done = S4W.WVALID & S4W.WREADY;
    assign B_done = S4B.BVALID & S4B.BREADY;
    
    logic R_done_last, W_done_last;
    assign R_done_last = S4R.RLAST & R_done;
    assign W_done_last = S4W.WLAST & W_done;

    logic [2:0]slave_state, next_state;
    logic [2:0]delay_cnt;
    logic delay_done;
    
    parameter S_init = 3'b000,
              S_act = 3'b001,
              S_read = 3'b010,
              S_write = 3'b011,
              S_pre = 3'b100;
    assign delay_done = (slave_state == S_read) ? delay_cnt == 3'h5 : delay_cnt[2];//
    logic write;
    always_ff @(posedge clk or negedge rst) begin
        if(~rst) begin
            write <= 1'b0;
        end else begin
            case (slave_state)
                S_init: begin
                    if(AW_done)
                        write <= 1'b1;
                end
                S_act:
                    write <= write;
                default : /* default */
                    write <= 1'b0;
            endcase
        end
    end

    always_ff @(posedge clk or negedge rst) begin
        if(~rst)
            slave_state <= S_init;
        else
            slave_state <= next_state;
    end

    always_comb begin 
        case(slave_state)
            S_init: begin
                if(AR_done | AW_done) next_state <= S_act;
                else next_state <= S_init;
            end
            S_act: begin
                if(delay_done) begin
                    if(write) next_state <= S_write;
                    else next_state <= S_read;
                end
                else next_state <= S_act;
            end
            S_read: begin
                if(delay_done & R_done_last) next_state <= S_pre;
                else next_state <= S_read; 
            end
            S_write: begin
                if(delay_done) next_state <= S_pre;
                else next_state <= S_write;
            end
            default: begin // S_pre
                if(delay_done) next_state <= S_init;
                else next_state <= S_pre;
            end
        endcase
    end

    logic [`AXI_ADDR_BITS-1:0] reg_ADDR;
    logic [`AXI_IDS_BITS-1:0] reg_ID;
    logic [1:0] reg_BURST;
    logic [`AXI_LEN_BITS  -1:0] reg_LEN;
    logic [`AXI_SIZE_BITS -1:0] reg_SIZE;
    always_ff @(posedge clk or negedge rst) begin
        if (~rst) begin
            reg_ADDR    <= `AXI_ADDR_BITS'b0;
            reg_ID      <= `AXI_IDS_BITS'b0;
            reg_BURST   <= 2'b0;
            reg_LEN     <= `AXI_LEN_BITS'b0;
            reg_SIZE    <= `AXI_SIZE_BITS'b0;
        end
        else begin
            if(AR_done) begin
                reg_ID      <= S4AR.S_ARID;
                reg_ADDR    <= S4AR.ARADDR;
                reg_LEN     <= S4AR.ARLEN;
                reg_SIZE    <= S4AR.ARSIZE;
                reg_BURST   <= S4AR.ARBURST;
            end
            else if(AW_done) begin
                reg_ID      <= S4AW.S_AWID;
                reg_ADDR    <= S4AW.AWADDR;
                reg_LEN     <= S4AW.AWLEN;
                reg_SIZE    <= S4AW.AWSIZE;
                reg_BURST   <= S4AW.AWBURST;
            end
        end
    end

    always_ff @(posedge clk or negedge rst) begin
        if(~rst) begin
            delay_cnt <= 3'b0;
        end else begin
            case (slave_state)
                S_init:
                    delay_cnt <= 3'b0;
                default : /* default */
                    delay_cnt <= (delay_done)? 3'b0:delay_cnt + 3'b1;
            endcase
        end
    end

    logic [`AXI_LEN_BITS-1:0] read_cnt;
    always_ff @(posedge clk,negedge rst) begin
        if(~rst) begin
            read_cnt <= `AXI_LEN_BITS'b0;
        end
        else begin
            case (slave_state)
                S_read: read_cnt <= R_done? read_cnt+`AXI_LEN_BITS'b1:read_cnt;
                default: read_cnt <= `AXI_LEN_BITS'b0;
            endcase
        end
    end

    logic [`DATA_BITS-1:0] reg_WDATA;
    always_ff @(posedge clk,negedge rst) begin
        if(~rst) reg_WDATA <= `DATA_BITS'b0;
        else reg_WDATA <= (slave_state == S_act)? S4W.WDATA: reg_WDATA;
    end

    //all active low
    always_comb begin
        case (slave_state)
            S_init: begin
                DRAM_RASn <= 1'b1;
                DRAM_CASn <= 1'b1;
                DRAM_WEn <= 4'b1111;
            end
            S_act: begin
                DRAM_RASn <= (delay_cnt == 3'b0)?1'b0:1'b1;
                DRAM_CASn <= 1'b1;
                DRAM_WEn <= 4'b1111;
            end
            S_read: begin
                DRAM_RASn <= 1'b1;
                DRAM_CASn <= (delay_cnt == 3'b0)?1'b0:1'b1;
                DRAM_WEn <= 4'b1111;
            end
            S_write: begin
                DRAM_RASn <= 1'b1;
                DRAM_CASn <= (delay_cnt == 3'b0)?1'b0:1'b1;
                DRAM_WEn <= (delay_cnt == 3'b0)?S4W.WSTRB:4'b1111;
            end 
            default: begin
                DRAM_RASn <= (delay_cnt == 3'b0)? 1'b0:1'b1;
                DRAM_CASn <= 1'b1;
                DRAM_WEn <= (delay_cnt == 3'b0)?4'b0:4'b1111;
            end 
        endcase
    end

    always_comb begin
        case(slave_state) 
            S_init: begin
                DRAM_A      <= reg_ADDR[22:12];
                DRAM_D      <= `DATA_BITS'h0;
                DRAM_CSn    <= 1'b1;
            end
            S_act: begin
                DRAM_A      <= reg_ADDR[22:12];
                DRAM_D      <= S4W.WDATA;
                DRAM_CSn    <= 1'b0;
            end
            S_read: begin
                DRAM_A      <= reg_ADDR[11:2] + read_cnt[1:0];
                DRAM_D      <= S4W.WDATA;
                DRAM_CSn    <= 1'b0;
            end
            S_write: begin
                DRAM_A      <= reg_ADDR[11:2];
                DRAM_D      <= reg_WDATA;
                DRAM_CSn    <= 1'b0;
            end
            default: begin
                DRAM_A      <= reg_ADDR[22:12];
                DRAM_D      <= `DATA_BITS'h0;
                DRAM_CSn    <= 1'b0;
            end
        endcase
    end
    always_comb begin
        case (slave_state)
            S_init: begin
                S4AR.ARREADY <= ~S4AW.AWVALID;
                S4AW.AWREADY <= 1'b1;
            end
            default: begin
                S4AR.ARREADY <= 1'b0;
                S4AW.AWREADY <= 1'b0;
            end
        endcase
    end

    always_comb begin
        case(slave_state)
            S_write: S4W.WREADY <= 1;
            default: S4W.WREADY <= 0;
        endcase
    end

    always_comb begin
        case(slave_state)
            S_read: begin
                S4R.RVALID <= DRAM_valid;
                S4B.BVALID <= 1'b0; 
            end
            S_pre: begin
                S4R.RVALID <= 1'b0;
                S4B.BVALID <= (delay_cnt == 3'b0)? 1'b1: 1'b0;
            end
            default: begin
                S4R.RVALID <= 1'b0;
                S4B.BVALID <= 1'b0;
            end
        endcase
    end
    logic [`DATA_BITS -1:0] reg_RDATA;
    always_ff @(posedge clk or negedge rst) begin
        if(~rst) begin
            reg_RDATA <= `DATA_BITS'b0;
        end else begin
            reg_RDATA <= DRAM_valid? DRAM_Q:reg_RDATA;
        end
    end

    assign S4R.S_RID   = reg_ID;
    assign S4R.RDATA = DRAM_valid? DRAM_Q : reg_RDATA;
    assign S4R.RRESP = `AXI_RESP_OKAY;

    assign S4R.RLAST = (read_cnt == reg_LEN);
    assign S4B.S_BID   = reg_ID;
    assign S4B.BRESP = `AXI_RESP_OKAY;
endmodule