# ----------------------------------------------------------------------------
# FILE: 	LMS2_timing.sdc
# DESCRIPTION:	Timing constrains file for TimeQuest
# DATE:	June 2, 2017
# AUTHOR(s):	Lime Microsystems
# REVISIONS:
# ----------------------------------------------------------------------------
# NOTES:
#
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
#Time settings
# ----------------------------------------------------------------------------


# ----------------------------------------------------------------------------
#Timing parameters
# ----------------------------------------------------------------------------
#LMS7002
#LMS_MCLK2 period
#Setup and hold times from datasheet


#Tsu and Th based delays
#set LMS7_IN_MAX_DELAY [expr -$LMS7_Tsu]
#set LMS7_IN_MIN_DELAY [expr $LMS7_Th - $MCLK2_period/2]

#Tco based

# ----------------------------------------------------------------------------
# Path to instances
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
#Base clocks
# ----------------------------------------------------------------------------

create_clock -period 8.138 -name LMS2_MCLK1 [get_ports LMS2_MCLK1]

create_clock -period 8.138 -name LMS2_MCLK2 [get_ports LMS2_MCLK2]


# ----------------------------------------------------------------------------
#Virtual clocks
# ----------------------------------------------------------------------------
create_clock -period 8.138 -name LMS2_MCLK2_VIRT

# ----------------------------------------------------------------------------
#Generated clocks
# ----------------------------------------------------------------------------

create_generated_clock -name LMS2_FCLK1 -source [get_pins inst1_pll_top/inst2_tx_pll_top_cyc5/XILINX_PLL_DDIO.XILINX_PLL_DDIO/C] -multiply_by 1 [get_ports LMS2_FCLK1]
#create_generated_clock -name LMS2_FCLK2 -source [get_pins inst1_pll_top/inst3_rx_pll_top_cyc5/XILINX_PLL_DDIO.XILINX_PLL_DDIO/C] -multiply_by 1 [get_ports LMS2_FCLK2]
# ----------------------------------------------------------------------------
#Input constraints
# ----------------------------------------------------------------------------
#LMS2
set_input_delay -clock [get_clocks LMS2_MCLK2_VIRT] -max 4.050 [get_ports {{LMS2_DIQ2_D[*]} LMS2_ENABLE_IQSEL2}]

set_input_delay -clock [get_clocks LMS2_MCLK2_VIRT] -min 2.900 [get_ports {{LMS2_DIQ2_D[*]} LMS2_ENABLE_IQSEL2}]

set_input_delay -clock [get_clocks LMS2_MCLK2_VIRT] -clock_fall -max -add_delay 4.050 [get_ports {{LMS2_DIQ2_D[*]} LMS2_ENABLE_IQSEL2}]

set_input_delay -clock [get_clocks LMS2_MCLK2_VIRT] -clock_fall -min -add_delay 2.900 [get_ports {{LMS2_DIQ2_D[*]} LMS2_ENABLE_IQSEL2}]

# ----------------------------------------------------------------------------
#Output constraints
# ----------------------------------------------------------------------------
#LMS2
set_output_delay -clock [get_clocks LMS2_FCLK1] -max 1.000 [get_ports {{LMS2_DIQ1_D[*]} LMS2_ENABLE_IQSEL1}]

set_output_delay -clock [get_clocks LMS2_FCLK1] -min -0.800 [get_ports {{LMS2_DIQ1_D[*]} LMS2_ENABLE_IQSEL1}]

set_output_delay -clock [get_clocks LMS2_FCLK1] -clock_fall -max -add_delay 1.000 [get_ports {{LMS2_DIQ1_D[*]} LMS2_ENABLE_IQSEL1}]

set_output_delay -clock [get_clocks LMS2_FCLK1] -clock_fall -min -add_delay -0.800 [get_ports {{LMS2_DIQ1_D[*]} LMS2_ENABLE_IQSEL1}]



# ----------------------------------------------------------------------------
#Exceptions
# ----------------------------------------------------------------------------
set_false_path -to [get_ports LMS2_FCLK1]
#set_false_path -to [get_ports LMS2_FCLK2]















