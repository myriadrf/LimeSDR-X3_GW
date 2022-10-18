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




create_generated_clock -name cpu_spi_clk -source [get_pins inst0_cpu/inst0_mb_cpu/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/C] -divide_by 16 [get_pins inst0_cpu/inst0_mb_cpu/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_0_GEN.SPI_MODULE_I/RATIO_NOT_EQUAL_4_GENERATE.SCK_O_NQ_4_NO_STARTUP_USED.SCK_O_NE_4_FDRE_INST/Q]



create_generated_clock -name clk_125mhz_Gen -source [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I0] -divide_by 1 -add -master_clock clk_125mhz [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]
create_generated_clock -name clk_250mhz_Gen -source [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/I1] -divide_by 1 -add -master_clock clk_250mhz [get_pins inst2_pcie_top/inst1_litepcie_top/inst0_litepcie_core/pcie_phy/pcie_support_i/pipe_clock_i/pclk_i1_bufgctrl.pclk_i1/O]
set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks clk_125mhz_Gen] -group [get_clocks -include_generated_clocks clk_250mhz_Gen]
set_clock_groups -logically_exclusive -group [get_clocks -include_generated_clocks clk_125mhz] -group [get_clocks -include_generated_clocks clk_250mhz]


create_generated_clock -name LMS2_BB_ADC_BUFG_CLOCK -source [get_pins inst0_LMS2_RX1_BB_ADC1/clkout_bufg] -multiply_by 1 [get_pins inst0_LMS2_RX1_BB_ADC1/clkout_bufg]
create_generated_clock -name LMS3_BB_ADC_BUFG_CLOCK -source [get_pins inst0_LMS3_RX1_BB_ADC1/clkout_bufg] -multiply_by 1 [get_pins inst0_LMS3_RX1_BB_ADC1/clkout_bufg]





create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 2 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list inst1_pll_top/inst7/inst/clk_out2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[0]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[1]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[2]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[3]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[4]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[5]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[6]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[7]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[8]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[9]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[10]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[11]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[12]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[13]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[14]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_int[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_inc]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_inc_reg]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 2 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list CLK100_FPGA_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_counter_rst]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets CLK100_FPGA_BUFG]
