# ----------------------------------------------------------------------------
# FILE: 	top_timing.sdc
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
#CLK_LMK_FPGA_IN
#Clock period 30.72MHz

#CLK100_FPGA


# ----------------------------------------------------------------------------
# Base clocks
# ----------------------------------------------------------------------------

#LMK clk, 30.72MHz
create_clock -period 32.550 -name LMK_CLK [get_ports LMK_CLK]

#CLK100_FPGA
create_clock -period 10.000 -name CLK100_FPGA_P -waveform {0.000 5.000} [get_ports CLK100_FPGA_P]

create_clock -period 10.000 -name PCIE_REFCLK_P -waveform {0.000 5.000} [get_ports PCIE_REFCLK_P]


set_clock_groups -asynchronous -group {LMS1_MCLK1 clk_out1_tx_pll LMS1_FCLK1 clk_out2_tx_pll clkfbout_tx_pll} -group {LMS1_MCLK2 clk_out1_rx_pll clk_out2_rx_pll clkfbout_rx_pll LMS1_MCLK2_VIRT} -group {LMS2_MCLK1 clk_out1_tx_pll_1 LMS2_FCLK1 clk_out2_tx_pll_1 clkfbout_tx_pll_1} -group {LMS2_MCLK2 clk_out1_rx_pll_1 clk_out2_rx_pll_1 clkfbout_rx_pll_1 LMS2_MCLK2_VIRT} -group {LMK_CLK} -group {CLK100_FPGA_P} -group {PCIE_REFCLK_P} -group {ADC_CLKOUT}





















