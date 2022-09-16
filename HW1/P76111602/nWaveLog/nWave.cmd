wvResizeWindow -win $_nWave1 2734 307 893 202
wvResizeWindow -win $_nWave1 1920 23 1920 1137
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/YuChengWang/VLSI-System-Design/HW1/P76111602/build/top.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/top_tb"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/DM1"
wvGetSignalSetScope -win $_nWave1 "/top_tb/TOP/IM1"
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/top_tb/TOP/IM1/A\[13:0\]} \
{/top_tb/TOP/IM1/CK} \
{/top_tb/TOP/IM1/CS} \
{/top_tb/TOP/IM1/DI\[31:0\]} \
{/top_tb/TOP/IM1/DO\[31:0\]} \
{/top_tb/TOP/IM1/OE} \
{/top_tb/TOP/IM1/WEB\[3:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvZoom -win $_nWave1 11638.062992 651731.527559
wvZoom -win $_nWave1 17182.179614 74135.377643
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 19731.816640 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 29956.485262 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSetCursor -win $_nWave1 39643.013431 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 19552.436488 -snap {("G1" 2)}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetCursor -win $_nWave1 29777.105111 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 19911.196791 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 23140.039514 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 25651.361632 -snap {("G1" 5)}
wvExit
