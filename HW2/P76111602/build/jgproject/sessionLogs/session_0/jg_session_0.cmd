#----------------------------------------
# JasperGold Version Info
# tool      : JasperGold 2018.03
# platform  : Linux 3.10.0-957.21.3.el7.x86_64
# version   : 2018.03p001 64 bits
# build date: 2018.04.24 18:13:05 PDT
#----------------------------------------
# started Tue Oct 25 17:12:42 CST 2022
# hostname  : vlsicad9
# pid       : 14562
# arguments : '-label' 'session_0' '-console' 'vlsicad9:38124' '-style' 'windows' '-data' 'AQAAADx/////AAAAAAAAA3oBAAAAEABMAE0AUgBFAE0ATwBWAEU=' '-proj' '/home/user2/Vsd22/Vsd22113/Desktop/HW2/build/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/user2/Vsd22/Vsd22113/Desktop/HW2/build/jgproject/.tmp/.initCmds.tcl' '../script/jg_slave.tcl'
#DO NOT MODIFY THIS FILE
set ABVIP_INST_DIR /usr/cad/cadence/VIPCAT/cur/tools/abvip
set vip_dir $::env(vip_dir)

abvip -set_location $ABVIP_INST_DIR
set_visualize_auto_load_debugging_tables on
analyze -f $vip_dir/slave_duv/jg.f -sv09
elaborate -top top -param axi_monitor.MAX_PENDING 1

clock aclk
reset ~aresetn

##Removing Slave Table no overflow checks as slave example design is not self capable to prevent table overflow
assert -disable top.axi_monitor.*slave_aw_wr_tbl_no_overflow
assert -disable top.axi_monitor.*slave_ar_rd_tbl_no_overflow
assert -disable top.axi_monitor.*slave_w_wr_tbl_no_overflow
##################################################################################
assert -disable top.axi_monitor.genStableChks.genStableChksWRInf.genAXI4Full.slave_b_buser_stable
assert -disable top.axi_monitor.genStableChks.genStableChksRDInf.genAXI4Full.slave_r_ruser_stable
assert -disable top.axi_monitor.genPropChksRDInf.genAXI4Full.genRdIlOff.slave_r_ar_rid_no_interleave
assume -disable top.axi_monitor.genPropChksRDInf.genAXI4Full.master_ar_araddr_wrap_aligned
assume -disable top.axi_monitor.genPropChksRDInf.genAXI4Full.master_ar_araddr_wrap_arlen
assume -disable top.axi_monitor.genPropChksRDInf.genAXI4Full.master_ar_araddr_fixed_arlen
assume -disable top.axi_monitor.genPropChksWRInf.genAXI4Full.master_aw_awaddr_wrap_aligned
assume -disable top.axi_monitor.genPropChksWRInf.genAXI4Full.master_aw_awaddr_wrap_awlen
assume -disable top.axi_monitor.genPropChksWRInf.genAXI4Full.master_aw_awaddr_fixed_awlen

#data integrity
assume {(axi_duv_slave.A == $past(axi_duv_slave.A) && (axi_duv_slave.WEB == 4'hf)) |=> $stable(axi_duv_slave.DO)}

# Disable FIXED & WRAP Burst
assume {axi_monitor.arburst!=0}
assume {axi_monitor.arburst!=2}
assume {axi_monitor.awburst!=0}
assume {axi_monitor.awburst!=2}

prove -all

