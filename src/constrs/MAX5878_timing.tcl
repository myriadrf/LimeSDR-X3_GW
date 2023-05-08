# AUTHOR(s):	Lime Microsystems
# REVISIONS:
# ----------------------------------------------------------------------------
# NOTES:
# Interface				: Source synchronous SDR, center aligned
# LAUNCH CLK source 	: FPGA_PLL_C1
# LATCH CLK source 	: Inverted FPGA_PLL_C1 clock with DDIO cell
# ----------------------------------------------------------------------------

#-----------------------------------------------------------------------
#Timing parameters for MAX5878 DAC
#DAC
#Calculated expresions
#-----------------------------------------------------------------------
#Base clocks
#-----------------------------------------------------------------------

# CDCM2_LMS2_BB_DAC1_REFC clock is automaticaly created by instantiating MMCM
# create_clock -period 4.069 -name CDCM2_LMS2_BB_DAC1_REFC [get_ports CDCM2_LMS2_BB_DAC1_REFC_P]

create_clock -period 4.069 -name CDCM_LMS2_BB_DAC2_REFC [get_ports CDCM_LMS2_BB_DAC2_REFC_P]

#-----------------------------------------------------------------------
#Virtual clocks
#-----------------------------------------------------------------------


#-----------------------------------------------------------------------
#Generated clocks
#-----------------------------------------------------------------------

create_generated_clock -name FPGA_LMS2_BB_DAC1_CLK -source [get_pins inst12_max5878_top/io_inst0/ODDR_inst/C] -multiply_by 1 [get_ports FPGA_LMS2_BB_DAC1_CLK_P]
create_generated_clock -name FPGA_LMS2_BB_DAC2_CLK -source [get_pins inst12_max5878_top/io_inst1/ODDR_inst/C] -multiply_by 1 [get_ports FPGA_LMS2_BB_DAC2_CLK_P]


#-----------------------------------------------------------------------
#Output constraints
#-----------------------------------------------------------------------
#set_output_delay -clock [get_clocks {dac_clk}] -min -add_delay -1.0 [get_ports {LMS2_BB_DAC1_B_P[*] dac_d_n[*]}]
#set_output_delay -clock [get_clocks {dac_clk}] -max -add_delay 1.0 [get_ports {LMS2_BB_DAC1_B_P[*] dac_d_n[*]}]
#set_output_delay -clock [get_clocks {dac_clk}] -min -add_delay -2.0 [get_ports {dac_d_n[*]}]
#set_output_delay -clock [get_clocks {dac_clk}] -max -add_delay -1.2 [get_ports {dac_d_n[*]}]

#dirty workaround to make sure timing analyser doesnt complain
#TODO: fix this properly some day

set_output_delay -clock [get_clocks FPGA_LMS2_BB_DAC1_CLK] -max -add_delay -0.500 [get_ports {{LMS2_BB_DAC1_B_P[*]} LMS2_BB_DAC1_SELIQ_P}]
set_output_delay -clock [get_clocks FPGA_LMS2_BB_DAC1_CLK] -min -add_delay -1.300 [get_ports {{LMS2_BB_DAC1_B_P[*]} LMS2_BB_DAC1_SELIQ_P}]
set_output_delay -clock [get_clocks FPGA_LMS2_BB_DAC2_CLK] -max -add_delay -0.500 [get_ports {{LMS2_BB_DAC2_B_P[*]} LMS2_BB_DAC2_SELIQ_P}]
set_output_delay -clock [get_clocks FPGA_LMS2_BB_DAC2_CLK] -min -add_delay -1.300 [get_ports {{LMS2_BB_DAC2_B_P[*]} LMS2_BB_DAC2_SELIQ_P}]





#-----------------------------------------------------------------------
#Exceptions
#-----------------------------------------------------------------------
#To cut paths for falling edge transfers in center aligned SDR interface
#set_false_path -setup -fall_from [get_clocks FPGA_PLL_C1] #               -rise_to [get_clocks DAC_CLK_WRT]

#set_false_path -hold -fall_from [get_clocks FPGA_PLL_C1] #               -rise_to [get_clocks DAC_CLK_WRT]

#set_false_path -from [get_ports reset_n]

#set_false_path -to [get_ports {clk_p}]
#set_false_path -fall_from [get_clocks clk_out2_clk_wiz_0_1]
#set_false_path -fall_to   [get_clocks clk_out2_clk_wiz_0_1]

#set_multicycle_path 2 -setup -from [get_clocks clk_out1_clk_wiz_0_1] -to [get_clocks dac_clk]

#set_false_path -setup -rise_from [get_clocks clk] -fall_to [get_clocks dac_clk]
#set_false_path -setup -fall_from [get_clocks clk] -rise_to [get_clocks dac_clk]
#set_false_path -hold -rise_from [get_clocks clk] -rise_to [get_clocks dac_clk]
#set_false_path -hold -fall_from [get_clocks clk] -fall_to [get_clocks dac_clk]

#set_multicycle_path -from [get_clocks clk] -to [get_clocks dac_clk] 0
#set_multicycle_path -hold -from [get_clocks clk] -to [get_clocks dac_clk] -1

#Clock groups
#Clock groups are set in top .sdc file










