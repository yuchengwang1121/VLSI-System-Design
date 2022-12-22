#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Dec 22 22:59:12 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.10-p004_1 (64bit) 05/07/2020 20:02 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.10-p004_1 NR200413-0234/20_10-UB (database version 18.20.505) {superthreading v1.69}
#@(#)CDS: AAE 20.10-p005 (64bit) 05/07/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.10-p005_1 () Apr 14 2020 09:14:28 ( )
#@(#)CDS: SYNTECH 20.10-b004_1 () Mar 12 2020 22:18:21 ( )
#@(#)CDS: CPE v20.10-p006
#@(#)CDS: IQuantus/TQuantus 19.1.3-s155 (64bit) Sun Nov 3 18:26:52 PST 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_design_uniquify 1
set init_no_new_assigns 1
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set eco_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set enc_enable_print_mode_command_reset_options 1
set init_design_uniquify 1
set init_gnd_net GND
set init_lef_file {/usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/SOCE/lef/header6_V55_20ka_cic.lef /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/SOCE/lef/fsa0m_a_generic_core.lef /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/SOCE/lef/fsa0m_a_t33_generic_io.lef  ../sim/SRAM/SRAM.lef ../sim/data_array/data_array.lef ../sim/tag_array/tag_array.lef /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/SOCE/lef/FSA0M_A_GENERIC_CORE_ANT_V55.lef}
set init_mmmc_file ../script/MMMC.view
set init_pwr_net VCC
set init_remove_assigns 1
set init_top_cell top
set init_verilog ../syn/top_syn.v
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 192
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
saveIoFile -byOrder -temp ../pr/top.io
loadIoFile ../pr/top.io
setDrawView fplan
remove_assigns
setDesignMode -process 180
selectObject Module DM1
clearGlobalNets
globalNetConnect VCC -type pgpin -pin VCC -instanceBasename *
globalNetConnect GND -type pgpin -pin GND -instanceBasename *
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site core_5040 -r 1 0.6960.7056 35 35 35 35
uiSetTool select
getIoFlowFlag
fit
::mp::clearAllSeed
setPlanDesignMode -effort high -incremental false -boundaryPlace true -fixPlacedMacros false -noColorize false
planDesign
::mp::clearAllSeed
setPlanDesignMode -effort high -incremental false -boundaryPlace true -fixPlacedMacros false -noColorize false
planDesign
getIoFlowFlag
::mp::clearAllSeed
setPlanDesignMode -effort high -incremental true -boundaryPlace true -fixPlacedMacros false -noColorize false
planDesign
panPage -1 0
zoomBox -3967.33300 -506.41900 2975.05800 2975.21300
zoomBox -4887.46800 -756.89600 3280.05100 3339.14200
zoomBox -3967.33400 -506.41900 2975.05900 2975.21400
zoomBox -5969.98100 -1051.57500 3638.86700 3767.29400
zoomBox -5969.98100 -1533.46200 3638.86700 3285.40700
zoomBox -5969.98100 -1051.57500 3638.86700 3767.29400
panPage 1 0
panPage -1 0
gui_select -rect {-509.75200 -647.11400 -1272.45000 -600.88900}
zoomBox -9283.12700 -1538.78900 4016.31900 5130.92700
zoomBox -6329.32000 -1087.08500 3279.53100 3731.78600
zoomBox -6782.04600 -1816.13500 4522.48600 3853.12500
zoomBox -7299.06900 -2677.44100 6000.38000 3992.27700
panPage 1 0
panPage -1 0
zoomBox -7675.88200 -2948.40700 7970.53000 4898.32000
zoomBox -6521.45300 -2414.94300 6777.99700 4254.77500
zoomBox -5451.42000 -1779.16100 5853.11400 3890.10000
zoomBox -6421.88800 -2744.83100 6877.56400 3924.88800
zoomBox -8876.10700 -3145.30300 9531.43900 6086.14200
zoomBox -7491.39000 -2381.55000 8155.02400 5465.17800
zoomBox -6355.30800 -1783.16700 6944.14400 4886.55200
zoomBox -5411.23100 -1297.33300 5893.30300 4371.92800
zoomBox -4608.76600 -884.37400 5000.08800 3934.49800
saveDesign ../pr/top_vol.1
addHaloToBlock {15 15 15 15} -allBlock
redraw
addRoutingHalo -allBlocks -space 5 -bottom metal1 -top metal6
redraw
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None -use_wire_group 1 -use_wire_group_bits 3 -use_interleaving_wire_group 1
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix top_prePlace -outDir timingReports
saveDesign ../pr/top_powerplan_ring
selectInst DM1/i_SRAM
deselectAll
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type core_rings -follow core -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None -use_wire_group 1 -use_wire_group_bits 3 -use_interleaving_wire_group 1
redraw
redraw
selectInst DM1/i_SRAM
deselectAll
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None -use_wire_group 1 -use_wire_group_bits 3 -use_interleaving_wire_group 1
redraw
redraw
redraw
redraw
redraw
redraw
redraw
redraw
saveDesign ../pr/top_powerplan_ring
selectInst DM1/i_SRAM
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {tl bl } -skip_side {left } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst IM1/i_SRAM
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {tl rb } -skip_side {bottom left } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lb rb } -skip_side {bottom } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lb rb } -skip_side {bottom } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst CPU_wrapper/L1CI/TA/i_tag_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lb rb } -skip_side {bottom } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lb rb } -skip_side {bottom } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { ring blockring blockpin }
sroute -connect { blockPin } -layerChangeRange { metal1(1) metal6(6) } -blockPinTarget { nearestTarget } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal6(6) } -nets { GND VCC } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal6(6) }
saveDesign ../pr/top_block_pins
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal5 -stacked_via_bottom_layer metal4 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VCC} -layer metal4 -direction vertical -width 1.2 -spacing 0.28 -set_to_set_distance 20 -start_from left -start_offset 10 -stop_offset 10 -switch_layer_over_obs true -merge_stripes_value auto -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal6 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal6 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal5 -stacked_via_bottom_layer metal4 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {GND VCC} -layer metal5 -direction horizontal -width 1.2 -spacing 0.28 -set_to_set_distance 20 -start_from bottom -start_offset 10 -stop_offset 10 -switch_layer_over_obs true -merge_stripes_value auto -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal6 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal6 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
zoomBox -3695.26100 -543.76000 4472.26600 3552.28200
zoomBox -2918.78200 -254.23800 4023.61700 3227.39800
zoomBox -2265.66300 8.76300 3635.37700 2968.15400
zoomBox -1236.66400 405.59200 3026.83900 2543.75300
zoomBox -834.79800 560.57000 2789.18000 2378.00700
zoomBox -202.86400 804.27300 2415.46200 2117.37200
zoomBox 43.93200 899.44800 2269.51000 2015.58300
zoomBox 432.01800 1049.11200 2039.99900 1855.52000
zoomBox 583.58100 1107.56200 1950.36600 1793.00900
zoomBox 821.91500 1199.47500 1809.41800 1694.71100
zoomBox 914.99400 1235.37000 1754.37200 1656.32100
zoomBox 1061.36100 1291.81500 1667.81300 1595.95300
zoomBox 1118.52300 1313.86000 1634.00800 1572.37700
zoomBox 1167.11100 1332.59700 1605.27400 1552.33700
zoomBox 1208.41100 1348.52400 1580.85000 1535.30300
zoomBox 1243.51600 1362.06200 1560.08900 1520.82400
zoomBox 994.10800 1265.87900 1707.58500 1623.69000
zoomBox 432.00400 1049.10600 2040.00500 1855.52400
zoomBox -280.04900 812.16000 2338.31200 2125.27700
zoomBox -1766.96500 396.65500 2496.60000 2534.84700
zoomBox -3230.90100 -5.92900 2670.22700 2953.50600
zoomBox -4153.92400 -258.91500 2788.57900 3222.77300
zoomBox -2765.42400 -258.91500 4177.07900 3222.77300
zoomBox -3459.67400 -258.91500 3482.82900 3222.77300
zoomBox -3459.67400 -607.08400 3482.82900 2874.60400
zoomBox -3459.67400 -258.91500 3482.82900 3222.77300
zoomBox -4152.18100 -365.73800 4015.47000 3730.36600
zoomBox -5772.58600 -854.31200 5532.12300 4815.03700
zoomBox -4916.06600 -666.69400 4692.93700 4152.25300
zoomBox -5767.48800 -865.52900 5537.22100 4803.82000
zoomBox -5767.48800 -1432.46400 5537.22100 4236.88500
zoomBox -4895.67300 -956.28000 4713.33000 3862.66700
zoomBox -4154.63000 -551.52300 4013.02300 3544.58200
saveDesign ../pr/top_powerplan_stripe
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
zoomBox -3468.75400 -304.72600 3473.75200 3176.96400
zoomBox -2882.62900 -83.67700 3018.50200 2875.76000
zoomBox -2026.92300 370.27100 2236.64600 2508.46500
zoomBox -1417.92300 686.53900 1662.50600 2231.38400
zoomBox -813.94400 991.30700 1077.82600 1940.03600
zoomBox -446.53800 1173.78900 715.24700 1756.42800
zoomBox -228.88700 1280.27100 484.59600 1638.08500
zoomBox -132.80900 1327.29800 382.68300 1585.81900
zoomBox -97.14700 1344.78100 341.02200 1564.52400
zoomBox -66.83400 1359.64100 305.61000 1546.42300
zoomBox -19.16700 1383.00800 249.92500 1517.95900
zoomBox 16.17100 1402.63100 210.59000 1500.13300
zoomBox 7.69200 1394.04900 236.42000 1508.75700
zoomBox -2.23500 1384.09700 266.85700 1519.04800
zoomBox 6.79000 1394.96300 201.21000 1492.46500
zoomBox 15.85700 1405.88000 135.25600 1465.75900
zoomBox 18.28000 1408.55100 119.76900 1459.44800
zoomBox 13.00600 1402.73800 153.47600 1473.18400
zoomBox 5.70600 1394.69100 200.12900 1492.19500
zoomBox 13.52300 1401.05000 153.99500 1471.49700
zoomBox 19.33600 1405.57400 120.82700 1456.47200
zoomBox 9.28900 1398.44100 174.55000 1481.32000
zoomBox -7.19700 1386.63800 261.90600 1521.59400
zoomBox -34.03900 1367.62500 404.15000 1587.37800
zoomBox -48.91900 1348.93200 466.59800 1607.46500
zoomBox -87.02000 1301.06800 626.49900 1658.90000
zoomBox -166.62500 1213.67400 995.22200 1796.34400
zoomBox -303.75900 1087.00100 1588.11500 2035.78200
zoomBox -528.21000 881.85000 2552.39100 2426.78200
zoomBox -893.69100 547.79700 4122.55500 3063.46100
zoomBox -1259.79000 214.13600 5683.11100 3696.02400
zoomBox -1061.89900 394.49300 4839.56800 3354.09800
zoomBox -1457.68300 256.72000 5485.22000 3738.60900
zoomBox -1923.31100 95.37100 6244.81100 4191.71100
setLayerPreference via -isVisible 0
setLayerPreference via2 -isVisible 0
setLayerPreference metal3 -isVisible 0
setLayerPreference via3 -isVisible 0
setLayerPreference metal4 -isVisible 0
setLayerPreference via4 -isVisible 0
setLayerPreference metal5 -isVisible 0
setLayerPreference via5 -isVisible 0
setLayerPreference metal6 -isVisible 0
zoomBox -3238.19700 -651.68000 8067.16300 5017.99500
zoomBox -2527.44800 -247.86900 7082.10800 4571.35500
zoomBox -1923.31100 95.37100 6244.81100 4191.71100
zoomBox -1409.79500 387.12500 5533.10900 3869.01400
zoomBox -973.30600 635.11500 4928.16200 3594.72100
zoomBox -286.92900 1025.07900 3976.88300 3163.39500
setLayerPreference node_bump -isVisible 0
setLayerPreference node_bump -isVisible 1
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference node_inst -isVisible 0
setLayerPreference node_inst -isVisible 1
setLayerPreference node_inst -isVisible 0
setLayerPreference node_inst -isVisible 1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
deselectAll
zoomBox -733.05300 818.30600 4283.19700 3333.97200
zoomBox -1862.63200 323.07500 5080.27500 3804.96600
zoomBox -2566.96700 20.27000 5601.15900 4116.61200
zoomBox -5517.34600 -1248.14600 7783.08200 5422.06300
zoomBox -3434.34600 -371.48200 6175.21400 4447.74400
setLayerPreference node_floorplan -isVisible 1
setLayerPreference node_floorplan -isVisible 0
setLayerPreference node_floorplan -isVisible 1
setLayerPreference node_partition -isVisible 0
setLayerPreference node_partition -isVisible 1
setLayerPreference node_power -isVisible 1
setLayerPreference node_power -isVisible 0
setLayerPreference node_blockage -isVisible 1
setLayerPreference node_blockage -isVisible 0
setLayerPreference node_blockage -isVisible 1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
zoomBox -1927.03800 152.86900 5015.86900 3634.76000
zoomBox -1338.37400 357.64900 4563.09900 3317.25700
zoomBox 256.10300 912.32300 3336.70900 2457.25700
zoomBox 928.02400 1146.06600 2819.90200 2094.84900
zoomBox 1088.43000 1201.86700 2696.52600 2008.33200
zoomBox 1224.77500 1249.29700 2591.65700 1934.79300
zoomBox 1439.17600 1323.88100 2426.75000 1819.15300
setLayerPreference node_power -isVisible 1
zoomBox 1541.61400 1352.47500 2381.05300 1773.45600
zoomBox 1765.60900 1414.99800 2281.13100 1673.53400
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
zoomBox 1662.50500 1414.99800 2178.02700 1673.53400
zoomBox 1559.40100 1414.99800 2074.92300 1673.53400
zoomBox 1404.74500 1414.99800 1920.26700 1673.53400
zoomBox 1301.64100 1414.99800 1817.16300 1673.53400
zoomBox 1198.53700 1414.99800 1714.05900 1673.53400
zoomBox 1146.98500 1414.99800 1662.50700 1673.53400
zoomBox 1043.88100 1414.99800 1559.40300 1673.53400
zoomBox 940.77700 1414.99800 1456.29900 1673.53400
zoomBox 889.22500 1414.99800 1404.74700 1673.53400
zoomBox 837.67300 1414.99800 1353.19500 1673.53400
zoomBox 734.56900 1414.99800 1250.09100 1673.53400
zoomBox 683.01700 1414.99800 1198.53900 1673.53400
zoomBox 631.46500 1414.99800 1146.98700 1673.53400
zoomBox 579.91300 1414.99800 1095.43500 1673.53400
zoomBox 528.36100 1414.99800 1043.88300 1673.53400
zoomBox 476.80900 1414.99800 992.33100 1673.53400
zoomBox 425.25700 1414.99800 940.77900 1673.53400
zoomBox 322.15300 1414.99800 837.67500 1673.53400
zoomBox 12.84100 1414.99800 528.36300 1673.53400
zoomBox -38.71100 1414.99800 476.81100 1673.53400
zoomBox -90.26300 1414.99800 425.25900 1673.53400
setLayerPreference node_overlay -isVisible 1
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference node_overlay -isVisible 0
fit
setLayerPreference node_cell -isVisible 1
setLayerPreference via -isVisible 1
setLayerPreference via -isVisible 0
setLayerPreference via -isVisible 1
setLayerPreference via -isVisible 0
setLayerPreference via -isVisible 1
setLayerPreference via2 -isVisible 1
zoomBox -816.51900 148.73500 4199.35900 2664.21400
setLayerPreference metal1 -isVisible 0
setLayerPreference metal2 -isVisible 0
zoomBox 341.52300 469.96000 3421.90000 2014.77900
zoomBox 1052.70500 667.23200 2944.44200 1615.94400
zoomBox 1682.35000 841.88700 2521.72500 1262.83600
zoomBox 1945.72100 913.76500 2318.15900 1100.54400
zoomBox 2060.58700 943.41600 2225.84100 1026.29100
zoomBox 2025.39800 934.63800 2254.12200 1049.34400
zoomBox 2003.02000 929.05600 2272.10700 1064.00400
zoomBox 1945.71900 914.76100 2318.15900 1101.54100
zoomBox 1871.23100 914.76100 2243.67100 1101.54100
zoomBox 1908.47500 914.76100 2280.91500 1101.54100
zoomBox 1908.47500 896.08300 2280.91500 1082.86300
setLayerPreference metal1 -isVisible 1
zoomBox 1908.47500 877.40500 2280.91500 1064.18500
zoomBox 1862.07600 865.23200 2300.24100 1084.97300
zoomBox 1807.48900 850.91100 2322.97800 1109.43000
zoomBox 1578.83000 790.92200 2418.21900 1211.87800
zoomBox 1474.25900 763.48700 2461.77500 1258.73000
setLayerPreference metal2 -isVisible 1
setLayerPreference metal3 -isVisible 1
setLayerPreference via3 -isVisible 1
setLayerPreference metal4 -isVisible 1
setLayerPreference via4 -isVisible 1
setLayerPreference metal5 -isVisible 1
setLayerPreference via5 -isVisible 1
setLayerPreference metal6 -isVisible 1
setLayerPreference node_gird -isVisible 1
setLayerPreference node_gird -isVisible 0
zoomBox 1134.19800 703.04600 2501.00400 1388.50400
zoomBox 917.94300 664.61100 2525.95100 1471.03200
zoomBox 364.21200 566.19400 2589.82900 1682.34800
zoomBox 12.07700 503.60800 2630.45100 1816.73100
zoomBox -402.75400 429.97700 2677.68600 1974.82800
zoomBox -1201.00400 114.09100 3062.58300 2252.29400
setLayerPreference io -isVisible 0
setLayerPreference io -isVisible 1
zoomBox -1801.38400 -142.89200 3214.60100 2372.64100
zoomBox -2507.71400 -444.69200 3393.44500 2514.75900
setLayerPreference block -isVisible 0
setLayerPreference block -isVisible 1
setLayerPreference block -isVisible 0
setLayerPreference metal3 -isVisible 0
setLayerPreference via3 -isVisible 0
setLayerPreference metal4 -isVisible 0
setLayerPreference via4 -isVisible 0
setLayerPreference metal5 -isVisible 0
setLayerPreference via5 -isVisible 0
setLayerPreference metal6 -isVisible 0
zoomBox -1646.49300 -345.15700 3369.49400 2170.37700
zoomBox -292.22100 -187.80000 3331.82900 1629.67300
setLayerPreference via -isVisible 0
setLayerPreference via -isVisible 1
setLayerPreference metal2 -isVisible 0
setLayerPreference metal2 -isVisible 1
setLayerPreference metal2 -isVisible 0
setLayerPreference metal2 -isVisible 1
zoomBox -46.65000 44.41800 2571.72600 1357.54200
zoomBox -290.96400 -187.80000 3333.08600 1629.67300
zoomBox -653.36900 -187.80000 2970.68100 1629.67300
zoomBox -653.36900 -6.05300 2970.68100 1811.42000
zoomBox -808.73500 -153.72700 3454.85300 1984.47600
zoomBox -990.61400 -328.82000 4025.37200 2186.71400
zoomBox -804.66500 -140.15500 3458.92400 1998.04900
zoomBox -646.60800 20.21000 2977.44400 1837.68400
zoomBox -990.61700 -328.82200 4025.37300 2186.71400
zoomBox -990.61800 -77.26800 4025.37300 2438.26800
zoomBox -990.61800 174.28600 4025.37300 2689.82200
setLayerPreference block -isVisible 1
zoomBox -990.61800 -77.26800 4025.37300 2438.26800
zoomBox -1836.40400 -289.64600 4064.76100 2669.80800
setLayerPreference metal3 -isVisible 1
setLayerPreference via3 -isVisible 1
setLayerPreference metal4 -isVisible 1
setLayerPreference via4 -isVisible 1
setLayerPreference metal5 -isVisible 1
setLayerPreference via5 -isVisible 1
setLayerPreference metal6 -isVisible 1
zoomBox -2712.46800 -687.28800 4230.08000 2794.42300
zoomBox -3743.13100 -1155.10100 4424.57200 2941.02900
zoomBox -1581.54000 -231.04100 4319.62700 2728.41400
zoomBox -3743.13300 -1155.10200 4424.57200 2941.02900
zoomBox -4559.90400 -1155.10200 3607.80100 2941.02900
zoomBox -5891.19000 -1732.34000 3717.87500 3086.63800
zoomBox -5891.19000 -2214.23800 3717.87500 2604.74000
zoomBox -5891.19000 -1732.34000 3717.87500 3086.63800
zoomBox -5891.19000 -768.54400 3717.87500 4050.43400
zoomBox -5891.19000 -286.64600 3717.87500 4532.33200
zoomBox -5891.19000 -768.54400 3717.87500 4050.43400
setLayerPreference metal6 -isVisible 0
setLayerPreference metal6 -isVisible 1
setLayerPreference node_layer -isVisible 0
selectInst DM1/i_SRAM
uiSetTool move
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 49.66 2960.565 441.5 3117.365
deselectAll
selectInst CPU_wrapper/L1CI/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CI/TA/i_tag_array 511.912 2959.024 903.752 3115.824
deselectAll
selectInst DM1/i_SRAM
setObjFPlanBox Instance DM1/i_SRAM 46.896 1524.625 1967.036 2916.225
setObjFPlanBox Instance DM1/i_SRAM 41.122 1489.951 1961.262 2881.551
setObjFPlanBox Instance DM1/i_SRAM -91.777 91.637 1828.363 1483.237
setObjFPlanBox Instance DM1/i_SRAM 35.339 1507.287 1955.479 2898.887
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 2961.948 41.058 3118.748 1928.958
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 2727.614 64.171 2884.414 1952.071
zoomBox -4630.10900 -600.40100 3537.59700 3495.73100
zoomBox -3558.19100 -457.47800 3384.36000 3024.23400
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 2731.785 34.947 2888.585 1922.847
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 2727.606 55.823 2884.406 1943.723
deselectAll
selectInst DM1/i_SRAM
setObjFPlanBox Instance DM1/i_SRAM 35.34 1523.989 1955.48 2915.589
zoomBox -4535.07400 -696.91000 3632.63300 3399.22200
setDrawView place
setDrawView fplan
setDrawView place
zoomBox -5295.19000 -1062.66700 4313.87700 3756.31200
zoomBox -6462.71700 -1499.08700 4842.06800 4170.30000
zoomBox -5266.64000 -1047.37100 4342.42800 3771.60800
zoomBox -4249.97400 -663.41400 3917.73400 3432.71900
zoomBox -4249.97500 -1482.64000 3917.73400 2613.49300
zoomBox -4249.97500 -663.41400 3917.73400 3432.71900
zoomBox -2616.43300 -663.41400 5551.27600 3432.71900
zoomBox -1934.23500 -332.62900 5008.31700 3149.08400
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 2113.927 -81.946 2270.727 1805.954
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 2460.984 -150.976 2617.784 1736.924
zoomBox -1304.89700 -3.87000 4596.27300 2955.58600
zoomBox -1934.23500 -332.62900 5008.31800 3149.08400
zoomBox -2674.63300 -719.40400 5493.07600 3376.72900
deselectAll
selectInst DM1/i_SRAM
setObjFPlanBox Instance DM1/i_SRAM 1209.172 1745.004 3129.312 3136.604
deselectAll
selectInst IM1/i_SRAM
setObjFPlanBox Instance IM1/i_SRAM 939.043 30.368 2859.183 1421.968
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 46.217 40.836 203.017 1928.736
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 299.95 35.654 456.75 1923.554
deselectAll
selectInst IM1/i_SRAM
setObjFPlanBox Instance IM1/i_SRAM 1199.345 40.193 3119.485 1431.793
deselectAll
selectInst CPU_wrapper/L1CI/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CI/TA/i_tag_array 50.235 2679.069 442.075 2835.869
setObjFPlanBox Instance CPU_wrapper/L1CI/TA/i_tag_array 55.142 2679.07 446.982 2835.87
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 609.37 20.916 766.17 1908.816
deselectAll
selectInst CPU_wrapper/L1CI/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CI/TA/i_tag_array 610.132 2949.199 1001.972 3105.999
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 54.571 2950.737 446.411 3107.537
uiSetTool select
setLayerPreference allLayers -isVisible 0
setLayerPreference allLayers -isVisible 1
setLayerPreference allLayers -isSelectable 0
setLayerPreference allLayers -isSelectable 1
setDrawView fplan
setDrawView fplan
deselectAll
selectInst DM1/i_SRAM
redraw
redraw
redraw
redraw
redraw
redraw
redraw
deselectAll
selectInst IM1/i_SRAM
redraw
redraw
redraw
redraw
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
spaceObject -fixSide bottom -space 0
spaceObject -fixSide bottom -space 0
spaceObject -fixSide bottom -space 0
spaceObject -fixSide bottom -space 0
spaceObject -fixSide bottom -space 0
spaceObject -fixSide bottom -space 0
spaceObject -fixSide bottom -space 0
spaceObject -fixSide bottom -space 0
spaceObject -fixSide bottom -space 0
setDrawView place
uiSetTool move
spaceObject -fixSide bottom -space 0
uiSetTool select
spaceObject -fixSide bottom -space 100
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
redraw
redraw
redraw
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
alignObject -side top
alignObject -side center
spaceObject -fixSide top -space 0
spaceObject -fixSide bottom -space 0
spaceObject -fixSide left -space 0
spaceObject -fixSide distHorizontal
redraw
redraw
spaceObject -fixSide left -space 5
spaceObject -fixSide bottom -space 5
spaceObject -fixSide top -space 5
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
flipOrRotateObject -rotate R270 -group
deselectAll
gui_select -rect {670.05100 1058.53400 670.05100 1112.56000}
selectInst CPU_wrapper/L1CD/TA/i_tag_array
uiSetTool move
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 638.839 50.389 795.639 1938.289
zoomBox -3940.91500 -1155.36600 5668.15400 3663.61400
zoomBox -5430.65900 -1668.26200 5874.12800 4001.12600
setDrawView fplan
zoomBox -2948.16100 -921.24900 5219.54800 3174.88400
setLayerPreference node_layer -isVisible 1
zoomBox -1215.33500 -375.45400 4685.83500 2584.00200
zoomBox -21.78600 26.30700 4241.81100 2164.51500
zoomBox 821.45900 321.88600 3901.90900 1866.74200
zoomBox 1140.98800 445.25200 3759.37200 1758.38000
zoomBox 1412.58800 550.11300 3638.21500 1666.27200
zoomBox 1647.06200 640.45000 3538.84500 1589.18500
setLayerPreference node_layer -isVisible 0
zoomBox 1137.22100 460.20100 3755.60600 1773.33000
zoomBox 490.15100 212.03000 4114.21500 2029.51000
zoomBox -238.52100 -116.32600 4777.48600 2399.21800
zoomBox -834.30900 -879.87600 7333.42000 3216.26700
zoomBox -2467.85500 -879.87600 5699.87400 3216.26700
zoomBox -3284.62800 -879.87600 4883.10100 3216.26700
zoomBox -4101.40100 -879.87600 4066.32800 3216.26700
zoomBox -3620.32600 -508.57100 3322.24400 2973.15100
zoomBox -4094.03600 -887.98000 4073.69500 3208.16400
zoomBox -5161.74000 -1859.47800 6143.07900 3809.92600
zoomBox -4549.93400 -1296.61600 5059.16200 3522.37700
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 54.57 2944.962 446.41 3101.762
uiSetTool select
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
spaceObject -fixSide bottom -space 5
spaceObject -fixSide bottom -space 5
spaceObject -fixSide bottom -space 5
spaceObject -fixSide bottom -space 5
spaceObject -fixSide bottom -space 5
spaceObject -fixSide bottom -space 5
spaceObject -fixSide bottom -space 5
spaceObject -fixSide bottom -space 5 -honorHalo
uiSetTool select
uiSetTool select
uiSetTool select
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
flipOrRotateObject -flip MY
redraw
redraw
redraw
redraw
redraw
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {rt bl } -skip_side {top left } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {rt bl } -skip_side {top left } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst CPU_wrapper/L1CI/TA/i_tag_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lt rt } -skip_side {top } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lt rt } -skip_side {top } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {tl rb } -skip_side {bottom left } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lb rb } -skip_side {bottom } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lb rb } -skip_side {bottom } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst DM1/i_SRAM
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lt br } -skip_side {top right } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lt br } -skip_side {top right } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst IM1/i_SRAM
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lb tr } -skip_side {bottom right } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lb tr } -skip_side {bottom right } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setSrouteMode -viaConnectToShape { ring stripe blockring blockpin }
sroute -connect { corePin } -layerChangeRange { metal1(1) metal6(6) } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal6(6) } -nets { GND VCC } -allowLayerChange 1 -targetViaLayerRange { metal1(1) metal6(6) }
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
deselectAll
zoomBox -4549.93400 -814.71700 5059.16200 4004.27600
zoomBox -4549.93400 -332.81800 5059.16200 4486.17500
zoomBox -4549.93400 -814.71700 5059.16200 4004.27600
zoomBox -4549.93400 -1296.61600 5059.16200 3522.37700
zoomBox -5510.84400 -1296.61600 4098.25200 3522.37700
zoomBox -4549.93400 -1296.61600 5059.16200 3522.37700
zoomBox -3589.02400 -1296.61600 6020.07200 3522.37700
zoomBox -2413.70100 -708.15400 4528.87100 2773.56900
zoomBox -2056.13600 -472.70000 3845.05100 2486.76500
zoomBox -1752.73900 -272.56400 3263.27200 2242.98200
zoomBox -1494.85000 -102.44800 2768.75900 2035.76600
zoomBox -1275.64500 42.15100 2348.42300 1859.63300
zoomBox -1497.15800 -100.52600 2766.45200 2037.68900
selectInst CPU_wrapper/L1CI/DA/i_data_array
uiSetTool move
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 53.911 56.223 210.711 1944.123
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 74.421 71.603 231.221 1959.503
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 59.038 53.654 215.838 1941.554
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 51.348 53.65 208.148 1941.55
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 641.404 53.209 798.204 1941.109
zoomBox -1070.79800 -100.52600 3192.81300 2037.68900
zoomBox -218.07600 -100.52600 4045.53500 2037.68900
deselectAll
selectInst IM1/i_SRAM
setObjFPlanBox Instance IM1/i_SRAM 1176.266 68.392 3096.406 1459.992
setObjFPlanBox Instance IM1/i_SRAM 1183.962 65.826 3104.102 1457.426
setObjFPlanBox Instance IM1/i_SRAM 1191.651 65.83 3111.791 1457.43
setObjFPlanBox Instance IM1/i_SRAM 1199.341 63.267 3119.481 1454.867
setObjFPlanBox Instance IM1/i_SRAM 1204.468 47.887 3124.608 1439.487
setObjFPlanBox Instance IM1/i_SRAM 1196.779 58.145 3116.919 1449.745
zoomBox 663.41800 363.72800 3743.87800 1908.58900
zoomBox -218.07700 -100.14200 4045.53500 2038.07400
zoomBox -1070.80000 -100.14200 3192.81300 2038.07400
zoomBox -1497.16100 -100.14200 2766.45200 2038.07400
zoomBox -1070.80000 -100.14200 3192.81300 2038.07400
zoomBox -644.43900 -100.14200 3619.17400 2038.07400
zoomBox -218.07800 -100.14200 4045.53500 2038.07400
zoomBox -218.07800 113.68000 4045.53500 2251.89600
zoomBox -218.07800 968.96800 4045.53500 3107.18400
zoomBox -218.07800 1396.61200 4045.53500 3534.82800
zoomBox -218.07800 1610.43400 4045.53500 3748.65000
deselectAll
selectInst DM1/i_SRAM
setObjFPlanBox Instance DM1/i_SRAM 1196.351 1732.181 3116.491 3123.781
setObjFPlanBox Instance DM1/i_SRAM 1198.914 1721.925 3119.054 3113.525
setObjFPlanBox Instance DM1/i_SRAM 1196.346 1719.356 3116.486 3110.956
setObjFPlanBox Instance DM1/i_SRAM 1198.914 1714.232 3119.054 3105.832
zoomBox 69.35000 1965.45100 3149.81100 3510.31200
zoomBox -238.69600 1965.45100 2841.76500 3510.31200
zoomBox -546.74200 1965.45100 2533.71900 3510.31200
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 51.979 2947.551 443.819 3104.351
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 51.98 2951.255 443.82 3108.055
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 61.242 2954.955 453.082 3111.755
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 55.683 2956.803 447.523 3113.603
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 51.975 2951.242 443.815 3108.042
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 55.675 2951.24 447.515 3108.04
zoomBox -546.74200 1810.96500 2533.71900 3355.82600
zoomBox -546.74200 1501.99300 2533.71900 3046.85400
zoomBox -546.74200 1038.53500 2533.71900 2583.39600
zoomBox -546.74200 884.04900 2533.71900 2428.91000
zoomBox -546.74200 266.10500 2533.71900 1810.96600
zoomBox -546.74200 -197.35300 2533.71900 1347.50800
zoomBox -546.74200 -351.83900 2533.71900 1193.02200
zoomBox -546.74200 -506.32500 2533.71900 1038.53600
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 641.4 60.619 798.2 1948.519
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 58.759 61.059 215.559 1948.959
zoomBox -546.74200 -197.35300 2533.71900 1347.50800
zoomBox -546.74200 -506.32500 2533.71900 1038.53600
zoomBox -1162.83400 -506.32500 1917.62700 1038.53600
zoomBox -546.74200 -506.32500 2533.71900 1038.53600
zoomBox -415.31800 -423.52500 2203.07400 889.60700
zoomBox -303.60700 -353.14500 1922.02600 763.01700
zoomBox -127.94200 -242.47200 1480.07800 563.95500
zoomBox -59.33800 -199.25000 1307.47900 486.21300
zoomBox 149.60900 -47.91200 756.07500 256.23300
zoomBox 85.59600 -94.27500 924.99700 326.68700
zoomBox 44.88900 -123.75900 1032.42000 371.49100
zoomBox -3.00100 -158.44500 1158.80000 424.20200
zoomBox 113.17900 -158.44500 1274.98000 424.20200
zoomBox 229.35900 -158.44500 1391.16000 424.20200
zoomBox 461.71900 -158.44500 1623.52000 424.20200
deselectAll
selectInst IM1/i_SRAM
setObjFPlanBox Instance IM1/i_SRAM 1196.78 62.332 3116.92 1453.932
zoomBox 577.89900 -158.44500 1739.70000 424.20200
zoomBox 1042.61900 -158.44500 2204.42000 424.20200
zoomBox 1623.51900 -158.44500 2785.32000 424.20200
zoomBox 2204.41900 -158.44500 3366.22000 424.20200
zoomBox 2436.67000 -69.26700 3276.07200 351.69600
zoomBox 2436.67000 14.92500 3276.07200 435.88800
zoomBox 2436.67000 141.21300 3276.07200 562.17600
zoomBox 2436.67000 393.78900 3276.07200 814.75200
zoomBox 2436.67000 688.46100 3276.07200 1109.42400
zoomBox 2520.61000 688.46100 3360.01200 1109.42400
zoomBox 2604.55000 688.46100 3443.95200 1109.42400
zoomBox 2517.34700 644.63700 3504.87800 1139.88700
zoomBox 2298.09600 532.87900 3664.92100 1218.34600
zoomBox 2168.42900 462.53400 3776.45800 1268.96600
zoomBox 2017.24300 379.60400 3909.04300 1328.34800
zoomBox 1828.06300 379.60400 3719.86300 1328.34800
zoomBox 1828.06300 948.84800 3719.86300 1897.59200
zoomBox 1828.06300 1328.34400 3719.86300 2277.08800
zoomBox 1828.06300 1423.21800 3719.86300 2371.96200
zoomBox 1828.06300 1897.58800 3719.86300 2846.33200
zoomBox 1828.06300 2371.95800 3719.86300 3320.70200
deselectAll
selectInst DM1/i_SRAM
setObjFPlanBox Instance DM1/i_SRAM 1190.947 1706.267 3111.087 3097.867
setObjFPlanBox Instance DM1/i_SRAM 1189.812 1713.096 3109.952 3104.696
setObjFPlanBox Instance DM1/i_SRAM 1195.498 1713.1 3115.638 3104.7
setObjFPlanBox Instance DM1/i_SRAM 1190.95 1714.237 3111.09 3105.837
zoomBox 2017.24300 2371.95800 3909.04300 3320.70200
zoomBox 1449.70300 2371.95800 3341.50300 3320.70200
zoomBox 1260.52300 2371.95800 3152.32300 3320.70200
zoomBox 882.16300 2371.95800 2773.96300 3320.70200
zoomBox 692.98300 2371.95800 2584.78300 3320.70200
zoomBox 314.62300 2371.95800 2206.42300 3320.70200
zoomBox -63.73700 2371.95800 1828.06300 3320.70200
zoomBox -252.91700 2371.95800 1638.88300 3320.70200
setObjFPlanBox Instance DM1/i_SRAM 1192.088 1713.102 3112.228 3104.702
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 59.083 2947.827 450.923 3104.627
uiSetTool select
saveDesign ../pr/top_powerplan_stripe_vol1
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
deselectAll
::mp::clearAllSeed
setPlanDesignMode -effort high -incremental false -boundaryPlace true -fixPlacedMacros false -noColorize false
planDesign
redraw
zoomBox -569.25400 2070.91500 2049.15700 3384.05700
zoomBox -1613.08800 1077.54400 3402.96700 3593.11200
zoomBox -1998.46100 710.80100 3902.78000 3670.29300
zoomBox -2451.84100 279.33900 4490.79600 3761.09400
zoomBox -2985.22900 -228.26400 5182.57900 3867.91900
::mp::clearAllSeed
setPlanDesignMode -effort high -incremental true -boundaryPlace true -fixPlacedMacros false -noColorize false
planDesign
setDrawView place
setDrawView place
setDrawView fplan
redraw
redraw
redraw
zoomIn
zoomOut
redraw
redraw
redraw
selectInst CPU_wrapper/L1CD/TA/i_tag_array
zoomBox -3589.34300 -586.22600 6019.84400 4232.81300
zoomBox -4299.04500 -1006.33700 7005.88100 4663.12100
zoomBox -3638.28800 -580.10800 5970.89900 4238.93100
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
deselectAll
selectInst DM1/i_SRAM
encMessage warning 0
encMessage debug 0
encMessage info 0
is_common_ui_mode
restoreDesign /home/user2/Vsd22/Vsd2298/Desktop/HW4_4/pr/top_powerplan_stripe_vol1.dat top
encMessage warning 1
encMessage debug 0
encMessage info 1
zoomBox -3354.86600 -73.06900 4812.94300 4023.11400
zoomBox -3113.95800 357.91400 3828.68000 3839.67000
zoomBox -2909.18600 724.24900 2992.05700 3683.74200
zoomBox -2735.13100 1035.63400 2280.92800 3551.20400
zoomBox -2735.13100 1287.19100 2280.92800 3802.76100
zoomBox -2735.13100 1790.30500 2280.92800 4305.87500
zoomBox -886.04700 2454.76500 1339.60700 3570.93800
zoomBox -68.57700 2735.44400 918.96000 3230.69700
zoomBox -48.09000 2792.80800 791.31700 3213.77300
zoomBox -30.82800 2841.56700 682.66900 3199.38800
zoomBox 6.91800 2948.28600 445.09500 3168.03300
zoomBox 30.09800 3013.86400 299.19500 3148.81700
zoomBox 44.33100 3054.13700 209.59400 3137.01700
zoomBox 50.61800 3072.00600 170.02100 3131.88700
zoomBox 55.16000 3084.91700 141.42900 3128.18100
zoomBox 46.53300 3084.91700 132.80200 3128.18100
zoomBox 46.53300 3089.24300 132.80200 3132.50700
zoomBox 46.53300 3093.56900 132.80200 3136.83300
zoomBox 46.53300 3084.91700 132.80200 3128.18100
zoomBox 63.78700 3084.91700 150.05600 3128.18100
zoomBox 51.69200 3066.56500 192.17000 3137.01500
zoomBox 23.59600 3066.56500 164.07400 3137.01500
zoomBox 9.54800 3066.56500 150.02600 3137.01500
uiSetTool move
setObjFPlanBox Instance DM1/i_SRAM 1198.51 1700.682 3118.65 3092.282
uiSetTool move
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 35.428 2972.918 427.268 3129.718
zoomBox 9.54800 3073.61000 150.02600 3144.06000
zoomBox 9.54800 3080.65500 150.02600 3151.10500
zoomBox 22.93400 3098.13800 109.20700 3141.40400
zoomBox 33.07400 3111.37900 78.11100 3133.96500
zoomBox 34.03300 3113.79600 72.31400 3132.99400
zoomBox 34.84700 3115.85000 67.38700 3132.16900
zoomBox 35.54000 3117.59600 63.19900 3131.46700
zoomBox 32.77400 3117.59600 60.43300 3131.46700
zoomBox 30.00800 3117.59600 57.66700 3131.46700
zoomBox 30.84600 3119.15300 54.35600 3130.94300
zoomBox 31.55800 3120.47600 51.54200 3130.49800
zoomBox 32.67800 3122.55600 47.11700 3129.79700
zoomBox 33.49600 3124.06700 43.92900 3129.29900
zoomBox 33.49600 3124.59000 43.92900 3129.82200
zoomBox 33.49600 3125.11300 43.92900 3130.34500
zoomBox 33.49600 3126.15900 43.92900 3131.39100
setObjFPlanBox Instance CPU_wrapper/L1CD/TA/i_tag_array 35.342 2973.039 427.182 3129.839
zoomBox 33.49600 3126.68200 43.92900 3131.91400
zoomBox 33.49600 3127.72800 43.92900 3132.96000
zoomBox 32.77300 3127.32500 47.21300 3134.56700
zoomBox 32.23600 3126.95000 49.22500 3135.47000
zoomBox 30.86200 3125.98800 54.37700 3137.78100
zoomBox 33.67400 3127.85100 44.11100 3133.08500
zoomBox 33.67400 3127.32800 44.11100 3132.56200
zoomBox 34.54400 3127.93300 40.95500 3131.14800
zoomBox 34.75200 3128.07700 40.20200 3130.81000
zoomBox 35.07900 3128.30400 39.01800 3130.27900
zoomBox 35.07900 3127.51200 39.01800 3129.48700
zoomBox 36.65500 3127.51200 40.59400 3129.48700
zoomBox 36.65500 3126.52200 40.59400 3128.49700
zoomBox 36.65500 3125.13600 40.59400 3127.11100
zoomBox 36.65500 3123.75000 40.59400 3125.72500
zoomBox 36.65500 3122.36400 40.59400 3124.33900
zoomBox 36.65500 3120.97800 40.59400 3122.95300
zoomBox 34.72400 3118.49400 47.01900 3124.66000
zoomBox 28.70600 3110.75300 67.06100 3129.98800
zoomBox 14.07800 3091.93500 115.77800 3142.93800
zoomBox -32.72600 3043.23300 236.92900 3178.46600
zoomBox -115.93400 2971.83200 400.64500 3230.89800
zoomBox 245.67200 2971.83200 762.25100 3230.89800
zoomBox 607.27800 2971.83200 1123.85700 3230.89800
zoomBox 503.96200 2971.83200 1020.54100 3230.89800
zoomBox 503.96200 3101.36700 1020.54100 3360.43300
zoomBox 503.96200 3127.27400 1020.54100 3386.34000
zoomBox 264.94200 2974.65700 1429.18100 3558.52700
zoomBox 100.11000 2872.74700 1711.51700 3680.87300
zoomBox 384.02900 3048.28500 1225.19400 3470.13200
zoomBox 532.23500 3139.91600 971.33100 3360.12400
zoomBox 556.51300 3154.92600 929.74500 3342.10300
zoomBox 556.51300 3061.33600 929.74500 3248.51300
zoomBox 556.51300 3042.61800 929.74500 3229.79500
zoomBox 633.04600 3089.93500 798.65200 3172.98700
zoomBox 633.04600 3065.02000 798.65200 3148.07200
zoomBox 656.60100 3079.58300 758.30500 3130.58800
zoomBox 662.22400 3083.06000 748.67300 3126.41400
deselectAll
selectInst CPU_wrapper/L1CI/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CI/TA/i_tag_array 610.858 2966.303 1002.698 3123.103
zoomBox 671.26900 3093.27400 733.72800 3124.59700
zoomBox 674.80100 3097.26200 727.89200 3123.88700
zoomBox 677.80300 3100.65200 722.93100 3123.28400
zoomBox 667.11100 3088.57900 740.59600 3125.43200
zoomBox 662.22100 3083.05800 748.67500 3126.41500
zoomBox 649.70100 3068.92100 769.36100 3128.93100
zoomBox 649.70100 3074.92200 769.36100 3134.93200
zoomBox 649.70100 3086.92400 769.36100 3146.93400
setLayerPreference node_net -isVisible 0
setLayerPreference node_net -isVisible 1
setLayerPreference node_route -isVisible 1
setLayerPreference node_route -isVisible 0
setLayerPreference node_bump -isVisible 0
setLayerPreference node_bump -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_module -isVisible 0
setLayerPreference node_module -isVisible 1
setLayerPreference block -isVisible 0
setLayerPreference block -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setLayerPreference coverCell -isVisible 0
setLayerPreference coverCell -isVisible 1
setLayerPreference phyCell -isVisible 0
setLayerPreference phyCell -isVisible 1
setLayerPreference blackBox -isVisible 0
setLayerPreference blackBox -isVisible 1
setLayerPreference node_blockage -isVisible 0
setObjFPlanBox Instance CPU_wrapper/L1CI/TA/i_tag_array 611.292 2972.344 1003.132 3129.144
zoomBox 649.70100 3092.92500 769.36100 3152.93500
zoomBox 649.70100 3104.92700 769.36100 3164.93700
zoomBox 649.70100 3110.92800 769.36100 3170.93800
setObjFPlanBox Instance CPU_wrapper/L1CI/TA/i_tag_array 611.29 2973.132 1003.13 3129.932
zoomBox 649.70100 3080.92300 769.36100 3140.93300
zoomBox 649.70100 3050.91800 769.36100 3110.92800
zoomBox 649.70100 3032.91500 769.36100 3092.92500
zoomBox 649.70100 3020.91300 769.36100 3080.92300
zoomBox 616.47000 3004.77300 811.31700 3102.48900
zoomBox 601.27300 2997.39100 830.50500 3112.35200
zoomBox 386.54400 2893.09400 1101.61600 3251.70500
zoomBox 330.77200 2866.00500 1172.03300 3287.90000
zoomBox 265.15800 2834.13500 1254.87700 3330.48200
zoomBox 364.13000 2834.13500 1353.84900 3330.48200
zoomBox 858.99000 2834.13500 1848.70900 3330.48200
zoomBox 1155.90600 2834.13500 2145.62500 3330.48200
zoomBox 1254.87800 2834.13500 2244.59700 3330.48200
zoomBox 1452.82200 2834.13500 2442.54100 3330.48200
zoomBox 2046.65400 2834.13500 3036.37300 3330.48200
zoomBox 2640.48600 2834.13500 3630.20500 3330.48200
zoomBox 2701.28000 2870.29000 3542.54100 3292.18500
zoomBox 2799.54500 2928.26600 3407.35600 3233.08500
deselectAll
selectInst DM1/i_SRAM
setObjFPlanBox Instance DM1/i_SRAM 1217.151 1736.499 3137.291 3128.099
zoomBox 2850.20200 2956.61000 3366.84100 3215.70600
zoomBox 3009.88800 3046.08500 3239.12500 3161.04800
zoomBox 3089.21900 3090.73000 3175.67700 3134.08900
zoomBox 3107.37400 3103.94800 3160.47200 3130.57700
zoomBox 3096.75400 3103.94800 3149.85200 3130.57700
zoomBox 3091.44400 3103.94800 3144.54200 3130.57700
zoomBox 3091.44400 3106.61100 3144.54200 3133.24000
zoomBox 3091.44400 3109.27400 3144.54200 3135.90300
zoomBox 3091.44400 3114.60000 3144.54200 3141.22900
zoomBox 3097.86600 3116.02200 3143.00000 3138.65700
zoomBox 3103.32400 3117.23500 3141.68900 3136.47500
setObjFPlanBox Instance DM1/i_SRAM 1217.68 1738.253 3137.82 3129.853
zoomBox 3103.32400 3105.69100 3141.68900 3124.93100
zoomBox 3097.23700 3103.70400 3142.37300 3126.34000
zoomBox 3090.09000 3101.37100 3143.19200 3128.00200
zoomBox 3046.60700 3087.10300 3148.33400 3138.11900
zoomBox 2856.31600 3022.83700 3173.64400 3181.97800
zoomBox 2807.85900 3007.51500 3181.18700 3194.74000
zoomBox 2515.80100 2916.98700 3230.98100 3275.65200
zoomBox 2408.03400 2883.59400 3249.42300 3305.55300
zoomBox 2238.38700 2835.40100 3402.94000 3419.42800
zoomBox 1678.59300 2677.01600 3909.51100 3795.82900
zoomBox 1232.40900 2677.01600 3463.32700 3795.82900
zoomBox 563.13300 2677.01600 2794.05100 3795.82900
zoomBox 1901.68500 2677.01600 4132.60300 3795.82900
zoomBox 672.06000 2398.17000 4945.80100 4541.46500
zoomBox 672.06000 1112.19000 4945.80100 3255.48500
zoomBox 672.06000 40.54000 4945.80100 2183.83500
zoomBox 672.06000 -816.78000 4945.80100 1326.51500
zoomBox 1644.87700 -457.80000 4269.48900 858.45200
zoomBox 2468.63500 -151.10300 3458.50900 345.32200
zoomBox 2661.11200 -79.44100 3269.01800 225.42600
zoomBox 2661.11200 -48.95400 3269.01800 255.91300
zoomBox 2661.11200 -18.46700 3269.01800 286.40000
zoomBox 2852.66400 23.85000 3225.99600 211.07700
deselectAll
selectInst IM1/i_SRAM
setObjFPlanBox Instance IM1/i_SRAM 1217.433 35.615 3137.573 1427.215
zoomBox 3013.01300 29.71800 3178.66700 112.79400
zoomBox 3092.67600 32.63400 3155.15300 63.96600
zoomBox 3118.35900 34.74400 3146.08200 48.64700
zoomBox 3123.48000 35.45100 3143.51200 45.49700
zoomBox 3123.48000 32.43600 3143.51200 42.48200
zoomBox 3129.83100 33.35700 3140.28800 38.60100
setObjFPlanBox Instance IM1/i_SRAM 1217.681 35.283 3137.821 1426.883
zoomBox 3134.25900 34.25600 3138.90000 36.58300
zoomBox 3136.53300 34.73200 3138.28600 35.61100
zoomBox 3137.19000 34.90100 3138.10500 35.36000
zoomBox 3135.29800 34.33200 3138.66000 36.01800
zoomBox 3129.78500 32.67600 3140.27500 37.93700
zoomBox 3108.11900 26.17300 3146.62500 45.48400
zoomBox 3045.11400 7.27800 3165.23500 67.51900
zoomBox 2892.30500 -38.53000 3210.80300 121.19800
zoomBox 2237.28400 -234.88600 3406.13500 351.29700
zoomBox 329.08000 -806.90100 3975.17000 1021.62500
zoomBox 757.92900 -651.34500 3857.10500 902.90200
zoomBox 757.92900 -29.64500 3857.10500 1524.60200
zoomBox 757.92900 902.90500 3857.10500 2457.15200
zoomBox 757.92900 1835.45500 3857.10500 3389.70200
zoomBox 757.92900 2146.30500 3857.10500 3700.55200
zoomBox 757.92900 2457.15500 3857.10500 4011.40200
zoomBox 757.92900 2301.73000 3857.10500 3855.97700
zoomBox 2391.29300 2764.40000 3384.82100 3262.65800
zoomBox 2877.98700 2904.51800 3252.69900 3092.43700
zoomBox 3040.18300 2958.91700 3206.44700 3042.29900
zoomBox 3059.58900 2965.42600 3200.91300 3036.30000
zoomBox 3090.10400 2975.66000 3192.21100 3026.86700
zoomBox 3063.10500 2963.66800 3204.43200 3034.54400
zoomBox 3063.10500 3006.19600 3204.43200 3077.07200
zoomBox 3063.10500 3055.81200 3204.43200 3126.68800
zoomBox 3063.10500 3105.42800 3204.43200 3176.30400
zoomBox 3063.10500 3126.69200 3204.43200 3197.56800
zoomBox 3063.10500 3105.42800 3204.43200 3176.30400
zoomBox 3063.10500 3091.25200 3204.43200 3162.12800
zoomBox 3105.36900 3110.72900 3168.07700 3142.17700
zoomBox 3118.27400 3116.83900 3156.78600 3136.15300
zoomBox 3121.35400 3118.29800 3154.09000 3134.71500
zoomBox 3121.35400 3119.94000 3154.09000 3136.35700
zoomBox 3129.47600 3124.60600 3146.56600 3133.17700
zoomBox 3130.80700 3125.37100 3145.33400 3132.65600
zoomBox 3131.93800 3126.02000 3144.28600 3132.21300
zoomBox 3132.89700 3126.57200 3143.39500 3131.83700
deselectAll
selectInst DM1/i_SRAM
setObjFPlanBox Instance DM1/i_SRAM 1217.674 1738.256 3137.814 3129.856
setObjFPlanBox Instance DM1/i_SRAM 1217.67 1738.229 3137.81 3129.829
zoomBox 3132.89700 3127.09900 3143.39500 3132.36400
zoomBox 3135.67300 3128.60900 3139.63300 3130.59500
zoomBox 3136.83500 3129.21100 3138.59400 3130.09300
zoomBox 3137.37100 3129.48700 3138.15300 3129.87900
zoomBox 3137.52900 3129.55800 3138.09500 3129.84200
zoomBox 3137.52900 3129.58600 3138.09500 3129.87000
zoomBox 3137.52900 3129.61400 3138.09500 3129.89800
zoomBox 3137.52900 3129.67000 3138.09500 3129.95400
zoomBox 3137.52900 3129.69800 3138.09500 3129.98200
zoomBox 3137.63800 3129.75700 3137.98800 3129.93300
zoomBox 3137.68500 3129.78300 3137.94000 3129.91100
zoomBox 3137.73300 3129.81000 3137.89100 3129.88900
zoomBox 3137.71900 3129.80300 3137.90500 3129.89600
zoomBox 3137.68100 3129.78400 3137.94000 3129.91400
zoomBox 3137.71800 3129.80200 3137.90500 3129.89600
zoomBox 3137.73100 3129.80100 3137.89100 3129.88100
zoomBox 3137.73100 3129.79300 3137.89100 3129.87300
zoomBox 3137.73100 3129.78500 3137.89100 3129.86500
zoomBox 3137.73100 3129.77700 3137.89100 3129.85700
setObjFPlanBox Instance DM1/i_SRAM 1217.68 1738.24 3137.82 3129.84
zoomBox 3137.73100 3129.79300 3137.89100 3129.87300
zoomBox 3137.78100 3129.81700 3137.85400 3129.85400
zoomBox 3137.80300 3129.82900 3137.83300 3129.84400
zoomBox 3137.81000 3129.83200 3137.82800 3129.84100
zoomBox 3137.81000 3129.83400 3137.82800 3129.84300
zoomBox 3137.78100 3129.81900 3137.84500 3129.85100
zoomBox 3137.78100 3129.79800 3137.84500 3129.83000
zoomBox 3137.69500 3129.74800 3137.90400 3129.85300
zoomBox 3137.42900 3129.59800 3138.08700 3129.92800
zoomBox 3136.60100 3129.14800 3138.65700 3130.17900
zoomBox 3115.38700 3118.76700 3153.76000 3138.01100
zoomBox 3115.38700 3109.14700 3153.76000 3128.39100
zoomBox 3115.38700 3095.67900 3153.76000 3114.92300
zoomBox 3115.38700 3082.21100 3153.76000 3101.45500
zoomBox 3080.21400 3068.07200 3181.96000 3119.09800
zoomBox 2986.95000 3030.58400 3256.73300 3165.88100
zoomBox 2670.14400 2609.31700 3511.69800 3031.35900
zoomBox 2670.14400 2313.88900 3511.69800 2735.93100
zoomBox 2670.14400 1765.23700 3511.69800 2187.27900
zoomBox 2670.14400 1427.60500 3511.69800 1849.64700
zoomBox 2670.14400 1132.17700 3511.69800 1554.21900
zoomBox 1913.81800 848.03100 4145.17300 1967.06300
zoomBox 391.39400 276.07000 5420.30800 2798.08700
zoomBox 391.39400 -984.94000 5420.30800 1537.07700
zoomBox 2110.18700 -355.85200 4006.84200 595.32700
zoomBox 2758.74700 -119.30200 3474.07200 239.43600
zoomBox 3082.65500 -9.16600 3202.36100 50.86700
zoomBox 3121.52500 6.16800 3166.67300 28.81000
zoomBox 3127.80400 8.90100 3160.42600 25.26100
zoomBox 3109.03900 -0.64100 3182.56000 36.23000
zoomBox 3109.03900 6.73300 3182.56000 43.60400
zoomBox 3109.03900 10.42000 3182.56000 47.29100
zoomBox 3109.03900 14.10700 3182.56000 50.97800
zoomBox 3101.68700 14.10700 3175.20800 50.97800
zoomBox 3118.06200 23.23500 3156.44300 42.48300
zoomBox 3131.27900 30.13600 3143.58400 36.30700
zoomBox 3131.27900 30.75300 3143.58400 36.92400
zoomBox 3131.27900 31.98700 3143.58400 38.15800
zoomBox 3131.27900 32.60400 3143.58400 38.77500
zoomBox 3135.18300 34.08100 3140.64500 36.82000
zoomBox 3136.67700 34.63900 3139.53000 36.07000
zoomBox 3137.43400 34.91300 3138.92600 35.66100
zoomBox 3137.28500 34.91300 3138.77700 35.66100
zoomBox 3136.98700 34.91300 3138.47900 35.66100
zoomBox 3137.38300 35.06800 3138.16300 35.45900
zoomBox 3137.60800 35.14800 3138.01700 35.35300
zoomBox 3137.73400 35.19100 3137.94800 35.29800
zoomBox 3137.73400 35.21300 3137.94800 35.32000
zoomBox 3137.73400 35.22400 3137.94800 35.33100
zoomBox 3137.73400 35.23500 3137.94800 35.34200
zoomBox 3137.79100 35.25900 3137.88700 35.30700
zoomBox 3137.81600 35.26900 3137.86000 35.29100
zoomBox 3137.80000 35.26900 3137.84400 35.29100
zoomBox 3137.79600 35.26900 3137.84000 35.29100
zoomBox 3137.79600 35.27500 3137.84000 35.29700
zoomBox 3137.79600 35.27900 3137.84000 35.30100
zoomBox 3137.79600 35.27500 3137.84000 35.29700
zoomBox 3137.79600 35.27100 3137.84000 35.29300
zoomBox 3137.80800 35.27300 3137.83000 35.28400
zoomBox 3137.81000 35.27300 3137.82800 35.28200
zoomBox 3137.80600 35.27300 3137.82400 35.28200
zoomBox 3137.81200 35.27300 3137.83000 35.28200
zoomBox 3137.81200 35.27500 3137.83000 35.28400
zoomBox 3137.81200 35.27000 3137.83000 35.27900
zoomBox 3137.81200 35.26500 3137.83000 35.27400
zoomBox 3137.81200 35.25900 3137.83000 35.26800
zoomBox 3137.79500 35.25300 3137.84700 35.27900
zoomBox 3137.73900 35.23300 3137.90600 35.31700
zoomBox 3137.51700 35.16000 3138.13900 35.47200
zoomBox 3137.14200 35.03600 3138.54400 35.73900
zoomBox 3135.94000 34.51900 3140.31300 36.71200
zoomBox 3132.29300 32.87100 3145.93900 39.71500
zoomBox 3120.93300 27.72200 3163.50700 49.07300
zoomBox 3093.66100 14.95300 3206.54900 71.56700
zoomBox 3033.80900 -50.22200 3385.95400 126.38000
zoomBox 2888.83600 -208.28900 3822.54000 259.96700
zoomBox 2888.83500 -114.63700 3822.54000 353.61900
zoomBox 2888.83500 119.49300 3822.54000 587.74900
zoomBox 2515.35100 119.49300 3449.05600 587.74900
zoomBox 2328.60900 119.49300 3262.31400 587.74900
zoomBox 2328.60900 -67.81100 3262.31400 400.44500
zoomBox 2328.60900 -255.11500 3262.31400 213.14100
zoomBox 2328.60900 -348.76700 3262.31400 119.48900
zoomBox 2328.60900 -395.59300 3262.31400 72.66300
zoomBox 1921.55300 -870.33600 4397.24400 371.23100
zoomBox 1103.78800 -1835.28800 6683.37200 962.89200
zoomBox 1103.78800 -156.38000 6683.37200 2641.80000
zoomBox 1103.78800 1242.71000 6683.37200 4040.89000
zoomBox -1686.00200 1242.71000 3893.58200 4040.89000
zoomBox -418.68800 2200.19400 2057.00300 3441.76100
zoomBox 346.75700 2710.68500 1280.46300 3178.94200
zoomBox 573.53000 2858.82700 1060.93300 3103.26100
zoomBox 573.53000 2907.71300 1060.93300 3152.14700
zoomBox 573.53000 2956.59900 1060.93300 3201.03300
zoomBox 573.53000 2981.04200 1060.93300 3225.47600
zoomBox 730.04500 3073.63600 886.29700 3151.99700
zoomBox 776.04300 3100.84800 834.97400 3130.40200
zoomBox 776.04300 3103.80300 834.97400 3133.35700
zoomBox 776.04300 3115.62300 834.97400 3145.17700
zoomBox 793.39200 3125.77600 815.61800 3136.92200
zoomBox 799.96600 3129.35500 808.35100 3133.56000
zoomBox 799.34600 3129.20800 809.21100 3134.15500
zoomBox 798.61600 3129.03500 810.22200 3134.85500
zoomBox 798.61600 3128.45300 810.22200 3134.27300
zoomBox 798.61600 3127.28900 810.22200 3133.10900
zoomBox 799.36200 3127.46900 809.22800 3132.41700
zoomBox 801.71200 3128.03900 806.09300 3130.23600
zoomBox 801.71200 3128.47900 806.09300 3130.67600
zoomBox 802.95300 3129.25100 804.89800 3130.22600
zoomBox 803.43100 3129.54000 804.44700 3130.05000
zoomBox 803.67800 3129.69000 804.21000 3129.95700
deselectAll
selectInst CPU_wrapper/L1CI/TA/i_tag_array
setObjFPlanBox Instance CPU_wrapper/L1CI/TA/i_tag_array 611.284 2973.04 1003.124 3129.84
zoomBox 803.90800 3129.83000 803.98600 3129.86900
zoomBox 803.93200 3129.84500 803.96200 3129.86000
zoomBox 803.93200 3129.83500 803.96200 3129.85000
zoomBox 803.93200 3129.83100 803.96200 3129.84600
zoomBox 803.93200 3129.82900 803.96200 3129.84400
zoomBox 803.93800 3129.83200 803.95600 3129.84100
zoomBox 803.93800 3129.83300 803.95600 3129.84200
zoomBox 803.93800 3129.83400 803.95600 3129.84300
zoomBox 803.93800 3129.83500 803.95600 3129.84400
zoomBox 803.93800 3129.82800 803.95600 3129.83700
zoomBox 803.93800 3129.82100 803.95600 3129.83000
zoomBox 803.91800 3129.81000 803.97600 3129.83900
zoomBox 803.85800 3129.77600 804.03800 3129.86600
zoomBox 803.67200 3129.66900 804.23600 3129.95200
zoomBox 803.23800 3129.39400 804.73700 3130.14600
zoomBox 802.14300 3128.50300 806.83000 3130.85400
zoomBox 799.32800 3128.50300 804.01600 3130.85400
zoomBox 793.70000 3128.50300 798.38800 3130.85400
zoomBox 793.70000 3127.09300 798.38800 3129.44400
zoomBox 791.04300 3124.93100 803.47900 3131.16800
zoomBox 784.00300 3119.19900 816.97700 3135.73600
zoomBox 782.00700 3117.57500 820.80200 3137.03100
zoomBox 765.33500 3104.00300 852.77100 3147.85200
zoomBox 701.81400 3052.29500 974.57000 3189.08300
zoomBox 685.31600 3038.86500 1006.20600 3199.79200
zoomBox 524.87100 3038.86500 845.76100 3199.79200
zoomBox 300.24800 3038.86500 621.13800 3199.79200
zoomBox 268.15900 3038.86500 589.04900 3199.79200
zoomBox 75.62500 3038.86500 396.51500 3199.79200
zoomBox -148.99800 3038.86500 171.89200 3199.79200
zoomBox -341.53200 3038.86500 -20.64200 3199.79200
zoomBox -181.08700 3038.86500 139.80300 3199.79200
zoomBox -116.90900 3038.86500 203.98100 3199.79200
zoomBox -84.82000 3038.86500 236.07000 3199.79200
zoomBox -16.31700 3094.63000 104.70800 3155.32400
zoomBox 6.75600 3113.41300 60.45900 3140.34500
zoomBox 23.62900 3123.46900 43.88500 3133.62700
zoomBox 29.31200 3126.85500 38.30100 3131.36300
zoomBox 31.50700 3128.15400 36.20100 3130.50800
zoomBox 33.38300 3128.15400 38.07700 3130.50800
zoomBox 33.38300 3128.38900 38.07700 3130.74300
zoomBox 33.38300 3127.91900 38.07700 3130.27300
zoomBox 33.38300 3128.38900 38.07700 3130.74300
zoomBox 33.38300 3128.62400 38.07700 3130.97800
zoomBox 34.55600 3129.44500 36.32900 3130.33400
zoomBox 35.14700 3129.85600 35.44600 3130.00600
zoomBox 34.94300 3129.72400 35.73900 3130.12300
zoomBox 34.81700 3129.64400 35.92000 3130.19700
zoomBox 34.73800 3129.59300 36.03500 3130.24300
zoomBox 34.94000 3129.72300 35.73900 3130.12400
zoomBox 34.93900 3129.68300 35.73900 3130.08400
zoomBox 34.93900 3129.64300 35.73900 3130.04400
zoomBox 35.13200 3129.73800 35.55100 3129.94800
zoomBox 35.25500 3129.79300 35.44300 3129.88700
zoomBox 35.30900 3129.81800 35.39400 3129.86100
zoomBox 35.32600 3129.82800 35.37200 3129.85100
zoomBox 35.33400 3129.83300 35.35700 3129.84500
zoomBox 35.33500 3129.83400 35.35300 3129.84300
zoomBox 35.33500 3129.82700 35.35300 3129.83600
zoomBox 35.32400 3129.81700 35.37600 3129.84300
zoomBox 35.31300 3129.80600 35.40100 3129.85000
zoomBox 35.29700 3129.79000 35.44100 3129.86200
zoomBox 35.18700 3129.68000 35.72000 3129.94700
zoomBox 34.78300 3129.28100 36.74700 3130.26600
zoomBox 33.59800 3128.13800 39.73000 3131.21300
zoomBox 29.00600 3123.74400 51.51400 3135.03200
zoomBox 15.66500 3110.95000 85.87800 3146.16200
zoomBox 12.25300 3107.70100 94.85600 3149.12700
zoomBox 12.25200 3049.69900 94.85600 3091.12500
zoomBox 12.25200 3016.55500 94.85600 3057.98100
zoomBox -179.32300 2841.85500 624.47200 3244.96100
zoomBox -629.63400 1554.79600 1877.70700 2812.23600
zoomBox -629.63400 800.33200 1877.70700 2057.77200
zoomBox -629.63400 45.86800 1877.70700 1303.30800
zoomBox -629.63400 -960.08400 1877.70700 297.35600
zoomBox -629.63400 -834.34000 1877.70700 423.10000
zoomBox -629.63400 -708.59600 1877.70700 548.84400
zoomBox -629.63400 -457.10800 1877.70700 800.33200
zoomBox -537.58800 -322.77000 1593.65200 746.05400
zoomBox -963.83600 -322.77000 1167.40400 746.05400
zoomBox -770.08300 -124.56600 769.73800 647.65900
zoomBox -188.90400 188.63600 114.24700 340.66700
zoomBox -219.33600 181.04400 137.31200 359.90400
zoomBox -297.25900 161.60400 196.37300 409.16200
zoomBox -219.33700 181.04300 137.31300 359.90400
zoomBox -148.00700 181.04300 208.64300 359.90400
zoomBox -112.34200 181.04300 244.30800 359.90400
zoomBox -112.34200 91.61300 244.30800 270.47400
zoomBox -112.34200 -15.70300 244.30800 163.15800
zoomBox -3.74400 21.83200 130.76800 89.29000
zoomBox 32.83700 34.47600 92.52200 64.40800
deselectAll
selectInst CPU_wrapper/L1CI/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 35.611 35.506 192.411 1923.406
zoomBox 33.43500 34.85300 84.16700 60.29500
zoomBox 32.83700 34.47600 92.52200 64.40800
zoomBox 26.86800 34.47600 86.55300 64.40800
zoomBox 20.89900 34.47600 80.58400 64.40800
zoomBox 14.93000 34.47600 74.61500 64.40800
zoomBox 10.99700 33.69700 81.21400 68.91100
zoomBox 6.37000 32.78100 88.97800 74.20900
zoomBox 6.37000 24.49500 88.97800 65.92300
zoomBox 6.37000 16.20900 88.97800 57.63700
zoomBox 6.37000 12.06600 88.97800 53.49400
zoomBox -1.89100 12.06600 80.71700 53.49400
zoomBox 22.33300 23.94400 48.81700 37.22600
zoomBox 22.33300 25.27200 48.81700 38.55400
zoomBox 22.33300 26.60000 48.81700 39.88200
zoomBox 31.21500 31.20900 39.70600 35.46700
zoomBox 31.21500 31.63500 39.70600 35.89300
zoomBox 31.21500 32.91300 39.70600 37.17100
zoomBox 31.21500 33.33900 39.70600 37.59700
zoomBox 34.26700 34.72400 37.47300 36.33200
zoomBox 33.94600 34.72400 37.15200 36.33200
zoomBox 33.62500 34.72400 36.83100 36.33200
zoomBox 34.57200 35.11300 35.99600 35.82700
zoomBox 34.43000 35.11300 35.85400 35.82700
zoomBox 34.57200 35.11300 35.99600 35.82700
zoomBox 34.71400 35.11300 36.13800 35.82700
zoomBox 34.71400 35.25500 36.13800 35.96900
zoomBox 34.71400 35.18400 36.13800 35.89800
zoomBox 34.71400 34.97100 36.13800 35.68500
zoomBox 34.95200 35.06800 35.98100 35.58400
zoomBox 35.05000 35.11500 35.92400 35.55300
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 35.357 35.322 192.157 1923.222
zoomBox 35.20800 35.22100 35.59900 35.41700
zoomBox 35.27600 35.26800 35.45000 35.35500
zoomBox 35.30000 35.28300 35.40800 35.33700
zoomBox 35.30000 35.27800 35.40800 35.33200
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 35.341 35.282 192.141 1923.182
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 35.342 35.281 192.142 1923.181
zoomBox 35.28500 35.27400 35.43600 35.35000
zoomBox 35.25100 35.26700 35.50000 35.39200
zoomBox 35.27400 35.27100 35.45500 35.36200
zoomBox 35.31100 35.27800 35.38100 35.31300
setObjFPlanBox Instance CPU_wrapper/L1CI/DA/i_data_array 35.341 35.281 192.141 1923.181
zoomBox 35.31800 35.27800 35.37000 35.30400
zoomBox 35.32800 35.27700 35.35400 35.29000
zoomBox 35.33000 35.27700 35.35200 35.28800
zoomBox 35.33200 35.27700 35.35000 35.28600
zoomBox 35.33000 35.27600 35.35200 35.28700
zoomBox 35.33200 35.27600 35.34900 35.28500
zoomBox 35.33300 35.27600 35.35100 35.28500
zoomBox 35.33300 35.27700 35.35100 35.28600
zoomBox 35.33300 35.28200 35.35100 35.29100
zoomBox 35.33300 35.27900 35.35100 35.28800
zoomBox 35.33300 35.27300 35.35100 35.28200
zoomBox 35.33300 35.26600 35.35100 35.27500
zoomBox 35.33300 35.27200 35.35100 35.28100
zoomBox 35.33300 35.27800 35.35100 35.28700
zoomBox 35.31500 35.27100 35.36900 35.29800
zoomBox 35.26000 35.25500 35.43200 35.34100
zoomBox 35.36200 35.25500 35.53400 35.34100
zoomBox 35.17700 35.20200 35.71700 35.47300
zoomBox 34.59900 35.04000 36.28800 35.88700
zoomBox 35.78200 35.04000 37.47100 35.88700
zoomBox 33.98100 34.53700 39.25500 37.18200
zoomBox 28.36800 32.97200 44.81900 41.22200
zoomBox 41.52800 32.97200 57.97900 41.22200
zoomBox 19.47000 26.81500 79.84800 57.09500
zoomBox -61.47200 4.22900 160.11000 115.35300
zoomBox 115.79200 4.22900 337.37400 115.35300
zoomBox -120.00700 -61.56900 571.19500 285.07100
zoomBox -555.12800 -182.98600 1002.66800 598.25400
zoomBox 67.99200 -182.98600 1625.78800 598.25400
zoomBox 379.55200 -182.98600 1937.34800 598.25400
zoomBox 67.99200 -182.98600 1625.78800 598.25400
zoomBox -399.34800 -182.98600 1158.44800 598.25400
zoomBox -87.78800 -182.98600 1470.00800 598.25400
deselectAll
selectInst CPU_wrapper/L1CD/DA/i_data_array
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 642.336 40.948 799.136 1928.848
zoomBox 571.74600 -12.81200 793.33000 98.31300
zoomBox 624.39800 0.62600 740.06700 58.63400
zoomBox 642.64600 9.92800 726.21800 51.84000
zoomBox 669.17400 24.07400 706.25700 42.67100
zoomBox 679.78900 31.92900 699.14900 41.63800
zoomBox 685.32800 36.02900 695.43800 41.09900
zoomBox 684.28400 35.18800 696.17800 41.15300
zoomBox 683.05700 34.19800 697.05000 41.21600
zoomBox 681.61300 33.03400 698.07600 41.29000
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 641.845 36.287 798.645 1924.187
zoomBox 687.08600 34.63600 694.39200 38.30000
zoomBox 687.75300 34.80900 693.96400 37.92400
zoomBox 689.21100 35.18900 693.02700 37.10300
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 641.788 35.346 798.588 1923.246
zoomBox 690.60200 35.45100 692.04400 36.17400
zoomBox 690.60200 35.16300 692.04400 35.88600
zoomBox 690.60200 34.80300 692.04400 35.52600
zoomBox 690.60200 34.94700 692.04400 35.67000
zoomBox 690.72700 34.97600 691.95300 35.59100
zoomBox 690.92200 35.02200 691.80900 35.46700
zoomBox 690.99900 35.04000 691.75300 35.41800
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 641.795 35.304 798.595 1923.204
zoomBox 691.15800 35.14000 691.62100 35.37200
zoomBox 691.19600 35.16300 691.59000 35.36100
zoomBox 691.25300 35.20000 691.54000 35.34400
zoomBox 691.34000 35.25400 691.46800 35.31800
zoomBox 691.35000 35.26000 691.45900 35.31500
zoomBox 691.36600 35.27000 691.44600 35.31000
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 641.788 35.28 798.588 1923.18
zoomBox 691.38500 35.27600 691.42700 35.29700
zoomBox 691.38500 35.27400 691.42700 35.29500
zoomBox 691.38500 35.27200 691.42700 35.29300
zoomBox 691.38500 35.27000 691.42700 35.29100
zoomBox 691.39500 35.27200 691.41700 35.28300
zoomBox 691.39600 35.27200 691.41600 35.28200
zoomBox 691.39800 35.27200 691.41500 35.28100
zoomBox 691.39700 35.27400 691.41500 35.28300
zoomBox 691.39700 35.27500 691.41500 35.28400
zoomBox 691.39700 35.26900 691.41500 35.27800
zoomBox 691.37100 35.25900 691.43300 35.29000
zoomBox 691.31200 35.23400 691.48100 35.31900
zoomBox 691.11100 35.15600 691.64400 35.42300
zoomBox 690.62300 34.96500 692.04100 35.67600
zoomBox 689.33200 34.46100 693.09700 36.34900
zoomBox 688.53500 34.15000 693.74800 36.76400
zoomBox 685.90800 33.12400 695.89600 38.13300
zoomBox 680.87500 31.16100 700.01000 40.75700
zoomBox 663.39200 25.15600 714.12900 50.60100
zoomBox 617.03400 9.23300 751.56600 76.70100
zoomBox 494.05900 -29.55600 850.77300 149.33700
zoomBox 672.41400 -29.55600 1029.12800 149.33700
zoomBox 779.42700 -29.55600 1136.14100 149.33700
zoomBox 886.44000 -29.55600 1243.15400 149.33700
zoomBox 993.45300 -29.55600 1350.16700 149.33700
zoomBox 993.45300 -47.44500 1350.16700 131.44800
zoomBox 993.45300 -83.22300 1350.16700 95.67000
addHaloToBlock {15 15 15 15} -allBlock
zoomBox 993.45300 -101.11200 1350.16700 77.78100
zoomBox 993.45300 -119.00100 1350.16700 59.89200
zoomBox 960.86100 -146.59600 1380.52500 63.86700
zoomBox 877.40700 -217.25500 1458.25900 74.04400
zoomBox 688.44900 -377.24400 1634.26900 97.08800
zoomBox 759.85500 -313.51600 1563.80200 89.66600
zoomBox 872.13900 -213.30500 1452.99300 77.99500
zoomBox 688.44600 -377.24600 1634.27100 97.08800
zoomBox 688.44600 -187.51400 1634.27100 286.82000
zoomBox 688.44600 -92.64800 1634.27100 381.68600
redraw
setDrawView place
redraw
redraw
redraw
addRoutingHalo -allBlocks -space 5 -bottom metal1 -top metal6
redraw
redraw
redraw
redraw
redraw
setLayerPreference node_layer -isVisible 1
setLayerPreference node_route -isVisible 1
zoomBox 609.95900 -157.88700 1722.69400 400.15300
setLayerPreference node_layer -isVisible 0
zoomBox 461.65200 -209.01500 1770.75200 447.50300
zoomBox 288.56200 -269.44300 1828.68000 502.93100
zoomBox -418.03600 -524.31800 2089.79200 733.36600
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 641.79 41.312 798.59 1929.212
zoomBox -126.36000 -393.75500 1685.54600 514.92200
zoomBox -12.44900 -342.76500 1527.67200 429.61100
zoomBox 353.64100 -192.69900 1157.59600 210.48700
zoomBox 464.58600 -147.22100 1045.44400 144.08100
zoomBox 539.75500 -106.60900 959.42600 103.85700
zoomBox 593.83500 -77.00900 897.04700 75.05300
zoomBox 629.55500 -50.75000 848.62700 59.11500
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 642.317 36.963 799.117 1924.863
zoomBox 675.25300 -0.32200 757.87900 41.11500
zoomBox 683.16600 8.37700 742.86500 38.31600
zoomBox 683.16600 14.36500 742.86500 44.30400
zoomBox 683.16600 20.35300 742.86500 50.29200
zoomBox 697.29700 29.98800 719.81300 41.28000
zoomBox 700.59200 32.30800 714.42100 39.24300
zoomBox 701.37900 32.86200 713.13400 38.75700
zoomBox 702.04800 33.33200 712.04000 38.34300
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 642.014 35.415 798.814 1923.315
zoomBox 704.38200 34.59200 708.15100 36.48200
zoomBox 705.26100 35.06600 706.68500 35.78000
zoomBox 705.51500 35.20900 706.25800 35.58200
setObjFPlanBox Instance CPU_wrapper/L1CD/DA/i_data_array 642.007 35.281 798.807 1923.181
zoomBox 705.68300 35.24000 705.96600 35.38200
zoomBox 705.75000 35.25400 705.85700 35.30800
zoomBox 705.77100 35.26000 705.82100 35.28500
zoomBox 705.78300 35.26800 705.80900 35.28100
zoomBox 705.78700 35.27200 705.80500 35.28100
zoomBox 705.76500 35.25600 705.82700 35.28700
zoomBox 705.69800 35.20400 705.89500 35.30300
zoomBox 705.49100 35.04500 706.10800 35.35400
zoomBox 704.84900 34.55500 706.77600 35.52100
zoomBox 702.85300 33.03500 708.86800 36.05200
zoomBox 698.00400 29.34800 713.95900 37.34900
zoomBox 681.51500 16.80200 731.28100 41.76000
zoomBox 641.51100 -13.69300 773.46800 52.48400
uiSetTool select
zoomBox 591.73000 -104.50800 1003.36200 101.92700
zoomBox 499.86900 -272.09000 1427.59000 193.16500
zoomBox 292.83900 -649.77600 2383.69200 398.79400
zoomBox -47.93900 -1271.46300 3957.48000 737.26800
zoomBox 456.72300 -919.22100 2916.55300 314.39200
zoomBox 140.28200 -1157.26300 3544.89100 550.16000
zoomBox -297.70100 -1486.73300 4414.56300 876.48300
zoomBox -297.70100 -777.76700 4414.56300 1585.44900
zoomBox -297.70100 -305.12300 4414.56300 2058.09300
zoomBox -297.70100 -68.80100 4414.56300 2294.41500
zoomBox -297.70100 167.52100 4414.56300 2530.73700
zoomBox -297.70100 -68.80100 4414.56300 2294.41500
zoomBox -576.22600 -278.32000 4967.61400 2501.93400
zoomBox -903.90300 -524.81300 5618.26200 2746.07400
zoomBox -613.87700 -209.49100 4929.96400 2570.76400
zoomBox -367.35500 58.53400 4344.91000 2421.75000
zoomBox -903.90500 -524.81400 5618.26200 2746.07400
zoomBox -1646.53400 -1332.21600 7380.68700 3194.96500
zoomBox -1646.53400 -426.78000 7380.68700 4100.40100
deselectAll
selectInst CPU_wrapper/L1CD/TA/i_tag_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {rt bl } -skip_side {top left } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst CPU_wrapper/L1CI/TA/i_tag_array
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lt rt } -skip_side {top } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
deselectAll
selectInst DM1/i_SRAM
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal6 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND VCC} -type block_rings -around selected -layer {top metal5 bottom metal5 left metal4 right metal4} -width {top 3 bottom 3 left 3 right 3} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {lt br } -skip_side {top right } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
zoomBox -628.54100 928.44900 4915.30100 3708.70400
zoomBox 380.56600 2271.85200 2471.42600 3320.42500
setLayerPreference via3 -isVisible 1
setLayerPreference via3 -isVisible 0
setLayerPreference metal4 -isVisible 1
setLayerPreference metal4 -isVisible 0
setLayerPreference via5 -isVisible 1
setLayerPreference metal6 -isVisible 1
setLayerPreference metal6 -isVisible 0
setLayerPreference via5 -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_blockage -isVisible 1
setLayerPreference node_blockage -isVisible 0
setLayerPreference node_row -isVisible 1
setLayerPreference node_power -isVisible 0
setLayerPreference node_power -isVisible 1
setLayerPreference node_power -isVisible 0
setLayerPreference node_power -isVisible 1
setLayerPreference io -isVisible 0
setLayerPreference io -isVisible 1
setLayerPreference io -isVisible 0
setLayerPreference io -isVisible 1
setLayerPreference block -isVisible 0
setLayerPreference block -isVisible 1
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
setDrawView place
setDrawView fplan
setDrawView place
redraw
redraw
redraw
redraw
zoomBox 434.59900 2593.14200 1526.04200 3140.50400
zoomBox 502.86500 2817.43800 987.14700 3060.30700
zoomBox 559.69600 2909.19700 774.57600 3016.96000
zoomBox 559.69600 2984.62900 774.57600 3092.39200
zoomBox 559.69600 2995.40500 774.57600 3103.16800
zoomBox 559.69600 3049.28500 774.57600 3157.04800
zoomBox 559.69600 3070.83700 774.57600 3178.60000
setLayerPreference via -isVisible 1
setLayerPreference via -isVisible 0
setLayerPreference metal1 -isVisible 1
setLayerPreference metal1 -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_track -isVisible 1
zoomBox 422.14100 3025.49800 833.78600 3231.93900
zoomBox 61.52100 2906.63500 989.26800 3371.90300
setLayerPreference node_track -isVisible 0
setLayerPreference node_track -isVisible 1
setLayerPreference node_track -isVisible 0
setLayerPreference node_overlay -isVisible 1
fit
setLayerPreference node_overlay -isVisible 0
setLayerPreference node_overlay -isVisible 1
fit
setLayerPreference node_overlay -isVisible 0
setLayerPreference io -isSelectable 0
setLayerPreference io -isSelectable 1
setLayerPreference io -isVisible 0
setLayerPreference io -isVisible 1
setLayerPreference areaIo -isVisible 0
setLayerPreference areaIo -isVisible 1
setLayerPreference areaIo -isVisible 0
setLayerPreference areaIo -isVisible 1
setLayerPreference areaIo -isVisible 0
setLayerPreference areaIo -isVisible 1
setLayerPreference node_blockage -isVisible 1
setLayerPreference node_blockage -isVisible 0
setLayerPreference metal4 -isVisible 1
setLayerPreference metal4 -isVisible 0
setLayerPreference via3 -isVisible 1
setLayerPreference via3 -isVisible 0
setLayerPreference metal3 -isVisible 1
setLayerPreference metal3 -isVisible 0
setLayerPreference via2 -isVisible 1
setLayerPreference via2 -isVisible 0
zoomBox -1559.62300 281.33100 4341.41100 3240.71900
zoomBox -1025.92200 1005.07700 3237.57500 3143.23500
zoomBox -798.64700 1302.72700 2825.32600 3120.16100
zoomBox -605.46300 1555.72900 2474.91400 3100.54800
zoomBox -605.46300 1710.21100 2474.91400 3255.03000
zoomBox -605.46300 1864.69300 2474.91400 3409.51200
zoomBox -167.31900 2361.44900 1724.41900 3310.16200
zoomBox -62.72200 2480.03800 1545.25600 3286.44400
zoomBox 26.18600 2580.83900 1392.96700 3266.28400
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set eco_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set enc_enable_print_mode_command_reset_options 1
set init_design_uniquify 1
set init_gnd_net GND
set init_lef_file {/usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/SOCE/lef/header6_V55_20ka_cic.lef /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/SOCE/lef/fsa0m_a_generic_core.lef /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/SOCE/lef/fsa0m_a_t33_generic_io.lef  ../sim/SRAM/SRAM.lef ../sim/data_array/data_array.lef ../sim/tag_array/tag_array.lef /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/SOCE/lef/FSA0M_A_GENERIC_CORE_ANT_V55.lef}
set init_mmmc_file ../script/MMMC.view
set init_pwr_net VCC
set init_remove_assigns 1
set init_top_cell top
set init_verilog ../syn/top_syn.v
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 192
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
saveIoFile -locations -temp ../pr/top.io
saveIoFile -byOrder -temp ../pr/top.io
loadIoFile ../pr/top.io
