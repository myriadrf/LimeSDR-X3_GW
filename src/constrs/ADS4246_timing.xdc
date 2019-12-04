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
create_clock -period 6.25 -name ADC_CLKOUT [get_ports ADC_CLKOUT_P]



set_input_delay -clock [get_clocks ADC_CLKOUT] -clock_fall -min -add_delay 0.350 [get_ports {{ADC_DA_P[*]} {ADC_DA_N[*]} {ADC_DB_P[*]} {ADC_DB_N[*]}}]
set_input_delay -clock [get_clocks ADC_CLKOUT] -clock_fall -max -add_delay 1.625 [get_ports {{ADC_DA_P[*]} {ADC_DA_N[*]} {ADC_DB_P[*]} {ADC_DB_N[*]}}]
set_input_delay -clock [get_clocks ADC_CLKOUT] -min -add_delay 0.350 [get_ports {{ADC_DA_P[*]} {ADC_DA_N[*]} {ADC_DB_P[*]} {ADC_DB_N[*]}}]
set_input_delay -clock [get_clocks ADC_CLKOUT] -max -add_delay 1.625 [get_ports {{ADC_DA_P[*]} {ADC_DA_N[*]} {ADC_DB_P[*]} {ADC_DB_N[*]}}]























