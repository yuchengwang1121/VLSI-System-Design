`include "AXI_define.svh"
module ROM_wrapper (
    input clk,
    input rst,
    inter_WA.ROM S0AW,
    inter_WD.ROM S0W,
    inter_WR.ROM S0B,
    inter_RA.ROM S0AR,
    inter_RD.ROM S0R,
    output logic ROM_enable,
    output logic ROM_read,
    output logic [11:0] ROM_address,
    input [`AXI_DATA_BITS-1:0] ROM_out
);
    logic [13:0]A;
    logic [`AXI_DATA_BITS-1:0] DI;
    logic [`AXI_DATA_BITS-1:0] DO;
    logic [`AXI_DATA_BITS-1:0] WEB;
    logic CS;
    logic OE;
    //ROM
    assign ROM_enable = CS;
    assign ROM_read = OE;
    assign ROM_address = A[11:0];
    assign DO = ROM_out;

    logic AR_done,R_done,AW_done,W_done,B_done;
    assign AR_done = S0AR.ARVALID & S0AR.ARREADY;
    assign R_done = S0R.RVALID & S0R.RREADY;
    assign AW_done = S0AW.AWVALID & S0AW.AWREADY;
    assign W_done = S0W.WVALID & S0W.WREADY;
    assign B_done = S0B.BVALID & S0B.BREADY;
    logic R_done_last,W_done_last;
    assign R_done_last = S0R.RLAST & R_done;
    assign W_done_last = S0W.WLAST & W_done;
    logic [1:0] slave_status, next_status;
    parameter [1:0] S_address    = 2'b00,
                    S_read_data  = 2'b01,
                    S_write_data = 2'b10,
                    S_response   = 2'b11;
    always_ff @(posedge clk, negedge rst) begin
        if(~rst)
            slave_status <= S_address;
        else
            slave_status <= next_status;
    end

    always_comb begin
        case (slave_status)
            S_address: begin
                if(AW_done & W_done) next_status <= S_response;
                else if(AW_done) next_status <= S_write_data;
                else if(AR_done) next_status <= S_read_data;
                else next_status <= S_address;
            end 
            S_read_data: begin
                if(R_done_last & AW_done) next_status <= S_write_data;
                else if(R_done_last & AR_done) next_status <= S_read_data; //not ready to write
                else if(R_done_last) next_status <= S_address;
                else next_status <= S_read_data;
            end
            S_write_data: begin
                if(W_done_last) next_status <= S_response;
                else  next_status <= S_write_data;
            end
            S_response: begin
                if(B_done & AW_done)
                    next_status <= S_write_data;
                else if(B_done & AR_done)
                    next_status <= S_read_data;
                else if(B_done)
                    next_status <= S_address;
                else
                    next_status <= S_response;
            end
        endcase
    end

    always_comb begin
        case (slave_status)
            S_address: S0AW.AWREADY <= 1'b1;
            S_read_data: S0AW.AWREADY <= R_done;
            S_write_data: S0AW.AWREADY <= 1'b0;
            S_response: S0AW.AWREADY <= B_done;
        endcase
    end

    always_comb begin
        case (slave_status)
            S_address:
                S0AR.ARREADY = ~S0AW.AWVALID;
            S_response:
                S0AR.ARREADY = 1'b0;
            S_read_data:
                S0AR.ARREADY = 1'b0;
            default:/* default */
                S0AR.ARREADY = 1'b0;
        endcase
    end
    assign S0W.WREADY = (slave_status == S_write_data)? 1'b1:1'b0;
    assign S0B.BVALID = (slave_status == S_response)? 1'b1:1'b0;
    assign S0R.RVALID = (slave_status == S_read_data)? 1'b1:1'b0;
    assign S0R.RRESP = `AXI_RESP_OKAY;
    assign S0B.BRESP = `AXI_RESP_OKAY;

    logic [`AXI_IDS_BITS-1:0] reg_ARID, reg_AWID;
    always_ff @(posedge clk or negedge rst) begin
        if(~rst) begin
            reg_ARID <= `AXI_IDS_BITS'b0;
            reg_AWID <= `AXI_IDS_BITS'b0;
        end else begin
            reg_ARID <= (AR_done)? S0AR.S_ARID:reg_ARID;
            reg_AWID <= (AW_done)? S0AW.S_AWID:reg_AWID;
        end
    end
    assign S0R.S_RID = reg_ARID;
    assign S0B.S_BID = reg_AWID;

    logic [`AXI_LEN_BITS-1:0] reg_ARLEN,reg_AWLEN;
    always_ff @(posedge clk or negedge rst) begin
        if(~rst) begin
            reg_ARLEN <= `AXI_LEN_BITS'b0;
            reg_AWLEN <= `AXI_LEN_BITS'b0;
        end
        else begin
            reg_ARLEN <= (AR_done)?S0AR.ARLEN:reg_ARLEN;
            reg_AWLEN <= (AW_done)?S0AW.AWLEN:reg_AWLEN;
        end
    end

    logic [`AXI_LEN_BITS-1:0] cnt;
    always_ff @(posedge clk or negedge rst) begin
        if(~rst) begin
            cnt <= `AXI_LEN_BITS'b0;
        end
        else begin
            case (slave_status)
                S_read_data: cnt <= (R_done_last)?`AXI_LEN_BITS'b0:((R_done)?cnt+`AXI_LEN_BITS'b1:cnt);
                S_write_data:  cnt<= (W_done_last)?`AXI_LEN_BITS'b0:((W_done)?cnt+`AXI_LEN_BITS'b1:cnt);
            endcase
        end        
    end
    assign S0R.RLAST = (reg_ARLEN == cnt);

    assign S0R.RDATA = DO;
    assign WEB = S0W.WSTRB;
    assign DI = S0W.WDATA;

    always_comb begin
        case (slave_status)
            S_address:
                OE = ~S0AW.AWVALID & AR_done;
            S_read_data:
                OE = 1'b1;
            default : /* default */
                OE = 1'b0;
        endcase
    end

    always_comb begin
        case (slave_status)
            S_address: CS =  S0AW.AWVALID | S0AR.ARVALID;
            default: CS = 1'b1;
        endcase
    end

    logic [13:0]reg_RADDR,reg_WADDR;
    logic [1:0]A_offset;
    assign A_offset = (cnt[1:0] == 2'b0)? ((R_done)? cnt[1:0] + 2'b1: cnt[1:0]):cnt[1:0] + 2'b1;
    
    always_ff @(posedge clk or negedge rst) begin
        if (~rst) begin
            reg_RADDR  <= 14'b0;
            reg_WADDR  <= 14'b0;
        end
        else begin
            reg_RADDR  <= AR_done? S0AR.ARADDR[15:2] : reg_RADDR;
            reg_WADDR  <= AW_done? S0AW.AWADDR[15:2] : reg_WADDR;
        end
    end

    always_comb begin
        case(slave_status)
            S_address   :
                A = (AW_done)? S0AW.AWADDR[15:2]:S0AR.ARADDR[15:2];
            S_read_data :
                A = reg_RADDR + A_offset;
            S_write_data:
                A = reg_WADDR;
            default:
                /*S_response*/
                A = ~B_done? reg_WADDR:(AW_done ? S0AW.AWADDR[15:2]:S0AR.ARADDR[15:2]);
        endcase
    end
endmodule