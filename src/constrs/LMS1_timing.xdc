# ----------------------------------------------------------------------------
# FILE: 	LMS1_timing.sdc
# DESCRIPTION:	Timing constrains file for TimeQuest
# DATE:	June 2, 2017
# AUTHOR(s):	Lime Microsystems
# REVISIONS:
# ----------------------------------------------------------------------------
# NOTES:
#
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Time settings
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Timing parameters
# ----------------------------------------------------------------------------
# LMS7002
#LMS_MCLK2 period

#Setup and hold times from datasheet


# Tsu and Th based delays
#set LMS7_IN_MAX_DELAY [expr -$LMS1_LMS7_Tsu]
#set LMS7_IN_MIN_DELAY [expr $LMS1_LMS7_Th - $LMS1_MCLK2_period/2]

# Tco based

# ----------------------------------------------------------------------------
# Primary Clocks
# ----------------------------------------------------------------------------
create_clock -period 10 -name LMS1_MCLK1 [get_ports LMS1_MCLK1]

create_clock -period 10 -name LMS1_MCLK2 [get_ports LMS1_MCLK2]

# ----------------------------------------------------------------------------
# Virtual clocks
# ----------------------------------------------------------------------------
create_clock -period 10 -name LMS1_MCLK2_VIRT

# ----------------------------------------------------------------------------
# Generated clocks
# ----------------------------------------------------------------------------

create_generated_clock -name LMS1_TXPLL_C0 -source [get_pins inst1/inst0/inst/clk_in1] -divide_by 1 -multiply_by 1 [get_pins inst1/inst0/inst/clk_out1]

#create_generated_clock -name LMS1_TXPLL_C1 -source [get_pins inst1/inst0/inst/clk_in1] -edges {1 2 3} -edge_shift {2.5 2.5 2.5} [get_pins inst1/inst0/inst/clk_out2]
create_generated_clock -name LMS1_TXPLL_C1 -source [get_pins inst1/inst0/inst/clk_in1] -divide_by 1 -multiply_by 1  [get_pins inst1/inst0/inst/clk_out2]

create_generated_clock -name LMS1_RXPLL_C0 -source [get_pins inst1/inst1/inst/clk_in1] -divide_by 1 -multiply_by 1 [get_pins inst1/inst1/inst/clk_out1]

#create_generated_clock -name LMS1_RXPLL_C1 -source [get_pins inst1/inst1/inst/clk_in1] -edges {1 2 3} -edge_shift {2.5 2.5 2.5} [get_pins inst1/inst1/inst/clk_out2]
create_generated_clock -name LMS1_RXPLL_C1 -source [get_pins inst1/inst1/inst/clk_in1] -divide_by 1 -multiply_by 1 [get_pins inst1/inst1/inst/clk_out2]

#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets LMS1_MCLK1_IBUF]
#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets LMS1_MCLK2_IBUF]
#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets LMS2_MCLK1_IBUF]
#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets LMS2_MCLK2_IBUF]

set_clock_groups -asynchronous -group [get_clocks LMS1_TXPLL_C1] -group [get_clocks LMS1_RXPLL_C1]








