`include "../../include/AXI_define.svh"
`include "Interface.sv"
module DefaultSlave(
    input clk,
    input rst,
    inter_RA.SD SD_RA,
    inter_RD.SD SD_RD,
    inter_WA.SD SD_WA,
    inter_WD.SD SD_WD,
    inter_WR.SD SD_WR
);

parameter [1:0] S_addr = 2'b00,
                S_dataread = 2'b01,
                S_datawrite = 2'b10,
                S_resp = 2'b11;

logic [1:0] s_slave, s_next; //states
logic temp_ARLEN;

always_ff @(posedge clk or negedge rst) begin       //FSM
    if (~rst) begin
        s_slave <= S_addr;
    end
    else begin
        s_slave <= s_next;
    end
end

always_comb begin
    case (s_slave)
        S_addr:begin
            if(SD_RA.ARREADY & SD_RA.ARVALID) s_next = S_dataread;
            else if(SD_WA.AWREADY & SD_WA.AWVALID) s_next = S_datawrite;
            else s_next = S_addr;
        end
        S_dataread:begin
            if(SD_RD.RVALID & SD_RD.RREADY) s_next = S_addr;
            else s_next = S_dataread;
        end
        S_datawrite:begin
            if(SD_WD.WVALID & SD_WD.WREADY & SD_WD.WLAST) s_next = S_resp;
            else s_next = S_datawrite;
        end
        S_resp:begin
            if(SD_WR.BVALID & SD_WR.BREADY) s_next = S_addr;
            else s_next = S_resp;
        end
    endcase
end

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        temp_ARLEN <= 1'b0;
    end else begin
        temp_ARLEN <= (SD_RA.ARREADY & SD_RA.ARVALID)? SD_RA.ARLEN:temp_ARLEN;
    end
end

//Read Addr & Read data
assign SD_RA.ARREADY = (s_slave == S_addr)?1'b1:1'b0;

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        SD_RD.S_RID <= 8'b0;
    end else begin
        SD_RD.S_RID <= (SD_RA.ARREADY & SD_RA.ARVALID)?SD_RA.S_ARID:SD_RD.S_RID;
    end
end

assign SD_RD.RDATA = `AXI_DATA_BITS'b0;
assign SD_RD.RRESP = `AXI_RESP_DECERR;

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        SD_RD.RLAST <= 1'b1;
    end else begin
        if (SD_RA.ARREADY & SD_RA.ARVALID) begin
            if (SD_RA.ARLEN == 4'b1) SD_RD.RLAST <= 1'b0;
            else SD_RD.RLAST <= 1'b1;
        end
        else if(SD_RD.RVALID & SD_RD.RREADY) begin
            if ((temp_ARLEN == 4'b1) & (SD_RD.RLAST == 1'b0)) begin
                SD_RD.RLAST <= 1'b1;
            end
        end
    end
end
assign SD_RD.RVALID = (s_slave == S_dataread)?1'b1:1'b0;

//Write Addr
assign SD_WA.AWREADY = (SD_WA.AWVALID & (s_slave == S_addr))?1'b1:1'b0;

always_ff @(posedge clk or negedge rst) begin
    if (~rst) begin
        SD_WR.S_BID <= 8'b0;
    end else begin
        SD_WR.S_BID <= (SD_WA.AWREADY & SD_WA.AWVALID)?SD_WA.S_AWID:SD_WR.S_BID;
    end
end

assign SD_WD.WREADY = (SD_WD.WVALID && (s_slave == S_datawrite));
assign SD_WR.BRESP = `AXI_RESP_DECERR;
assign SD_WR.BVALID = (s_slave == S_resp)?1'b1:1'b0;

endmodule