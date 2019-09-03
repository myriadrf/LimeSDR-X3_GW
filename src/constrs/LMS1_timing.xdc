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
create_clock -period 6.250 -name LMS1_MCLK1 [get_ports LMS1_MCLK1]

create_clock -period 6.250 -name LMS1_MCLK2 [get_ports LMS1_MCLK2]

# ----------------------------------------------------------------------------
# Virtual clocks
# ----------------------------------------------------------------------------
create_clock -period 6.250 -name LMS1_MCLK2_VIRT

# ----------------------------------------------------------------------------
# Generated clocks
# ----------------------------------------------------------------------------

create_generated_clock -name LMS1_TXPLL_C0 -source [get_pins inst1/inst0/inst/clk_in1] -divide_by 1 -multiply_by 1 [get_pins inst1/inst0/inst/clk_out1]

create_generated_clock -name LMS1_TXPLL_C1 -source [get_pins inst1/inst0/inst/clk_in1] -edges {1 2 3} -edge_shift {1.563 1.563 1.563} [get_pins inst1/inst0/inst/clk_out2]









