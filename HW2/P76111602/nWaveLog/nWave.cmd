wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/YuChengWang/VLSI-System-Design/HW2/P76111602/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetCursor -win $_nWave1 321293.724409 -snap {("G1" 2)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU/IF"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
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
wvSetCursor -win $_nWave1 26995852.598425 -snap {("G1" 5)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M0"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
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
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 )} 
wvSetPosition -win $_nWave1 {("G2" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M1"
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G2" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 3 4 )} 
wvSetPosition -win $_nWave1 {("G2" 4)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
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
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 1 2 )} 
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 27129028.371794 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 27137340.264406 -snap {("G4" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 4 5 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G3" 2)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G3" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G3" 3 )} 
wvSetPosition -win $_nWave1 {("G3" 3)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/CPU"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 5 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSelectSignal -win $_nWave1 {( "G1" 4 )} 
wvSetPosition -win $_nWave1 {("G1" 4)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 27096674.798838 -snap {("G4" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 27146347.125861 -snap {("G4" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M0"
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
}
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 8)}
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 7 8 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G2" 1)}
wvSetPosition -win $_nWave1 {("G2" 2)}
wvSetPosition -win $_nWave1 {("G3" 0)}
wvSetPosition -win $_nWave1 {("G3" 1)}
wvSetPosition -win $_nWave1 {("G3" 2)}
wvSetPosition -win $_nWave1 {("G4" 0)}
wvMoveSelected -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetCursor -win $_nWave1 27149544.635088 -snap {("G5" 0)}
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M0"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/CPU_wrapper/M1"
wvSetPosition -win $_nWave1 {("G4" 4)}
wvSetPosition -win $_nWave1 {("G4" 4)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/rst} \
{/top_tb/TOP/CPU_wrapper/CPU/IF/Instr_out\[31:0\]} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_instr_read} \
{/top_tb/TOP/CPU_wrapper/CPU/b_data_write} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/top_tb/TOP/CPU_wrapper/M0/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M0/stall} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
{/top_tb/TOP/CPU_wrapper/M1/s_master\[2:0\]} \
{/top_tb/TOP/CPU_wrapper/M1/stall} \
}
wvAddSignal -win $_nWave1 -group {"G4" \
{/top_tb/TOP/CPU_wrapper/M0/RREADY} \
{/top_tb/TOP/CPU_wrapper/M0/RVALID} \
{/top_tb/TOP/CPU_wrapper/M1/RREADY} \
{/top_tb/TOP/CPU_wrapper/M1/RVALID} \
}
wvAddSignal -win $_nWave1 -group {"G5" \
}
wvSelectSignal -win $_nWave1 {( "G4" 3 4 )} 
wvSetPosition -win $_nWave1 {("G4" 4)}
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G4" 2)}
wvSetCursor -win $_nWave1 27131860.451402 -snap {("G5" 0)}
