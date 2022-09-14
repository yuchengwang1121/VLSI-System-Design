module Src(
    input clk,rst,

    input [4:0] ALUCtrl,
    input EXEMEM_RegWrite,

    // input [2:0] Funct3,      //already seperate at ALUCtrl
    input [6:0] Funct7,

    input [31:0] Imm,
    input [31:0] rs1,
    input [4:0] rs1addr,

    input [11:0] Csraddr,
    input Csrweb,

    output logic [31:0] Csrrdata,
);

parameter [4:0] ALU_CsrRW = 5'b10010;
parameter [4:0] ALU_CsrR = 5'b10011;
parameter [4:0] ALU_CsrRC = 5'b10100;
parameter [4:0] ALU_CsrRWI = 5'b10101;
parameter [4:0] ALU_CsrRSI = 5'b10110;
parameter [4:0] ALU_CsrRCI = 5'b10111;

logic [31:0] csr;
logic [31:0] rdcycle;
logic [31:0] rdinstret;
logic [31:0] rdcycleh;
logic [31:0] rdinstreth;

always_ff @(posedge clk or posedge rst) begin       //count the cycle and the instruction
    if (rst) begin
        {rdcycleh, rdcycle} <= 64'b0;
        {rdinstreth, rdinstret} <= 64'b0;
    end else begin
        {rdcycleh, rdcycle} <= {rdcycleh, rdcycle} + 64'b1;
        {rdinstreth, rdinstret} <= {rdinstreth, rdinstret} + 64'b1;
    end
end
    

always_ff @(posedge clk or posedge rst) begin           //added
    if (rst) begin
        mstatus    <= 32'b0;
    end 
    else begin
        case (ALUCtrl)
        ALU_CsrRW : begin
            if(rd != 0) ALUout = csr;
            csr = Srs1;
        end
        ALU_CsrR : begin                    //need modify
            if(rd != 0) ALUout = csr;
            if (rs1!=0 && csrweb) begin
                csr = csr|Srs1;
            end
        end
        ALU_CsrRC : begin 
            if(rd != 0) ALUout = csr;
            if (rs1!=0 && csrweb) begin
                csr = csr&(~Srs1);
            end
        end
        //rs1 uimm[4:0]
        ALU_CsrRWI : begin 
            if(rd != 0) ALUout = csr;
            csr = rs1;
        end
        ALU_CsrRSI : begin 
            if(rd != 0) ALUout = csr;
            if (rs1!=0 && csrweb) begin
                csr = csr|rs1;
            end
        end
        default: begin      // ALU_CsrRCI 
            if(rd != 0) ALUout = rs2;
            if (rs1!=0 && csrweb) begin
                csr = csr&(~rs1);
            end
        end
        endcase
    end
end


always_comb begin       //give the value out to write back
    case (csraddr)
        12'h300: Csrrdata = status;
        12'hb00: Csrrdata = rdcycle;
        12'hb02: Csrrdata = rdinstret;
        12'hb80: Csrrdata = rdcycleh;
        12'hb82: Csrrdata = rdinstreth;
        default: Csrrdata = 32'b0;
    endcase
end
endmodule