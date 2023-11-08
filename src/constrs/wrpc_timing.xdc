#   ---------------------------------------------------------------------------`
#   -- Clocks/resets
#   ---------------------------------------------------------------------------

create_clock -period  8.000 -name WR_PTP_CLK0_125 [get_ports WR_PTP_CLK0_125_P]
create_clock -period  8.000 -name WR_PTP_CLK1_125 [get_ports WR_PTP_CLK1_125_P]
create_clock -period 50.000 -name WR_PTP_CLK0_20  [get_ports WR_PTP_CLK0_20]

#   ---------------------------------------------------------------------------`
#   -- Timing exceptions
#   ---------------------------------------------------------------------------
# Not enough clocking resources, helps to fit wrpc core into design.
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets wrpc_top_inst/cmp_xwrc_board_clbv3/cmp_xwrc_platform/gen_default_plls.gen_artix7_default_plls.clk_sys ]

#This path causes large setup violation. Clock domain crossing, it has synchronizers and it is reset path, probably safe to ignore.
set_false_path -to [get_pins -hierarchical -regexp -nocase {.*/sync_posedge.sync0_reg/D.*}]