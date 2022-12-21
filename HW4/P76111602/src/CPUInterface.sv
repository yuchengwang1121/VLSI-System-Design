//IF's interface
interface IFID_inter;
    logic [31:0] IF_pcout, IF_instrout;

    modport IFIDi(input IF_pcout, input IF_instrout);
    modport IFIDo(output IF_pcout, output IF_instrout);
endinterface
interface IFEXE_inter;
    logic [31:0] PC_imm, PC_jr;
    logic [31:0] csrret_pc, csrISR_pc;
    modport IFEXEi(input PC_imm, input PC_jr, input csrISR_pc, input csrret_pc);
    modport IFEXEo(output PC_imm, output PC_jr, output csrISR_pc, output csrret_pc);
endinterface
interface IFHC_inter;
    logic InstrFlush,IFID_RegWrite,PCWrite;

    modport IFHCi(input InstrFlush,input IFID_RegWrite,input PCWrite);
    modport IFHCo(output InstrFlush,output IFID_RegWrite,output PCWrite);
endinterface

//ID's interface
interface IDEXE_inter;
    logic [31:0] ID_pcout, ID_rs1data, ID_rs2data, ID_imm;
    logic [11:0] ID_csraddr;
    logic [6:0] ID_Funct7;
    logic [4:0] ID_rdaddr, rs1addr, rs2addr;
    logic [2:0] ID_Funct3, ID_ALUOP;
    logic ID_PCtoRegSrc, ID_ALUSrc, ID_rdsrc, ID_MemRead, ID_MemWrite, ID_MemtoReg, ID_RegWrite,ID_csrweb;
        
    modport IDEXEi( input ID_pcout,input ID_rs1data,input ID_rs2data,input ID_imm,
                    input ID_Funct3,input ID_Funct7,input ID_rdaddr,input rs1addr,
                    input rs2addr,input ID_ALUOP,input ID_PCtoRegSrc,input ID_ALUSrc,
                    input ID_rdsrc,input ID_MemRead,input ID_MemWrite,input ID_MemtoReg,
                    input ID_RegWrite,input ID_csraddr,input ID_csrweb);
    modport IDEXEo( output ID_pcout,output ID_rs1data,output ID_rs2data,output ID_imm,
                    output ID_Funct3,output ID_Funct7,output ID_rdaddr,output rs1addr,
                    output rs2addr,output ID_ALUOP,output ID_PCtoRegSrc,output ID_ALUSrc,
                    output ID_rdsrc,output ID_MemRead,output ID_MemWrite,output ID_MemtoReg,
                    output ID_RegWrite,output ID_csraddr,output ID_csrweb);
endinterface
interface EXEMEM_inter;
    logic [31:0] EXE_ALUout,EXE_PCtoReg,EXE_rs2data;
    logic [4:0] EXE_rdaddr;
    logic [2:0] EXE_Funct3;
    logic EXE_rdsrc,EXE_MemRead, EXE_MemWrite, EXE_MemtoReg, EXE_RegWrite; 

    modport EXEMEMi(input EXE_ALUout,input EXE_PCtoReg,input EXE_rs2data,input EXE_rdaddr,
                    input EXE_Funct3,input EXE_rdsrc,input EXE_MemRead,input EXE_MemWrite,
                    input EXE_MemtoReg,input EXE_RegWrite);
    modport EXEMEMo(output EXE_ALUout,output EXE_PCtoReg,output EXE_rs2data,output EXE_rdaddr,
                    output EXE_Funct3,output EXE_rdsrc,output EXE_MemRead,output EXE_MemWrite,
                    output EXE_MemtoReg,output EXE_RegWrite);
endinterface
interface MEMWB_inter;
    logic [31:0] MEM_dout,MEM_rddata;
    logic [4:0] MEM_rdaddr;
    logic MEM_MemtoReg,MEM_RegWrite;

    modport MEMWBi( input MEM_dout,input MEM_rddata,input MEM_rdaddr,
                    input MEM_MemtoReg,input MEM_RegWrite);
    modport MEMWBo( output MEM_dout,output MEM_rddata,output MEM_rdaddr,
                    output MEM_MemtoReg,output MEM_RegWrite); 
endinterface