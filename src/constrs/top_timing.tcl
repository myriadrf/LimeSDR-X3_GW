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

# ----------------------------------------------------------------------------
# Base clocks
# ----------------------------------------------------------------------------

#LMK clk, 30.72MHz
create_clock -period 32.550 -name LMK1_CLK1 [get_ports LMK1_CLK1]
create_clock -period 32.550 -name LMK1_CLK2 [get_ports LMK1_CLK2]


#CLK100_FPGA
create_clock -period 10.000 -name CLK100_FPGA -waveform {0.000 5.000} [get_ports CLK100_FPGA_P]


set_clock_groups -asynchronous   -group [get_clocks -include_generated_clocks txoutclk_x0y0] \
                                 -group [get_clocks -include_generated_clocks LMS1_MCLK1] \
                                 -group [get_clocks -include_generated_clocks {CLK100_FPGA cpu_spi_clk cpu_spi_1 cpu_spi_2 clk_ext_10m gen_default_plls.gen_artix7_default_plls.gen_artix7_ext_ref_pll.clk_ext_fbo gen_default_plls.gen_artix7_default_plls.gen_artix7_ext_ref_pll.clk_ext_mul}] \
                                 -group [get_clocks -include_generated_clocks {PCIE_REFCLK userclk1 userclk2}] \
                                 -group [get_clocks -include_generated_clocks {LMS2_BB_ADC1_CLKOUT LMS2_BB_ADC2_CLKOUT}] \
                                 -group [get_clocks -include_generated_clocks LMK1_CLK1] \
                                 -group [get_clocks -include_generated_clocks LMK1_CLK2] \
                                 -group [get_clocks -include_generated_clocks {LMS3_BB_ADC1_CLKOUT LMS3_BB_ADC2_CLKOUT}] \
                                 -group [get_clocks -include_generated_clocks {CDCM2_LMS2_BB_DAC1_REFC_P clk_out1_max5878_mmcm clk_out2_max5878_mmcm clk_out3_max5878_mmcm clkfbout_max5878_mmcm}] \
                                 -group [get_clocks -include_generated_clocks {clk_out2_tx_pll clk_out3_tx_pll LMS1_FCLK1}] \
                                 -group [get_clocks -include_generated_clocks clk_out2_rx_pll] \
                                 -group [get_clocks -include_generated_clocks clk_out2_adc_pll] \
                                 -group [get_clocks -include_generated_clocks {WR_PTP_CLK0_125 CLKFBIN_1 gen_default_plls.gen_artix7_default_plls.clk_sys}] \
                                 -group [get_clocks -include_generated_clocks WR_PTP_CLK1_125] \
                                 -group [get_clocks -include_generated_clocks {WR_PTP_CLK0_20 gen_default_plls.gen_artix7_default_plls.clk_dmtd gen_default_plls.gen_artix7_default_plls.clk_dmtd_fb}]







