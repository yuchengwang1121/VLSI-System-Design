# ----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2021.03
# platform  : Linux 5.15.0-46-generic
# version   : 2021.03 FCS 64 bits
# build date: 2021.03.23 02:50:43 UTC
# ----------------------------------------
# started   : 2022-11-23 12:11:22 CST
# hostname  : caidcpuserver1.(none)
# pid       : 594488
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40137' '-style' 'windows' '-data' 'AAAAjHicY2RgYLCp////PwMYMFcBCQEGHwZfhiAGVyDpzxAGpOGA8QGUYcMIJJiAWIRBl6GYoZShgCGVoYghhyGTIY+hBCiuB4b6QLlkoHgmUL4EzENXqQfEyUAeAwM7AJWwFNA=' '-proj' '/home/charlie/VSD/HW3/build/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/charlie/VSD/HW3/build/jgproject/.tmp/.initCmds.tcl' '../script/superlint.tcl'
check_superlint -init
clear -all

# Config rules
config_rtlds -rule -enable -domain { LINT }
config_rtlds -rule -disable -tag { CAS_IS_DFRC SIG_IS_DLCK SIG_NO_TGFL SIG_NO_TGRS SIG_NO_TGST FSM_NO_MTRN FSM_NO_TRRN }
# vsd2018_constrain //
config_rtlds -rule  -disable -category { NAMING AUTO_FORMAL_DEAD_CODE AUTO_FORMAL_SIGNALS AUTO_FORMAL_ARITHMETIC_OVERFLOW }
config_rtlds -rule  -disable -tag { IDN_NR_SVKY ARY_MS_DRNG IDN_NR_AMKY IDN_NR_CKYW IDN_NR_SVKW ARY_NR_LBND VAR_NR_INDL INS_NR_PTEX INP_NO_USED OTP_NR_ASYA FLP_NR_MXCS OTP_UC_INST OTP_NR_UDRV REG_NR_TRRC INS_NR_INPR MOD_NS_GLGC } 
config_rtlds -rule  -disable -tag { REG_NR_RWRC  }
config_rtlds -rule  -disable -tag { BUS_IS_FLOT ASG_IS_XRCH }
#config_rtlds -rule  -reset -sync
# vsd2018_constrain //

analyze -sv +incdir+../include+../src/AHB ../src/top.sv ../sim/SRAM/SRAM_rtl.sv
include ../script/superlint.tcl
