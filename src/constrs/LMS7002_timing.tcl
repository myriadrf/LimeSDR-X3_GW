# ----------------------------------------------------------------------------
# FILE: 	lms7_timing.xdc
# DESCRIPTION:	Timing constrains file for lms7 lml interface
# DATE:	January 16, 2023
# AUTHOR(s):	Lime Microsystems
# REVISIONS:
# ----------------------------------------------------------------------------
# NOTES:
#
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Primary Clocks
# ----------------------------------------------------------------------------
create_clock -period 8.138 -name LMS1_MCLK1 [get_ports lms_o_mclk1]

create_clock -period 8.138 -name LMS1_MCLK2 [get_ports lms_o_mclk2]

# ----------------------------------------------------------------------------
# Virtual clocks
# ----------------------------------------------------------------------------
#Adding an offset to the clock to satisfy timing analysis, since the phase can be changed during runtime
create_clock -period 8.138 -name LMS1_MCLK2_VIRT -waveform {3.800 7.869}
# ----------------------------------------------------------------------------
# Generated clocks
# ----------------------------------------------------------------------------
#Adding an offset to the clock to satisfy timing analysis, since the phase can be changed during runtime
create_generated_clock -name LMS1_FCLK1 -source [get_pins inst2_pll_top/inst0_tx_pll_top_cyc5/XILINX_PLL_DDIO.XILINX_PLL_DDIO/C] -multiply_by 1 [get_ports lms_i_fclk1] -waveform {1 5.069}

# ----------------------------------------------------------------------------
#Input constraints
# ----------------------------------------------------------------------------

#LMS1
set_input_delay -clock [get_clocks LMS1_MCLK2_VIRT] -max 1.000 [get_ports {{lms_diq2[*]} lms_io_iqsel2}]

set_input_delay -clock [get_clocks LMS1_MCLK2_VIRT] -min -0.200 [get_ports {{lms_diq2[*]} lms_io_iqsel2}]

set_input_delay -clock [get_clocks LMS1_MCLK2_VIRT] -clock_fall -max -add_delay 1.000 [get_ports {{lms_diq2[*]} lms_io_iqsel2}]

set_input_delay -clock [get_clocks LMS1_MCLK2_VIRT] -clock_fall -min -add_delay -0.200 [get_ports {{lms_diq2[*]} lms_io_iqsel2}]


# ----------------------------------------------------------------------------
#Output constraints
# ----------------------------------------------------------------------------
#LMS1
set_output_delay -clock [get_clocks LMS1_FCLK1] -max 1 [get_ports {{lms_diq1[*]} lms_io_iqsel1}]
set_output_delay -clock [get_clocks LMS1_FCLK1] -min -0.2 [get_ports {{lms_diq1[*]} lms_io_iqsel1}]

set_output_delay -clock [get_clocks LMS1_FCLK1] -clock_fall -max -add_delay 1 [get_ports {{lms_diq1[*]} lms_io_iqsel1}]
set_output_delay -clock [get_clocks LMS1_FCLK1] -clock_fall -min -add_delay -0.2 [get_ports {{lms_diq1[*]} lms_io_iqsel1}]

set_false_path -to [get_ports LMS1_FCLK1]
















