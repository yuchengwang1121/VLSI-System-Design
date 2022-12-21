################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(359,56);
spyCacheTagValuesFromBatch(["AC_COHERENCY06_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_CONV_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_CONV_SUB_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_DATAHOLD01_SFF_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_DATAHOLD_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_GLITCH03_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_INITSTATE01_SS_SCH"]);
spyCacheTagValuesFromBatch(["AC_INITSTATE01_SS_SCH01"]);
spyCacheTagValuesFromBatch(["ADV_CLK_CDC_ANALYSIS_SS"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_RTL2NETLISTSTAT"]);
spyCacheTagValuesFromBatch(["ADV_CLK_SYNC_SS_SCH"]);
spyCacheTagValuesFromBatch(["Ac_cdc01a_SFF_SS_SCH"]);
spyCacheTagValuesFromBatch(["CLOCK_SYNC05A_SS_SCH"]);
spyCacheTagValuesFromBatch(["CLOCK_SYNC05_SS_SCH"]);
spyCacheTagValuesFromBatch(["CLOCK_SYNC06A_SS_SCH"]);
spyCacheTagValuesFromBatch(["CLOCK_SYNC06_SS_SCH"]);
spyCacheTagValuesFromBatch(["Clock_conv01_WRN"]);
spyCacheTagValuesFromBatch(["QS_CSV_TAG"]);
spyCacheTagValuesFromBatch(["RESET_INFO_01_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SDC_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_BBOX01_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_RTL"]);
spyCacheTagValuesFromBatch(["SETUP_LIBRARY_SS_SCH"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SDC_TAG"]);
spyCacheTagValuesFromBatch(["SETUP_PORT_SS_SCH"]);
spyCacheTagValuesFromBatch(["VIRT_CLK_MAP_SS_SCH"]);
spyCacheTagValuesFromBatch(["pe_crossprobe_tag"]);
spyParseTextMessageTagFile("./spyglass-1/cdc/cdc_verify/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(1939,"./spyglass-1/cdc/cdc_verify/spyglass.vdb");

1;