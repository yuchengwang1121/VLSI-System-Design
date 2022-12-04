module Csr(
    input clk,rst,

    input [4:0] ALUCtrl,
    input [1:0] state,
    input EM_Regwrite,

    input [31:0] Imm,
    input [31:0] rs1,
    input [4:0] rs1addr,

    input [11:0] csraddr,
    input csrweb,

    output logic [31:0] csrrdata
);

parameter [4:0] ALU_CsrRW = 5'b10010;
parameter [4:0] ALU_CsrRS = 5'b10011;
parameter [4:0] ALU_CsrRC = 5'b10100;
parameter [4:0] ALU_CsrRWI = 5'b10101;
parameter [4:0] ALU_CsrRSI = 5'b10110;
parameter [4:0] ALU_CsrRCI = 5'b10111;

parameter [1:0] Branch = 2'b01,
                Loaduse = 2'b10;

logic [31:0] csr, csr_in;
logic [31:0] rdcycle, rdcycleh;
logic [31:0] rdinstret, rdinstreth;

always_ff @(posedge clk or posedge rst) begin       //count the cycle and the instruction
    if (rst) begin
        {rdcycleh, rdcycle} <= 64'b0;
        {rdinstreth, rdinstret} <= 64'b0;
    end else begin
        if (EM_Regwrite) begin
            //cycle
            {rdcycleh, rdcycle} <= {rdcycleh, rdcycle} + 64'b1;
            //instre
            if (rdcycle >1) begin
                if (state == Branch) {rdinstreth, rdinstret} <= {rdinstreth, rdinstret} - 64'b1;
                else if (state == Loaduse) {rdinstreth, rdinstret} <= {rdinstreth, rdinstret};
                else {rdinstreth, rdinstret} <= {rdinstreth, rdinstret} + 64'b1;
            end
        end
    end
end

always_comb begin
    csr_in = (ALUCtrl[2:0] > 3'b100)? Imm : rs1; //if is XXXI, then input is uimm, else rs1 
end

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        csr <= 32'b0;
    end 
    else begin
        case (ALUCtrl)
        ALU_CsrRW, ALU_CsrRWI : begin   //(csr<=rs1)
            csr<=rs1;
        end
        ALU_CsrRS, ALU_CsrRSI : begin   //(csr = csr|rs1)
            csr <= csr|rs1;
        end
        default: begin  // ALU_CsrRC, ALU_CsrRCI; (csr = csr|(~rs1))
            csr <= csr|(~rs1);
        end
        endcase
    end
end


always_comb begin       //give the value out to EXE_ALUout (rd<= csr)
    case (csraddr)
        // 12'h300: csrrdata = csr;
        12'hc00: csrrdata = rdcycle;    //User mode
        12'hc02: csrrdata = rdinstret;
        12'hc80: csrrdata = rdcycleh;
        12'hc82: csrrdata = rdinstreth;
        default: csrrdata = 32'b0;
    endcase
end
endmodule