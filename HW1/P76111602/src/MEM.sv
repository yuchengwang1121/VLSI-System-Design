module MEM(
    input clk,
    input rst,
    input EXE_rdsrc,
    input EXE_MemRead,
    input EXE_MemWrite,
    input EXE_MemtoReg,
    input EXE_RegWrite,
    input [31:0] EXE_ALUout,
    input [31:0] EXE_PCtoReg,
    input [31:0] EXE_rs2data,
    input [4:0] EXE_rdaddr,
    input [2:0] EXE_Funct3,

    output logic [31:0] MEM_rddata,
    output logic [31:0] MEM_dout,
    output logic [4:0] MEM_rdaddr,
    output logic MEM_MemtoReg,
    output logic MEM_RegWrite,
    output logic [31:0] Forward_Memrddata,

    //DM
    input [31:0] DM_dataout,
    output logic MEM_CS,
    output logic [3:0] MEM_WEB,
    output logic [31:0] MEM_din

);

assign MEM_CS = EXE_MemRead || EXE_MemWrite;    //need to used the DM
assign Forward_Memrddata = (EXE_rdsrc == 1'b1)?EXE_PCtoReg:EXE_ALUout;  //Forward for EXE to use

always_comb begin
    MEM_WEB = 4'b1111;
    if (EXE_MemWrite) begin
        // MEM_WEB = 4'b0000;
        case (EXE_Funct3)
            3'b000: MEM_WEB[EXE_ALUout[1:0]] = 1'b0;    //Sbyte
            3'b001: MEM_WEB[{EXE_ALUout[1],1'b0}+:2] = 2'b00;   //Shalf
            default: MEM_WEB = 4'b0000;
        endcase
    end
end

always_comb begin
    // MEM_din = EXE_rs2data;
    MEM_din = 32'b0;
    case (EXE_Funct3)
        3'b000: MEM_din[{EXE_ALUout[1:0], 3'b0}+:8] = EXE_rs2data[7:0];    //Sbyte
        3'b001: MEM_din[{EXE_ALUout[1], 4'b0}+:16] = EXE_rs2data[15:0];   //Shalf
        default: MEM_din = EXE_rs2data;
    endcase
end

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        MEM_rddata <= 32'b0;
        MEM_dout <= 32'b0;
        MEM_rdaddr <= 5'b0;
        MEM_MemtoReg <= 1'b0;
        MEM_RegWrite <= 1'b0;
    end
    else begin
        MEM_rdaddr <= EXE_rdaddr;
        MEM_MemtoReg <= EXE_MemtoReg;
        MEM_RegWrite <= EXE_RegWrite;

        if (EXE_rdsrc) MEM_rddata <= EXE_PCtoReg;
        else  MEM_rddata <= EXE_ALUout;

        case (EXE_Funct3)
            3'b000: MEM_dout <= {{24{DM_dataout[7]}}, DM_dataout[7:0]};
            3'b001: MEM_dout <= {{16{DM_dataout[7]}}, DM_dataout[15:0]};
            3'b010: MEM_dout <= DM_dataout;
            3'b100: MEM_dout <= {24'b0, DM_dataout[7:0]};
            3'b101: MEM_dout <= {16'b0, DM_dataout[15:0]};
            default: begin
                MEM_dout <= 32'b0;
            end
        endcase
        // MEM_dout <= DM_dataout;        //only SW, may need to modify after?

    end
end
endmodule