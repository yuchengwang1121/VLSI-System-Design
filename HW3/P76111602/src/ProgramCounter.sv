module ProgramCounter(
    input clk,
    input rst,
    input PCWrite,
    input [31:0] PC_in,
    output logic [31:0] PC_out
);

    always_ff @(posedge clk or posedge rst) begin       //sequnetial
        if (rst) begin
            PC_out <= 32'b0;
        end
        else begin
            if (PCWrite) begin      //if PCWrite ==1 ,give pc_out the value of PC
                PC_out <= PC_in;
            end
        end
    end
endmodule