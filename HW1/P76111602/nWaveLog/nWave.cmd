wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/YuChengWang/VLSI-System-Design/HW1/P76111602/build/top.fsdb}
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 2058 412 1280 649
wvSetCursor -win $_nWave1 528607.564436
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IF"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/EXE"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs2data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs21\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value 128
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 1180831.113700 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IF"
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
{/top_tb/TOP/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/PC_out\[31:0\]} \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFID"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IF/PC_out\[31:0\]} \
{/top_tb/TOP/Wire_IFID/IF_instrout\[31:0\]} \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_instrout\[31:0\]} \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetCursor -win $_nWave1 13172073.366250 -snap {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 13232384.883696 -snap {("G4" 0)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvZoom -win $_nWave1 13237795.839069 13238208.539055
wvSelectGroup -win $_nWave1 {G4}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 13242845.865508 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEo/ID_ALUOP\[2:0\]} \
{/top_tb/TOP/Wire_IFID/IF_instrout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEo/ID_ALUOP\[2:0\]} \
{/top_tb/TOP/Wire_IFID/IF_instrout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/EXE/Forward_rs1src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_rs1data\[31:0\]} \
{/top_tb/TOP/EXE/ALU_rs1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 13245606.840884 -snap {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvSetCursor -win $_nWave1 13237323.914755 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 13238856.016698 -snap {("G3" 2)}
wvSetCursor -win $_nWave1 13240611.550174 -snap {("G4" 0)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectGroup -win $_nWave1 {G3}
wvSetCursor -win $_nWave1 13239781.661622 -snap {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEo"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEo/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/Wire_IDEXE/IDEXEo/ID_MemRead} \
{/top_tb/TOP/Wire_IDEXE/IDEXEo/ID_rdaddr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/EXE"
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/HC"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
{/top_tb/TOP/HC/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectGroup -win $_nWave1 {G4}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
{/top_tb/TOP/HC/IDFlush} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/HC/IDFlush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/HC/IDFlush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectGroup -win $_nWave1 {G5}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/HC"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFHC"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/HC/IDFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/InstrFlush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/HC/IDFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/InstrFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/IFID_RegWrite} \
{/top_tb/TOP/Wire_IFHC/IFHCo/PCWrite} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/ID_MemRead} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/ID_rdaddr\[4:0\]} \
{/top_tb/TOP/HC/rs1addr\[4:0\]} \
{/top_tb/TOP/HC/rs2addr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/HC/IDFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/InstrFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/IFID_RegWrite} \
{/top_tb/TOP/Wire_IFHC/IFHCo/PCWrite} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvGetSignalClose -win $_nWave1
wvSelectGroup -win $_nWave1 {G5}
wvSelectGroup -win $_nWave1 {G5}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 4 )} 
wvSetCursor -win $_nWave1 13599051.587586 -snap {("G5" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 )} 
wvSetCursor -win $_nWave1 13592157.128843 -snap {("G5" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 4 )} 
wvSelectGroup -win $_nWave1 {G3}
wvSetCursor -win $_nWave1 14199627.534337 -snap {("G5" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/HC"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFHC"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFHC/IFHCo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFHC/IFHCo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/HC"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/BranchCtrl\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/HC/IDFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/InstrFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/IFID_RegWrite} \
{/top_tb/TOP/Wire_IFHC/IFHCo/PCWrite} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/BranchCtrl\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/IDFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/InstrFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/IFID_RegWrite} \
{/top_tb/TOP/Wire_IFHC/IFHCo/PCWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/HC/BranchCtrl\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/IDFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/InstrFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/IFID_RegWrite} \
{/top_tb/TOP/Wire_IFHC/IFHCo/PCWrite} \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_ALUOP\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFEXE/IFEXEi"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_ALUOP\[2:0\]} \
{/top_tb/TOP/Wire_IFEXE/IFEXEi/PC_imm\[31:0\]} \
{/top_tb/TOP/Wire_IFEXE/IFEXEi/PC_jr\[31:0\]} \
{/top_tb/TOP/HC/BranchCtrl\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/IDFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/InstrFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/IFID_RegWrite} \
{/top_tb/TOP/Wire_IFHC/IFHCo/PCWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetCursor -win $_nWave1 14187689.906697 -snap {("G5" 0)}
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/HC"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IDEXE/IDEXEo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFHC"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFHC/IFHCo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/Wire_IFHC/IFHCo"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IF"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/Wire_IDEXE/IDEXEi/ID_ALUOP\[2:0\]} \
{/top_tb/TOP/HC/BranchCtrl\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/HC/IDFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/InstrFlush} \
{/top_tb/TOP/Wire_IFHC/IFHCo/IFID_RegWrite} \
{/top_tb/TOP/Wire_IFHC/IFHCo/PCWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/Wire_IFEXE/IFEXEi/PC_imm\[31:0\]} \
{/top_tb/TOP/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvExit
