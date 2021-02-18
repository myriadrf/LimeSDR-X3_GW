set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]


#create_clock -period 1000.000 -name GNSS_PPS -waveform {0.000 500.000} [get_ports GNSS_PPS]
set_disable_timing BOM_VER*
set_disable_timing FPGA_LED*
set_disable_timing FPGA_GPIO*
set_disable_timing FPGA_SW*

create_generated_clock -name clk_125mhz_Gen -source [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I0] -divide_by 1 -add -master_clock clk_125mhz [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]
create_generated_clock -name clk_250mhz_Gen -source [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1] -divide_by 1 -add -master_clock clk_250mhz [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]
set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks clk_125mhz_Gen] -group [get_clocks -include_generated_clocks clk_250mhz_Gen]
set_false_path -from [get_clocks GNSS_PPS] -to [get_clocks CLK100_FPGA]

set_false_path -from [get_pins LM75_OS] -to [get_pins FAN_CTRL]
