wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/YuChengWang/VLSI-System-Design/HW4/P76111602/build/top.fsdb}
wvSetCursor -win $_nWave1 4138501.213852
wvSetCursor -win $_nWave1 4568847.960526
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value 10a0f
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 122198069.028081 -snap {("G1" 1)}
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -value 00010aac
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 122477012.613767 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 122568082.854817 -snap {("G1" 1)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 122565608.030473 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/CU"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectGroup -win $_nWave1 {G2}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrrdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/rs1\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSelectSignal -win $_nWave1 {( "G2" 4 5 6 )} 
wvSetCursor -win $_nWave1 122554860.501045 -snap {("G3" 0)}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectGroup -win $_nWave1 {G3}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvMoveSelected -win $_nWave1
wvSetCursor -win $_nWave1 122561696.267652 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvExpandBus -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetPosition -win $_nWave1 {("G3" 15)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G3" 9)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectGroup -win $_nWave1 {G3}
wvSelectSignal -win $_nWave1 {( "G3" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 4 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 5 6 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 6 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetCursor -win $_nWave1 121961300.331841 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvExpandBus -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 \
           22 23 24 25 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 19)}
wvSelectSignal -win $_nWave1 {( "G3" 9 10 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 16)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSelectSignal -win $_nWave1 {( "G3" 11 12 13 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetCursor -win $_nWave1 121993152.038269 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 11)}
wvSetPosition -win $_nWave1 {("G3" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrrdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 11 )} 
wvSetPosition -win $_nWave1 {("G3" 11)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/WB"
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrrdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_rdaddr\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 12 13 )} 
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetPosition -win $_nWave1 {("G3" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrrdata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_rdaddr\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 14 )} 
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSelectSignal -win $_nWave1 {( "G3" 12 13 14 )} 
wvSetPosition -win $_nWave1 {("G3" 12)}
wvSetPosition -win $_nWave1 {("G3" 13)}
wvSetPosition -win $_nWave1 {("G3" 14)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrtemp\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrrdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_rdaddr\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 122077703.840788 -snap {("G3" 0)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 122568191.163667 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvExpandBus -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetCursor -win $_nWave1 122576221.654500 -snap {("G3" 8)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 122578929.049530 -snap {("G5" 0)}
wvSetCursor -win $_nWave1 122580627.807206 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 122583098.727462 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 122595627.065324 -snap {("G1" 1)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 122610674.583636 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetRadix -win $_nWave1 -format Hex
wvZoom -win $_nWave1 122599796.743256 122600067.000159
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 122698256.307221 -snap {("G1" 1)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 122700612.232570 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 122706476.430036 -snap {("G5" 0)}
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetWindowTimeUnit -win $_nWave1 1.000000 ps
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSetWindowTimeUnit -win $_nWave1 10.000000 ps
wvSelectSignal -win $_nWave1 {( "G2" 3 4 5 6 )} {( "G3" 1 2 3 4 5 6 7 8 9 )} {( \
           "G4" 1 2 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetCursor -win $_nWave1 122706780.774982 -snap {("G5" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/WB"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvExpandBus -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 8 9 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvExpandBus -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSetPosition -win $_nWave1 {("G2" 17)}
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 16)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSetPosition -win $_nWave1 {("G2" 13)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSetPosition -win $_nWave1 {("G2" 11)}
wvSetPosition -win $_nWave1 {("G2" 10)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 25 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 6 7 8 9 10 11 12 13 14 15 16 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/HC"
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDEXE_RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDEXE_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/EXEMEM_RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDEXE_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/EXEMEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/MEMWB_RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDEXE_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/EXEMEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/MEMWB_RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetCursor -win $_nWave1 122554777.484708 -snap {("G5" 0)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDEXE_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/EXEMEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/MEMWB_RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvSetCursor -win $_nWave1 774104005.614657 -snap {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetSearchMode -win $_nWave1 -value 10458
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 696267566.309231 -snap {("G5" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDEXE_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/EXEMEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/MEMWB_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/Wire_ALUOP\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID"
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/RegWrite} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrweb} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrstall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrstall} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDEXE_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/EXEMEM_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/MEMWB_RegWrite} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetCursor -win $_nWave1 696269364.898590 -snap {("G1" 1)}
wvSelectGroup -win $_nWave1 {G4} {G5}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvMoveSelected -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 )} {( "G2" 1 2 3 4 5 6 )} {( "G3" \
           1 2 3 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr"
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrctrl} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrISR_pc\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrISR_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrctrl} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrISR_pc\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/HC"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrISR_pc\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrctrl} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrISR_pc\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IFHC"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/interrupt} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrISR_pc\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrctrl} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFHC/IFHCo/InstrFlush} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 776542234.260576 -snap {("G3" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 777976845.822954 -snap {("G2" 2)}
wvSelectGroup -win $_nWave1 {G5} {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvExpandBus -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 6 7 8 9 10 11 12 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 \
           19 20 21 22 23 24 25 26 27 28 29 30 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvExpandBus -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 \
           20 21 22 23 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvExpandBus -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 \
           20 21 22 23 24 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 7 8 9 10 11 12 13 14 15 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetCursor -win $_nWave1 777962491.696337 -snap {("G6" 0)}
wvSelectGroup -win $_nWave1 {G6}
wvSetPosition -win $_nWave1 {("G6" 0)}
wvMoveSelected -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 )} {( "G2" 1 2 )} {( "G3" 1 2 \
           3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID"
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/CU"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/PCtoRegSrc} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/CU"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr"
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[6:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrret} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 6 )} 
wvSetPosition -win $_nWave1 {("G2" 6)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G2" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvExpandBus -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 6 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvExpandBus -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 22 23 24 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 8 9 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G2" 15)}
wvSelectSignal -win $_nWave1 {( "G2" 9 10 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G2" 12)}
wvSelectSignal -win $_nWave1 {( "G2" 10 11 12 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 8)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr"
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G2" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mepc\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 9 )} 
wvSetPosition -win $_nWave1 {("G2" 9)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 784621118.539637 -snap {("G5" 0)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/FU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/HC"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mepc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mepc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrret} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mepc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetCursor -win $_nWave1 784614477.594311 -snap {("G3" 2)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 692556738.844563 -snap {("G2" 4)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 696266744.457010 -snap {("G1" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IFHC"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IF_pcout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/OPcode\[6:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/CU/csr_web} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EXE_pc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct3\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/funct7\[4\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[12\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[11\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[7\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[3\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/IF/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mepc\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/HC/csrret} \
{/top_tb/TOP/CPU_wrapper/CPU/HC/IDFlush} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFHC/InstrFlush} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetCursor -win $_nWave1 696244435.031305 -snap {("G7" 0)}
wvSelectSignal -win $_nWave1 \
           {( "G1" 1 2 3 )} {( "G2" 1 2 3 4 5 6 7 8 )} {( "G3" \
           1 2 3 )} {( "G4" 1 2 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectGroup -win $_nWave1 {G3} {G4} {G5} {G6} {G7}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetCursor -win $_nWave1 696232986.318268
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 696368122.637972 -snap {("G3" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 698152876.694446 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 697851820.506318 -snap {("G3" 0)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 246115204.713357 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 185578579.499719 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/timeout} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/timeout} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mie\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSelectSignal -win $_nWave1 {( "G2" 2 3 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/timeout} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrrst} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/timeout} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrrst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EM_Regwrite} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/timeout} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/csrrst} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/EM_Regwrite} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mip\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Csr/mstatus\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvExpandBus -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 37)}
wvSetCursor -win $_nWave1 185573839.022978 -snap {("G2" 12)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 185567992.434988 -snap {("G2" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSelectSignal -win $_nWave1 {( "G2" 37 )} 
wvExpandBus -win $_nWave1 {("G2" 37)}
wvSelectSignal -win $_nWave1 {( "G2" 42 )} 
wvSelectSignal -win $_nWave1 {( "G2" 37 38 39 40 41 42 43 44 45 46 47 48 49 50 \
           51 52 53 54 55 56 57 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 48)}
wvSelectSignal -win $_nWave1 {( "G2" 38 39 40 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 45)}
wvSelectSignal -win $_nWave1 {( "G2" 39 40 41 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 42)}
wvSelectSignal -win $_nWave1 {( "G2" 40 41 42 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 39)}
wvSelectSignal -win $_nWave1 {( "G2" 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 \
           20 21 22 23 24 25 26 27 28 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 14)}
wvSelectSignal -win $_nWave1 {( "G2" 5 6 7 8 9 10 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 7)}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetCursor -win $_nWave1 185566932.199266
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/sensor_wrapper/sensor_ctrl"
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_en} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_en} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_en} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_en} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
{/top_tb/TOP/sensor_ready} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetCursor -win $_nWave1 79077269.503546 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetCursor -win $_nWave1 333706077.304965 -snap {("G3" 0)}
wvSetCursor -win $_nWave1 337396349.881797 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/sensor_wrapper"
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_en} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/sensor_wrapper/sensor_interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSetPosition -win $_nWave1 {("G3" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_en} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/sensor_wrapper/sensor_interrupt} \
{/top_tb/TOP/CPU_wrapper/timeout} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_en} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/sensor_wrapper/sensor_interrupt} \
{/top_tb/TOP/CPU_wrapper/timeout} \
{/top_tb/TOP/sensor_interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 )} {( "G3" 1 )} 
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/sensor_wrapper/sensor_ctrl"
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_en} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/sensor_wrapper/sensor_interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G3" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/sensor_wrapper/sensor_ctrl"
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_interrupt} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_en} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 5 )} 
wvSetPosition -win $_nWave1 {("G2" 5)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/sensor_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/wire_S4W"
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_en} \
{/top_tb/TOP/wire_S4W/WVALID} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_en} \
{/top_tb/TOP/wire_S4W/WVALID} \
{/top_tb/TOP/wire_S4W/WDATA\[31:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/sensor_wrapper"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_en} \
{/top_tb/TOP/wire_S4W/WVALID} \
{/top_tb/TOP/wire_S4W/WDATA\[31:0\]} \
{/top_tb/TOP/sensor_wrapper/reg_ADDR\[31:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/counter\[5:0\]} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sensor_ready} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/full} \
{/top_tb/TOP/sensor_wrapper/sensor_ctrl/sctrl_interrupt} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G2" 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 4)}
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 165609214.225030 -snap {("G2" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 165719386.394287 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 165706717.359565 -snap {("G4" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 158995417.289979 -snap {("G2" 3)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 247643087.736339 -snap {("G4" 0)}
wvSetCursor -win $_nWave1 247658127.435524 -snap {("G2" 3)}
wvSelectGroup -win $_nWave1 {G3} {G4}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSelectGroup -win $_nWave1 {G2} {G3} {G4}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/wto} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSelectSignal -win $_nWave1 {( "G3" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 85617183.806478 -snap {("G1" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 2 )} 
wvSetPosition -win $_nWave1 {("G6" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 2)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSelectSignal -win $_nWave1 {( "G6" 3 )} 
wvSetPosition -win $_nWave1 {("G6" 3)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSelectSignal -win $_nWave1 {( "G6" 1 2 )} 
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt1\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt2\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt1\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt2\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt1\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt2\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt1\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt2\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive1} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive2} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive3} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt1\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt2\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt1\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt2\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive1} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive2} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive3} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt1\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt2\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive1} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive2} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive3} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/WDT_wrapper/WDT/clk} \
{/top_tb/TOP/WDT_wrapper/WDT/clk2} \
{/top_tb/TOP/WDT_wrapper/WDT/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDT/wden_temp} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt1\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt2\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive1} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive2} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive3} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/wto_temp} \
{/top_tb/TOP/WDT_wrapper/wto} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 85600050.869556 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetCursor -win $_nWave1 85562776.959355 -snap {("G3" 0)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 85843306.141950 -snap {("G1" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 277527288.416076 -snap {("G3" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 303220978.423191 -snap {("G1" 1)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 184252647.754137 -snap {("G5" 1)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 185639695.969307 -snap {("G1" 1)}
wvExit
