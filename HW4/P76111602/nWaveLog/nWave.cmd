wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/user2/Vsd22/Vsd22113/Desktop/HW4_2/build/top.fsdb}
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvSetCursor -win $_nWave1 231906038.871615
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/inter_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvSetPosition -win $_nWave1 {("G1" 5)}
wvSetPosition -win $_nWave1 {("G1" 5)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 4 5 )} 
wvSetPosition -win $_nWave1 {("G1" 5)}
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 7 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 -2 25 1920 1007
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 8)}
wvSetCursor -win $_nWave1 89440151.741445 -snap {("G2" 0)}
wvSetCursor -win $_nWave1 71902867.086260 -snap {("G2" 0)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/inter_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvSetPosition -win $_nWave1 {("G1" 11)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 9 10 11 )} 
wvSetPosition -win $_nWave1 {("G1" 11)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 0)}
wvSetPosition -win $_nWave1 {("G1" 10)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/inter_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive1} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive2} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive3} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvSetPosition -win $_nWave1 {("G1" 14)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive1} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive2} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive3} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 11 12 13 14 )} 
wvSetPosition -win $_nWave1 {("G1" 14)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/inter_Decoder"
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/WDT_wrapper/WDT"
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive1} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive2} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive3} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvSetPosition -win $_nWave1 {("G1" 15)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/clk} \
{/top_tb/TOP/clk2} \
{/top_tb/TOP/WDT_wrapper/WDEN} \
{/top_tb/TOP/WDT_wrapper/WDLIVE} \
{/top_tb/TOP/WDT_wrapper/WTO} \
{/top_tb/TOP/WDT_wrapper/WDT/count\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wden} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt4\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive4} \
{/top_tb/TOP/WDT_wrapper/WDT/wtocnt3\[31:0\]} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive1} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive2} \
{/top_tb/TOP/WDT_wrapper/WDT/wdlive3} \
{/top_tb/TOP/WDT_wrapper/WDT/WDLIVE} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSetPosition -win $_nWave1 {("G1" 15)}
wvGetSignalClose -win $_nWave1
wvExit
