`include "def.svh"
module MEM(
    input clk,
    input rst,
    input MEMWB_RegWrite,
	input csrrst,
    EXEMEM_inter.EXEMEMi EXEMEMi,   // input EXE_rdsrc,
                                    // input EXE_MemRead,
                                    // input EXE_MemWrite,
                                    // input EXE_MemtoReg,
                                    // input EXE_RegWrite,
                                    // input [31:0] EXE_ALUout,
                                    // input [31:0] EXE_PCtoReg,
                                    // input [31:0] EXE_rs2data,
                                    // input [4:0] EXE_rdaddr,
                                    // input [2:0] EXE_Funct3,

    MEMWB_inter.MEMWBo MEMWBo,      // output logic [31:0] MEM_rddata,
                                    // output logic [31:0] MEM_dout,
                                    // output logic [4:0] MEM_rdaddr,
                                    // output logic MEM_MemtoReg,
                                    // output logic MEM_RegWrite,
    output logic [31:0] Forward_Memrddata,

    //DM
    input [31:0] DM_dataout,
    output logic MEM_CS,
    output logic [2:0] MEM_WEB,
    output logic [31:0] MEM_din

);

assign MEM_CS = EXEMEMi.EXE_MemRead || EXEMEMi.EXE_MemWrite;    //need to used the DM
assign Forward_Memrddata = (EXEMEMi.EXE_rdsrc == 1'b1)?EXEMEMi.EXE_PCtoReg:EXEMEMi.EXE_ALUout;  //Forward for EXE to use

// always_comb begin
//     MEM_WEB = 4'b1111;
//     if (EXEMEMi.EXE_MemWrite) begin
//         // MEM_WEB = 4'b0000;
//         case (EXEMEMi.EXE_Funct3)
//             3'b000: MEM_WEB[EXEMEMi.EXE_ALUout[1:0]] = 1'b0;    //Sbyte
//             3'b001: MEM_WEB[{EXEMEMi.EXE_ALUout[1],1'b0}+:2] = 2'b00;   //Shalf
//             default: MEM_WEB = 4'b0000;
//         endcase
//     end
// end
always_comb begin 
    case(EXEMEMi.EXE_Funct3)
        3'b010: // LW
            MEM_WEB = `CACHE_WORD;
        3'b000: // LB
            MEM_WEB = `CACHE_BYTE;
        3'b001: // LH
            MEM_WEB = `CACHE_HWORD;
        3'b100: // LBU
            MEM_WEB = `CACHE_BYTE_U;
        3'b101: // LHU
            MEM_WEB = `CACHE_HWORD_U;
        default:
            MEM_WEB = `CACHE_WORD;
    endcase
end
always_comb begin
    // MEM_din = EXE_rs2data;
    MEM_din = 32'b0;
    case (EXEMEMi.EXE_Funct3)
        3'b000: MEM_din[{EXEMEMi.EXE_ALUout[1:0], 3'b0}+:8] = EXEMEMi.EXE_rs2data[7:0];    //Sbyte
        3'b001: MEM_din[{EXEMEMi.EXE_ALUout[1], 4'b0}+:16] = EXEMEMi.EXE_rs2data[15:0];   //Shalf
        default: MEM_din = EXEMEMi.EXE_rs2data;
    endcase
end
logic [31:0]mem_wire;
always_comb begin
    case (EXEMEMi.EXE_Funct3)
                3'b000: begin
                    //MEMWBo.MEM_dout <= {{24{DM_dataout[7]}}, DM_dataout[7:0]};
                    mem_wire[7:0] = DM_dataout[{EXEMEMi.EXE_ALUout[1:0], 3'b0}+:8];
                    mem_wire[31:8] = {24{mem_wire[7]}};
                end
                3'b001: begin
                    //MEMWBo.MEM_dout <= {{16{DM_dataout[7]}}, DM_dataout[15:0]};
                    mem_wire[15:0] = DM_dataout[{EXEMEMi.EXE_ALUout[1], 4'b0}+:16];
                    mem_wire[31:16] = {16{mem_wire[15]}};
                end
                3'b010: begin
                    mem_wire = DM_dataout;
                end
                3'b100: begin
                    //MEMWBo.MEM_dout <= {24'b0, DM_dataout[7:0]};
                    mem_wire[7:0] = DM_dataout[{EXEMEMi.EXE_ALUout[1:0], 3'b0}+:8];
                    mem_wire[31:8] = 24'b0;
                end
                3'b101: begin
                    //MEMWBo.MEM_dout <= {16'b0, DM_dataout[15:0]};
                    mem_wire[15:0] = DM_dataout[{EXEMEMi.EXE_ALUout[1], 4'b0}+:16];
                    mem_wire[31:16] = 16'b0;
                end
                default: mem_wire = 32'b0;
    endcase
end
always_ff @(posedge clk or posedge rst) begin
    if (rst | csrrst) begin
        MEMWBo.MEM_rddata <= 32'b0;
        MEMWBo.MEM_dout <= 32'b0;
        MEMWBo.MEM_rdaddr <= 5'b0;
        MEMWBo.MEM_MemtoReg <= 1'b0;
        MEMWBo.MEM_RegWrite <= 1'b0;
    end
    else begin
        if (MEMWB_RegWrite) begin
            MEMWBo.MEM_rdaddr <= EXEMEMi.EXE_rdaddr;
            MEMWBo.MEM_MemtoReg <= EXEMEMi.EXE_MemtoReg;
            MEMWBo.MEM_RegWrite <= EXEMEMi.EXE_RegWrite;

            if (EXEMEMi.EXE_rdsrc) MEMWBo.MEM_rddata <= EXEMEMi.EXE_PCtoReg;
            else  MEMWBo.MEM_rddata <= EXEMEMi.EXE_ALUout;

            MEMWBo.MEM_dout <= mem_wire; 
            
        end

    end
end
endmodule