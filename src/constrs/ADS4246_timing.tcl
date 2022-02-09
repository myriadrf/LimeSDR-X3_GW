# ----------------------------------------------------------------------------
# FILE: 	ADS4246_timing.sdc
# DESCRIPTION:	Timing constrains file for TimeQuest
# DATE:	June 2, 2017
# AUTHOR(s):	Lime Microsystems
# REVISIONS:
# ----------------------------------------------------------------------------
# NOTES:
#
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Timing parameters for ADS4246
# ----------------------------------------------------------------------------
#ADC
#Clock period 160MHz
#Waveform for 90deg phase shifted virtual clock
#Setup and hold times from datasheet
#Calculated expressions

# ----------------------------------------------------------------------------
# Base clocks
# ----------------------------------------------------------------------------
#ADC clock (ADC LATCH clk)
create_clock -period 6.250 -name LMS2_BB_ADC1_CLKOUT [get_ports LMS2_BB_ADC1_CLKOUT_P]
create_clock -period 6.250 -name LMS2_BB_ADC2_CLKOUT [get_ports LMS2_BB_ADC2_CLKOUT_P]
create_clock -period 6.250 -name LMS3_BB_ADC1_CLKOUT [get_ports LMS3_BB_ADC1_CLKOUT_P]
create_clock -period 6.250 -name LMS3_BB_ADC2_CLKOUT [get_ports LMS3_BB_ADC2_CLKOUT_P]


# ----------------------------------------------------------------------------
# Input delays
# ----------------------------------------------------------------------------
## LMS2_BB ADC1
#set_input_delay -clock [get_clocks LMS2_BB_ADC1_CLKOUT] -clock_fall -min -add_delay 0.350 [get_ports {LMS2_BB_ADC1_DA_P[*] LMS2_BB_ADC1_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS2_BB_ADC1_CLKOUT] -clock_fall -max -add_delay 1.625 [get_ports {LMS2_BB_ADC1_DA_P[*] LMS2_BB_ADC1_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS2_BB_ADC1_CLKOUT] -min -add_delay 0.350 [get_ports {LMS2_BB_ADC1_DA_P[*] LMS2_BB_ADC1_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS2_BB_ADC1_CLKOUT] -max -add_delay 1.625 [get_ports {LMS2_BB_ADC1_DA_P[*] LMS2_BB_ADC1_DB_P[*]}]
## LMS2_BB ADC2
#set_input_delay -clock [get_clocks LMS2_BB_ADC2_CLKOUT] -clock_fall -min -add_delay 0.350 [get_ports {LMS2_BB_ADC2_DA_P[*] LMS2_BB_ADC2_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS2_BB_ADC2_CLKOUT] -clock_fall -max -add_delay 1.625 [get_ports {LMS2_BB_ADC2_DA_P[*] LMS2_BB_ADC2_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS2_BB_ADC2_CLKOUT] -min -add_delay 0.350 [get_ports {LMS2_BB_ADC2_DA_P[*] LMS2_BB_ADC2_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS2_BB_ADC2_CLKOUT] -max -add_delay 1.625 [get_ports {LMS2_BB_ADC2_DA_P[*] LMS2_BB_ADC2_DB_P[*]}]


## LMS3_BB ADC1
#set_input_delay -clock [get_clocks LMS3_BB_ADC1_CLKOUT] -clock_fall -min -add_delay 0.350 [get_ports {LMS3_BB_ADC1_DA_P[*] LMS3_BB_ADC1_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS3_BB_ADC1_CLKOUT] -clock_fall -max -add_delay 1.625 [get_ports {LMS3_BB_ADC1_DA_P[*] LMS3_BB_ADC1_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS3_BB_ADC1_CLKOUT] -min -add_delay 0.350 [get_ports {LMS3_BB_ADC1_DA_P[*] LMS3_BB_ADC1_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS3_BB_ADC1_CLKOUT] -max -add_delay 1.625 [get_ports {LMS3_BB_ADC1_DA_P[*] LMS3_BB_ADC1_DB_P[*]}]

## LMS3_BB ADC2
#set_input_delay -clock [get_clocks LMS3_BB_ADC2_CLKOUT] -clock_fall -min -add_delay 0.350 [get_ports {LMS3_BB_ADC2_DA_P[*] LMS3_BB_ADC2_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS3_BB_ADC2_CLKOUT] -clock_fall -max -add_delay 1.625 [get_ports {LMS3_BB_ADC2_DA_P[*] LMS3_BB_ADC2_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS3_BB_ADC2_CLKOUT] -min -add_delay 0.350 [get_ports {LMS3_BB_ADC2_DA_P[*] LMS3_BB_ADC2_DB_P[*]}]
#set_input_delay -clock [get_clocks LMS3_BB_ADC2_CLKOUT] -max -add_delay 1.625 [get_ports {LMS3_BB_ADC2_DA_P[*] LMS3_BB_ADC2_DB_P[*]}]

# ----------------------------------------------------------------------------
# Input delays 0.6 1.25
# ----------------------------------------------------------------------------
# LMS2_BB ADC1
set_input_delay -clock [get_clocks LMS2_BB_ADC1_CLKOUT] -clock_fall -min -add_delay 0.600 [get_ports {{LMS2_BB_ADC1_DA_P[*]} {LMS2_BB_ADC1_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS2_BB_ADC1_CLKOUT] -clock_fall -max -add_delay 1.250 [get_ports {{LMS2_BB_ADC1_DA_P[*]} {LMS2_BB_ADC1_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS2_BB_ADC1_CLKOUT] -min -add_delay 0.600 [get_ports {{LMS2_BB_ADC1_DA_P[*]} {LMS2_BB_ADC1_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS2_BB_ADC1_CLKOUT] -max -add_delay 1.250 [get_ports {{LMS2_BB_ADC1_DA_P[*]} {LMS2_BB_ADC1_DB_P[*]}}]
# LMS2_BB ADC2
set_input_delay -clock [get_clocks LMS2_BB_ADC2_CLKOUT] -clock_fall -min -add_delay 0.600 [get_ports {{LMS2_BB_ADC2_DA_P[*]} {LMS2_BB_ADC2_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS2_BB_ADC2_CLKOUT] -clock_fall -max -add_delay 1.250 [get_ports {{LMS2_BB_ADC2_DA_P[*]} {LMS2_BB_ADC2_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS2_BB_ADC2_CLKOUT] -min -add_delay 0.600 [get_ports {{LMS2_BB_ADC2_DA_P[*]} {LMS2_BB_ADC2_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS2_BB_ADC2_CLKOUT] -max -add_delay 1.250 [get_ports {{LMS2_BB_ADC2_DA_P[*]} {LMS2_BB_ADC2_DB_P[*]}}]


# LMS3_BB ADC1
set_input_delay -clock [get_clocks LMS3_BB_ADC1_CLKOUT] -clock_fall -min -add_delay 0.600 [get_ports {{LMS3_BB_ADC1_DA_P[*]} {LMS3_BB_ADC1_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS3_BB_ADC1_CLKOUT] -clock_fall -max -add_delay 1.250 [get_ports {{LMS3_BB_ADC1_DA_P[*]} {LMS3_BB_ADC1_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS3_BB_ADC1_CLKOUT] -min -add_delay 0.600 [get_ports {{LMS3_BB_ADC1_DA_P[*]} {LMS3_BB_ADC1_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS3_BB_ADC1_CLKOUT] -max -add_delay 1.250 [get_ports {{LMS3_BB_ADC1_DA_P[*]} {LMS3_BB_ADC1_DB_P[*]}}]

# LMS3_BB ADC2
set_input_delay -clock [get_clocks LMS3_BB_ADC2_CLKOUT] -clock_fall -min -add_delay 0.600 [get_ports {{LMS3_BB_ADC2_DA_P[*]} {LMS3_BB_ADC2_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS3_BB_ADC2_CLKOUT] -clock_fall -max -add_delay 1.250 [get_ports {{LMS3_BB_ADC2_DA_P[*]} {LMS3_BB_ADC2_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS3_BB_ADC2_CLKOUT] -min -add_delay 0.600 [get_ports {{LMS3_BB_ADC2_DA_P[*]} {LMS3_BB_ADC2_DB_P[*]}}]
set_input_delay -clock [get_clocks LMS3_BB_ADC2_CLKOUT] -max -add_delay 1.250 [get_ports {{LMS3_BB_ADC2_DA_P[*]} {LMS3_BB_ADC2_DB_P[*]}}]




























