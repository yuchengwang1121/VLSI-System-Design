`include "AXI_define.svh"
module ROM_wrapper (
    input clk,
    input rst,
    inter_RA.ROM S0AR,
    inter_RD.ROM S0R,
    output logic ROM_enable,
    output logic ROM_read,
    output logic [11:0] ROM_address,
    input [`AXI_DATA_BITS-1:0] ROM_out
);
    logic [13:0]A;
    logic [`AXI_DATA_BITS-1:0] DO;
    logic CS;
    logic OE;
    //ROM
    assign ROM_enable = CS;
    assign ROM_read = OE;
    assign ROM_address = A[11:0];
    assign DO = ROM_out;

    logic AR_done,R_done,R_done_last;
    assign AR_done = S0AR.ARVALID & S0AR.ARREADY;
    assign R_done = S0R.RVALID & S0R.RREADY;
    assign R_done_last = S0R.RLAST & R_done;

    logic slave_status, next_status;
    parameter S_address    = 1'b0,
              S_read_data  = 1'b1;

    always_ff @(posedge clk) begin
        if(rst)
            slave_status <= S_address;
        else
            slave_status <= next_status;
    end

    always_comb begin
        case (slave_status)
            S_address: begin
                if(AR_done) next_status <= S_read_data;
                else next_status <= S_address;
            end 
            S_read_data: begin
                if(R_done_last & AR_done) next_status <= S_read_data; //not ready to write
                else if(R_done_last) next_status <= S_address;
                else next_status <= S_read_data;
            end
        endcase
    end

    always_comb begin
        case (slave_status)
            S_address:
                S0AR.ARREADY = 1'b1;
            S_read_data:
                S0AR.ARREADY = 1'b0;
            default:/* default */
                S0AR.ARREADY = 1'b0;
        endcase
    end

    assign S0R.RVALID = (slave_status == S_read_data)? 1'b1:1'b0;
    assign S0R.RRESP = `AXI_RESP_OKAY;

    logic [`AXI_IDS_BITS-1:0] reg_ARID;
    always_ff @(posedge clk) begin
        if(rst) begin
            reg_ARID <= `AXI_IDS_BITS'b0;
        end else begin
            reg_ARID <= (AR_done)? S0AR.S_ARID:reg_ARID;
        end
    end
    assign S0R.S_RID = reg_ARID;

    logic [`AXI_LEN_BITS-1:0] reg_ARLEN;
    always_ff @(posedge clk) begin
        if(rst) reg_ARLEN <= `AXI_LEN_BITS'b0;
        else reg_ARLEN <= (AR_done)?S0AR.ARLEN:reg_ARLEN;
    end

    logic [`AXI_LEN_BITS-1:0] cnt;
    always_ff @(posedge clk) begin
        if(rst) cnt <= `AXI_LEN_BITS'b0;
        else if(S_read_data) cnt <= (R_done_last)?`AXI_LEN_BITS'b0:((R_done)?cnt+`AXI_LEN_BITS'b1:cnt);     
    end

    assign S0R.RLAST = (reg_ARLEN == cnt);
    assign S0R.RDATA = DO;

    always_comb begin
        case (slave_status)
            S_address:
                OE = AR_done;
            S_read_data:
                OE = 1'b1;
            default : /* default */
                OE = 1'b0;
        endcase
    end

    always_comb begin
        case (slave_status)
            S_address: CS =  S0AR.ARVALID;
            default: CS = 1'b1;
        endcase
    end

    logic [13:0]reg_RADDR;
    logic [1:0]A_offset;
    assign A_offset = (cnt[1:0] == 2'b0)? ((R_done)? cnt[1:0] + 2'b1: cnt[1:0]):cnt[1:0] + 2'b1;
    
    always_ff @(posedge clk) begin
        if (rst) begin
            reg_RADDR  <= 14'b0;
        end
        else begin
            reg_RADDR  <= AR_done? S0AR.ARADDR[15:2] : reg_RADDR;
        end
    end
   always_comb begin
        case(slave_status)
            S_address   :
                A = S0AR.ARADDR[15:2];
            S_read_data :
                A = reg_RADDR + A_offset;
            default : A = 14'b0;
        endcase
    end
endmodule
