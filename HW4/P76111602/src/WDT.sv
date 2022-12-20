module WDT (
    input clk,
    input rst,
    input clk2,
    input rst2,
    input WDEN,
    input WDLIVE,
    input [31:0] WTOCNT,
    output logic WTO
);
    logic [31:0]count;
    logic wden,wdlive;
    logic [31:0]wtocnt;
    always_ff@(posedge clk2, posedge rst2) begin
        if(~rst2) begin
            wden <= 1'b0;
            wdlive <= 1'b0;
            wtocnt <= 32'b0;
        end
        else begin
            wden <= WDEN;
            wdlive <= WDLIVE;
            wtocnt <= WTOCNT;
        end
        
    end
    always_ff @(posedge clk2, posedge rst2) begin
        if(~rst2) begin
            count <= 32'b0;
            WTO <= 0;
        end
        else if(wden == 1) begin
            if(count < wtocnt) begin
                if(wdlive == 1) count <= 32'b0;
                else count <= count +32'b1;
                WTO <= 0; 
            end
            else begin 
                count <= 32'b0;
                WTO <= 1;
            end
        end
    end
endmodule