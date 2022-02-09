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
#Timing parameters
# ----------------------------------------------------------------------------
#LMS7002
#LMS_MCLK2 period

#Setup and hold times from datasheet


#set TPERIOD 8.000

#Tsu and Th based delays
#set LMS7_IN_MAX_DELAY [expr -$LMS1_LMS7_Tsu]
#set LMS7_IN_MIN_DELAY [expr $LMS1_LMS7_Th - $LMS1_MCLK2_period/2]

#Tco based

# ----------------------------------------------------------------------------
# Primary Clocks
# ----------------------------------------------------------------------------
create_clock -period 8.138 -name LMS1_MCLK1 [get_ports LMS1_MCLK1]

create_clock -period 8.138 -name LMS1_MCLK2 [get_ports LMS1_MCLK2]

# ----------------------------------------------------------------------------
# Virtual clocks
# ----------------------------------------------------------------------------
create_clock -period 8.138 -name LMS1_MCLK2_VIRT

# ----------------------------------------------------------------------------
# Generated clocks
# ----------------------------------------------------------------------------

create_generated_clock -name LMS1_FCLK1 -source [get_pins inst1_pll_top/inst0_tx_pll_top_cyc5/XILINX_PLL_DDIO.XILINX_PLL_DDIO/C] -multiply_by 1 [get_ports LMS1_FCLK1]

##  B.J.
##create_generated_clock -name LMS1_FCLK2 -source [get_pins inst1_pll_top/inst1_rx_pll_top_cyc5/XILINX_PLL_DDIO.XILINX_PLL_DDIO/C] -multiply_by 1 -phase 90 [get_ports LMS1_FCLK2]
##create_generated_clock -name LMS1_MCLK2 -source [get_pins inst1_pll_top/inst1_rx_pll_top_cyc5/XILINX_PLL_DDIO.XILINX_PLL_DDIO/C] -multiply_by 1 [get_ports LMS1_MCLK2]

##create_generated_clock -name LMS1_MCLK2_1 -source [get_ports LMS1_MCLK2] -multiply_by 1 -phase 0 [get_pins inst1_pll_top/inst1_rx_pll_top_cyc5/XILINX_MMCM.MMCM_inst1/clk_out2]

# ----------------------------------------------------------------------------
#Input constraints
# ----------------------------------------------------------------------------
#  B.J.
#set MIN_DELAY_RX 3.900

#set MAX_DELAY_RX 5.050

#LMS1
set_input_delay -clock [get_clocks LMS1_MCLK2_VIRT] -max 4.050 [get_ports {{LMS1_DIQ2_D[*]} LMS1_ENABLE_IQSEL2}]

set_input_delay -clock [get_clocks LMS1_MCLK2_VIRT] -min 2.900 [get_ports {{LMS1_DIQ2_D[*]} LMS1_ENABLE_IQSEL2}]

set_input_delay -clock [get_clocks LMS1_MCLK2_VIRT] -clock_fall -max -add_delay 4.050 [get_ports {{LMS1_DIQ2_D[*]} LMS1_ENABLE_IQSEL2}]

set_input_delay -clock [get_clocks LMS1_MCLK2_VIRT] -clock_fall -min -add_delay 2.900 [get_ports {{LMS1_DIQ2_D[*]} LMS1_ENABLE_IQSEL2}]


# ----------------------------------------------------------------------------
#Output constraints
# ----------------------------------------------------------------------------
#  B.J.
#was: set MAX_DELAY_TX 2.800  $MAX_DELAY_TX

#was: set MIN_DELAY_TX 1.000  $MIN_DELAY_TX




#LMS1
set_output_delay -clock [get_clocks LMS1_FCLK1] -max 2.800 [get_ports {{LMS1_DIQ1_D[*]} LMS1_ENABLE_IQSEL1}]
set_output_delay -clock [get_clocks LMS1_FCLK1] -min 1.000 [get_ports {{LMS1_DIQ1_D[*]} LMS1_ENABLE_IQSEL1}]

set_output_delay -clock [get_clocks LMS1_FCLK1] -clock_fall -max -add_delay 2.800 [get_ports {{LMS1_DIQ1_D[*]} LMS1_ENABLE_IQSEL1}]
set_output_delay -clock [get_clocks LMS1_FCLK1] -clock_fall -min -add_delay 1.000 [get_ports {{LMS1_DIQ1_D[*]} LMS1_ENABLE_IQSEL1}]

set_output_delay -clock [get_clocks LMS1_FCLK1] -max 3.800 [get_ports {LMS1_DIQ1_D[11]}]
set_output_delay -clock [get_clocks LMS1_FCLK1] -min 2.000 [get_ports {LMS1_DIQ1_D[11]}]

set_output_delay -clock [get_clocks LMS1_FCLK1] -clock_fall -max -add_delay 3.800 [get_ports {LMS1_DIQ1_D[11]}]
set_output_delay -clock [get_clocks LMS1_FCLK1] -clock_fall -min -add_delay 2.000 [get_ports {LMS1_DIQ1_D[11]}]

set_false_path -to [get_ports LMS1_FCLK1]



















