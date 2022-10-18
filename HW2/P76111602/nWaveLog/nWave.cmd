wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/YuChengWang/VLSI-System-Design/HW2/P76111602/build/top.fsdb}
wvSetCursor -win $_nWave1 3329670.329670
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M1"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 2 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetSearchMode -win $_nWave1 -value 
wvSetSearchMode -win $_nWave1 -value 7b1ed6e1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvZoom -win $_nWave1 52752115.488375 53564096.348571
wvZoom -win $_nWave1 53134362.413292 53191252.792031
wvZoomOut -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 56192053.779114 -snap {("G3" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetOptions -win $_nWave1 -inout on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -inout off
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -output on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSetPosition -win $_nWave1 {("G2" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 3)}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetCursor -win $_nWave1 53782150.539297
wvSetSearchMode -win $_nWave1 -value 7b1e
wvSearchNext -win $_nWave1
wvSearchPrev -win $_nWave1
wvSetSearchMode -win $_nWave1 -value 7b1ed6e1
wvSearchNext -win $_nWave1
wvZoomOut -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF/PC"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G2" 2 )} 
wvSearchPrev -win $_nWave1
wvSearchPrev -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 53681658.478277
wvSetCursor -win $_nWave1 53681658.478277
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 57235041.236661 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetOptions -win $_nWave1 -all on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -input on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/DM_stall} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 )} 
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M0"
wvGetSignalSetOptions -win $_nWave1 -all on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/read} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/W_done} \
{/top_tb/TOP/CPU_wrapper/M0/write} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 4 5 )} 
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/W_done} \
{/top_tb/TOP/CPU_wrapper/M0/write} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/read} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 6 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSelectSignal -win $_nWave1 {( "G3" 4 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSelectSignal -win $_nWave1 {( "G3" 4 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 5)}
wvSelectSignal -win $_nWave1 {( "G3" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 4)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 5 6 )} 
wvSetPosition -win $_nWave1 {("G3" 6)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M1"
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M1/R_done} \
{/top_tb/TOP/CPU_wrapper/M1/read} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 7 8 )} 
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M1/W_done} \
{/top_tb/TOP/CPU_wrapper/M1/write} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 7 8 )} 
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSelectGroup -win $_nWave1 {G4}
wvSelectSignal -win $_nWave1 {( "G3" 7 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 6)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvSetPosition -win $_nWave1 {("G3" 7)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M0"
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSelectSignal -win $_nWave1 {( "G3" 6 )} 
wvSelectSignal -win $_nWave1 {( "G3" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G3" 7)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/AR_done} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 8 )} 
wvSetPosition -win $_nWave1 {("G3" 8)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G3" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/AR_done} \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/M0/ARVALID} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 9 10 )} 
wvSetPosition -win $_nWave1 {("G3" 10)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/AR_done} \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/CPU_wrapper/M0/ARVALID} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSearchNext -win $_nWave1
wvSetSearchMode -win $_nWave1 -anyChange
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSetCursor -win $_nWave1 57225026.948800 -snap {("G1" 1)}
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSearchNext -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RA/RArbiter"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/VALID_M0} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/VALID_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RA/RDecoder"
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S} \
{/top_tb/TOP/AXI/RA/RDecoder/ADDR\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S} \
{/top_tb/TOP/AXI/RA/RDecoder/VALID} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 )} 
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S} \
{/top_tb/TOP/AXI/RA/RDecoder/VALID} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S0} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RA/RArbiter"
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S} \
{/top_tb/TOP/AXI/RA/RDecoder/VALID} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S0} \
{/top_tb/TOP/AXI/RA/RArbiter/VALID_M} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSelectSignal -win $_nWave1 {( "G4" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S} \
{/top_tb/TOP/AXI/RA/RDecoder/VALID} \
{/top_tb/TOP/AXI/RA/RArbiter/VALID_M} \
{/top_tb/TOP/AXI/RA/RArbiter/master\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 7 )} 
wvSetPosition -win $_nWave1 {("G4" 7)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S} \
{/top_tb/TOP/AXI/RA/RDecoder/VALID} \
{/top_tb/TOP/AXI/RA/RArbiter/VALID_M} \
{/top_tb/TOP/AXI/RA/RArbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/RA/RArbiter/lockM0} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 8 )} 
wvSetPosition -win $_nWave1 {("G4" 8)}
wvSetPosition -win $_nWave1 {("G4" 9)}
wvSetPosition -win $_nWave1 {("G4" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IM_stall} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/ARREADY} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M0} \
{/top_tb/TOP/AXI/RA/RArbiter/READY_M} \
{/top_tb/TOP/AXI/RA/RDecoder/READY_S} \
{/top_tb/TOP/AXI/RA/RDecoder/VALID} \
{/top_tb/TOP/AXI/RA/RArbiter/VALID_M} \
{/top_tb/TOP/AXI/RA/RArbiter/master\[1:0\]} \
{/top_tb/TOP/AXI/RA/RArbiter/lockM0} \
{/top_tb/TOP/AXI/RA/RArbiter/VALID_M0} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 9 )} 
wvSetPosition -win $_nWave1 {("G4" 9)}
wvSelectSignal -win $_nWave1 {( "G3" 3 4 5 6 7 )} {( "G4" 1 2 3 4 5 6 7 8 9 )} \
           
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 57225537.545714 -snap {("G3" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 1 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvZoomIn -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_rs2data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_rs2data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs2src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvSetPosition -win $_nWave1 {("G4" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_rs2data\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs2src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs22\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 5 6 )} 
wvSetPosition -win $_nWave1 {("G4" 6)}
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 5)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G5" 0)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 0)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 1 )} 
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/WB"
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/WB/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB"
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_dout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 2 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_dout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 2 )} 
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi"
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 )} 
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSetPosition -win $_nWave1 {("G6" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G6" 1 )} 
wvSetPosition -win $_nWave1 {("G6" 1)}
wvSelectSignal -win $_nWave1 {( "G4" 2 )} {( "G5" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G4" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvAddSignal -win $_nWave1 -group {"G6" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 )} 
wvSetPosition -win $_nWave1 {("G4" 3)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvSetPosition -win $_nWave1 {("G5" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 1 )} 
wvSetPosition -win $_nWave1 {("G5" 1)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/FU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_csrrdata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 2 3 )} 
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetCursor -win $_nWave1 57223487.317518 -snap {("G5" 1)}
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 2)}
wvSetCursor -win $_nWave1 57221477.022485 -snap {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvSetPosition -win $_nWave1 {("G5" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvSetPosition -win $_nWave1 {("G5" 3)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G5" 4)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 4 )} 
wvSetPosition -win $_nWave1 {("G5" 4)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE"
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 5 )} 
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSelectSignal -win $_nWave1 {( "G5" 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 4)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G5" 5)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 5 )} 
wvSetPosition -win $_nWave1 {("G5" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi"
wvSetPosition -win $_nWave1 {("G5" 6)}
wvSetPosition -win $_nWave1 {("G5" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_rs2data\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 6 )} 
wvSetPosition -win $_nWave1 {("G5" 6)}
wvSelectSignal -win $_nWave1 {( "G5" 6 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G5" 6)}
wvSetPosition -win $_nWave1 {("G5" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 6 )} 
wvSetPosition -win $_nWave1 {("G5" 6)}
wvSetCursor -win $_nWave1 57219499.683109 -snap {("G5" 6)}
wvGetSignalSetScope -win $_nWave1 \
           "/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi"
wvSetPosition -win $_nWave1 {("G5" 7)}
wvSetPosition -win $_nWave1 {("G5" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_PCtoReg\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 7 )} 
wvSetPosition -win $_nWave1 {("G5" 7)}
wvSelectSignal -win $_nWave1 {( "G5" 7 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 6)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU"
wvSetPosition -win $_nWave1 {("G5" 7)}
wvSetPosition -win $_nWave1 {("G5" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 7 )} 
wvSetPosition -win $_nWave1 {("G5" 7)}
wvSetCursor -win $_nWave1 57217489.388076 -snap {("G5" 2)}
wvSetPosition -win $_nWave1 {("G5" 8)}
wvSetPosition -win $_nWave1 {("G5" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ZeroFlag} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 8 )} 
wvSetPosition -win $_nWave1 {("G5" 8)}
wvSelectSignal -win $_nWave1 {( "G5" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 7)}
wvSelectSignal -win $_nWave1 {( "G5" 7 )} 
wvSelectSignal -win $_nWave1 {( "G5" 7 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G5" 7 )} 
wvSetRadix -win $_nWave1 -format Hex
wvSetCursor -win $_nWave1 57216335.940107 -snap {("G7" 0)}
wvSelectSignal -win $_nWave1 {( "G5" 3 )} 
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/EXE"
wvSetPosition -win $_nWave1 {("G5" 8)}
wvSetPosition -win $_nWave1 {("G5" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 8 )} 
wvSetPosition -win $_nWave1 {("G5" 8)}
wvSelectSignal -win $_nWave1 {( "G5" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 7)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi"
wvSetPosition -win $_nWave1 {("G5" 8)}
wvSetPosition -win $_nWave1 {("G5" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 8 )} 
wvSetPosition -win $_nWave1 {("G5" 8)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/RF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/ID/IG"
wvSetPosition -win $_nWave1 {("G5" 9)}
wvSetPosition -win $_nWave1 {("G5" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 9 )} 
wvSetPosition -win $_nWave1 {("G5" 9)}
wvSetCursor -win $_nWave1 57215413.181731 -snap {("G5" 9)}
wvSetPosition -win $_nWave1 {("G5" 10)}
wvSetPosition -win $_nWave1 {("G5" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/ImmType\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 10 )} 
wvSetPosition -win $_nWave1 {("G5" 10)}
wvSelectSignal -win $_nWave1 {( "G5" 10 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 9)}
wvSetPosition -win $_nWave1 {("G5" 10)}
wvSetPosition -win $_nWave1 {("G5" 10)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 10 )} 
wvSetPosition -win $_nWave1 {("G5" 10)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID"
wvSetPosition -win $_nWave1 {("G5" 11)}
wvSetPosition -win $_nWave1 {("G5" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IFID/IFIDo/IF_instrout\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 11 )} 
wvSetPosition -win $_nWave1 {("G5" 11)}
wvSelectSignal -win $_nWave1 {( "G5" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G6" 0)}
wvSetPosition -win $_nWave1 {("G5" 10)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvSetPosition -win $_nWave1 {("G5" 11)}
wvSetPosition -win $_nWave1 {("G5" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 11 )} 
wvSetPosition -win $_nWave1 {("G5" 11)}
wvSetCursor -win $_nWave1 57214391.556387 -snap {("G5" 11)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M0"
wvSetPosition -win $_nWave1 {("G5" 12)}
wvSetPosition -win $_nWave1 {("G5" 12)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/data_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 12 )} 
wvSetPosition -win $_nWave1 {("G5" 12)}
wvSetPosition -win $_nWave1 {("G5" 13)}
wvSetPosition -win $_nWave1 {("G5" 13)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/data_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 13 )} 
wvSetPosition -win $_nWave1 {("G5" 13)}
wvSetPosition -win $_nWave1 {("G5" 14)}
wvSetPosition -win $_nWave1 {("G5" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/data_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 14 )} 
wvSetPosition -win $_nWave1 {("G5" 14)}
wvZoomIn -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RD/Wire"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RD"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RD/Wire"
wvSetPosition -win $_nWave1 {("G5" 15)}
wvSetPosition -win $_nWave1 {("G5" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/data_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/Wire/RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 15 )} 
wvSetPosition -win $_nWave1 {("G5" 15)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI/RD"
wvSetPosition -win $_nWave1 {("G5" 16)}
wvSetPosition -win $_nWave1 {("G5" 16)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/data_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/Wire/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/slave\[2:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 16 )} 
wvSetPosition -win $_nWave1 {("G5" 16)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/AXI"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G5" 17)}
wvSetPosition -win $_nWave1 {("G5" 17)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/data_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/Wire/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/slave\[2:0\]} \
{/top_tb/TOP/IM1/reg_RDATA\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 17 )} 
wvSetPosition -win $_nWave1 {("G5" 17)}
wvSetPosition -win $_nWave1 {("G5" 18)}
wvSetPosition -win $_nWave1 {("G5" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/data_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/Wire/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/slave\[2:0\]} \
{/top_tb/TOP/IM1/reg_RDATA\[31:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 18 )} 
wvSetPosition -win $_nWave1 {("G5" 18)}
wvSetCursor -win $_nWave1 57217459.727986 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 57214477.241093 -snap {("G5" 11)}
wvSelectGroup -win $_nWave1 {G2}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSelectSignal -win $_nWave1 {( "G5" 18 )} 
wvSelectSignal -win $_nWave1 {( "G5" 17 )} 
wvSelectSignal -win $_nWave1 {( "G5" 18 )} 
wvSetCursor -win $_nWave1 57220574.037503 -snap {("G7" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G5" 19)}
wvSetPosition -win $_nWave1 {("G5" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/PC_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M1/addr_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/data_in\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs1\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/WB_rddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_MEMWB/MEMWBi/MEM_rddata\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_EXEMEM/EXEMEMi/EXE_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Wire_ALUout\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/rs2\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU_rs21\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_rs1src\[1:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/Forward_Memrddata\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/EXE/ALU/ALUCtrl\[4:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/Wire_IDEXE/IDEXEi/ID_imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Imm\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/ID/IG/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/data_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/R_done} \
{/top_tb/TOP/CPU_wrapper/M0/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/Wire/RDATA\[31:0\]} \
{/top_tb/TOP/AXI/RD/slave\[2:0\]} \
{/top_tb/TOP/IM1/reg_RDATA\[31:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/A\[13:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G6" \
}
wvAddSignal -win $_nWave1 -group {"G7" \
}
wvSelectSignal -win $_nWave1 {( "G5" 19 )} 
wvSetPosition -win $_nWave1 {("G5" 19)}
wvExit
