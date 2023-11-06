set_property CONFIG_MODE SPIx4 [current_design]
#set_property PROHIBIT true [get_bels IOB_X0Y148/PAD]
#set_property PROHIBIT true [get_sites R14]
#set_property PROHIBIT true [get_bels IOB_X0Y147/PAD]
#set_property PROHIBIT true [get_sites R15]
#set_property PROHIBIT true [get_bels IOB_X0Y146/PAD]
#set_property PROHIBIT true [get_sites P14]
#set_property PROHIBIT true [get_bels IOB_X0Y145/PAD]
#set_property PROHIBIT true [get_sites N14]

#create_generated_clock -name inst0_cpu/inst0_mb_cpu/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/sck_o -source [get_pins inst0_cpu/inst0_mb_cpu/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/C] -divide_by 16 [get_pins inst0_cpu/inst0_mb_cpu/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/Q]
#create_generated_clock -name FPGA_SPI_CLK_INT -source [get_pins inst0_cpu/inst0_mb_cpu/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/C] -divide_by 16 [get_pins inst0_cpu/inst0_mb_cpu/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/Q]
#set_false_path -from [get_ports {{BOM_VER[0]} {BOM_VER[1]} {BOM_VER[2]} {BOM_VER[3]} {FPGA_SW[0]} {FPGA_SW[1]} {FPGA_SW[2]} {FPGA_SW[3]} {HW_VER[0]} {HW_VER[1]} {HW_VER[2]} {HW_VER[3]}}]

#set_disable_timing [get_ports GNSS_PPS]
#set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks FPGA_SPI_CLK_INT] -group [get_clocks -include_generated_clocks *]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 66 [current_design]


create_generated_clock -name clk_125mhz_Gen -source [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I0] -divide_by 1 -add -master_clock clk_125mhz [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]
create_generated_clock -name clk_250mhz_Gen -source [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1] -divide_by 1 -add -master_clock clk_250mhz [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]
set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks clk_125mhz_Gen] -group [get_clocks -include_generated_clocks clk_250mhz_Gen]
set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks clk_125mhz] -group [get_clocks -include_generated_clocks clk_250mhz]


create_generated_clock -name LMS2_BB_ADC_BUFG_CLOCK -source [get_pins inst0_LMS2_RX1_BB_ADC1/clkout_bufg] -multiply_by 1 [get_pins inst0_LMS2_RX1_BB_ADC1/clkout_bufg]
create_generated_clock -name LMS3_BB_ADC_BUFG_CLOCK -source [get_pins inst0_LMS3_RX1_BB_ADC1/clkout_bufg] -multiply_by 1 [get_pins inst0_LMS3_RX1_BB_ADC1/clkout_bufg]

create_generated_clock -name cpu_spi_clk -source [get_pins inst0_cpu/inst0_mb_cpu/SPI_CORES/SPI0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/C] -divide_by 16 [get_pins inst0_cpu/inst0_mb_cpu/SPI_CORES/SPI0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/Q]
create_generated_clock -name cpu_spi_2 -source [get_pins inst0_cpu/inst0_mb_cpu/SPI_CORES/SPI2/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/C] -divide_by 16 [get_pins inst0_cpu/inst0_mb_cpu/SPI_CORES/SPI2/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/Q]
create_generated_clock -name cpu_spi_1 -source [get_pins inst0_cpu/inst0_mb_cpu/SPI_CORES/SPI1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/C] -divide_by 16 [get_pins inst0_cpu/inst0_mb_cpu/SPI_CORES/SPI1/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/Q]

set_false_path -from [get_ports {BOM_VER[*]}]
set_false_path -from [get_ports {HW_VER[*]}]
set_false_path -from [get_ports LM75_OS]
set_false_path -to [get_ports FAN_CTRL]
set_false_path -to [get_ports FPGA_LED1_R]
set_false_path -to [get_ports FPGA_LED1_G]
set_false_path -to [get_ports FPGA_LED2_R]
set_false_path -to [get_ports FPGA_LED2_G]
set_false_path -to [get_ports FPGA_LED3_R]
set_false_path -to [get_ports FPGA_LED3_G]
set_false_path -to [get_ports FPGA_LED4_R]
set_false_path -to [get_ports FPGA_LED4_G]

