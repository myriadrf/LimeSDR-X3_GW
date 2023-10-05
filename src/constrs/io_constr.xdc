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


connect_debug_port u_ila_0/probe0 [get_nets [list {inst9_rxtx_top/txen_on_ts_reg[0]} {inst9_rxtx_top/txen_on_ts_reg[1]} {inst9_rxtx_top/txen_on_ts_reg[2]} {inst9_rxtx_top/txen_on_ts_reg[3]} {inst9_rxtx_top/txen_on_ts_reg[4]} {inst9_rxtx_top/txen_on_ts_reg[5]} {inst9_rxtx_top/txen_on_ts_reg[6]} {inst9_rxtx_top/txen_on_ts_reg[7]} {inst9_rxtx_top/txen_on_ts_reg[8]} {inst9_rxtx_top/txen_on_ts_reg[9]} {inst9_rxtx_top/txen_on_ts_reg[10]} {inst9_rxtx_top/txen_on_ts_reg[11]} {inst9_rxtx_top/txen_on_ts_reg[12]} {inst9_rxtx_top/txen_on_ts_reg[13]} {inst9_rxtx_top/txen_on_ts_reg[14]} {inst9_rxtx_top/txen_on_ts_reg[15]} {inst9_rxtx_top/txen_on_ts_reg[16]} {inst9_rxtx_top/txen_on_ts_reg[17]} {inst9_rxtx_top/txen_on_ts_reg[18]} {inst9_rxtx_top/txen_on_ts_reg[19]} {inst9_rxtx_top/txen_on_ts_reg[20]} {inst9_rxtx_top/txen_on_ts_reg[21]} {inst9_rxtx_top/txen_on_ts_reg[22]} {inst9_rxtx_top/txen_on_ts_reg[23]} {inst9_rxtx_top/txen_on_ts_reg[24]} {inst9_rxtx_top/txen_on_ts_reg[25]} {inst9_rxtx_top/txen_on_ts_reg[26]} {inst9_rxtx_top/txen_on_ts_reg[27]} {inst9_rxtx_top/txen_on_ts_reg[28]} {inst9_rxtx_top/txen_on_ts_reg[29]} {inst9_rxtx_top/txen_on_ts_reg[30]} {inst9_rxtx_top/txen_on_ts_reg[31]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {inst9_rxtx_top/txen_off_ts_reg[0]} {inst9_rxtx_top/txen_off_ts_reg[1]} {inst9_rxtx_top/txen_off_ts_reg[2]} {inst9_rxtx_top/txen_off_ts_reg[3]} {inst9_rxtx_top/txen_off_ts_reg[4]} {inst9_rxtx_top/txen_off_ts_reg[5]} {inst9_rxtx_top/txen_off_ts_reg[6]} {inst9_rxtx_top/txen_off_ts_reg[7]} {inst9_rxtx_top/txen_off_ts_reg[8]} {inst9_rxtx_top/txen_off_ts_reg[9]} {inst9_rxtx_top/txen_off_ts_reg[10]} {inst9_rxtx_top/txen_off_ts_reg[11]} {inst9_rxtx_top/txen_off_ts_reg[12]} {inst9_rxtx_top/txen_off_ts_reg[13]} {inst9_rxtx_top/txen_off_ts_reg[14]} {inst9_rxtx_top/txen_off_ts_reg[15]} {inst9_rxtx_top/txen_off_ts_reg[16]} {inst9_rxtx_top/txen_off_ts_reg[17]} {inst9_rxtx_top/txen_off_ts_reg[18]} {inst9_rxtx_top/txen_off_ts_reg[19]} {inst9_rxtx_top/txen_off_ts_reg[20]} {inst9_rxtx_top/txen_off_ts_reg[21]} {inst9_rxtx_top/txen_off_ts_reg[22]} {inst9_rxtx_top/txen_off_ts_reg[23]} {inst9_rxtx_top/txen_off_ts_reg[24]} {inst9_rxtx_top/txen_off_ts_reg[25]} {inst9_rxtx_top/txen_off_ts_reg[26]} {inst9_rxtx_top/txen_off_ts_reg[27]} {inst9_rxtx_top/txen_off_ts_reg[28]} {inst9_rxtx_top/txen_off_ts_reg[29]} {inst9_rxtx_top/txen_off_ts_reg[30]} {inst9_rxtx_top/txen_off_ts_reg[31]}]]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list inst1_pll_top/inst7/inst/clk_out2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[0]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[1]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[2]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[3]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[4]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[5]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[6]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[7]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[8]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[9]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[10]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[11]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[12]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[13]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[14]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 16 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[0]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[1]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[2]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[3]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[4]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[5]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[6]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[7]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[8]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[9]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[10]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[11]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[12]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[13]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[14]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/rd_cnt_max[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 16 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[0]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[1]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[2]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[3]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[4]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[5]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[6]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[7]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[8]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[9]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[10]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[11]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[12]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[13]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[14]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/wr_cnt[15]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 10 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[0]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[1]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[2]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[3]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[4]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[5]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[6]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[7]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[8]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdusedw[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 10 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[0]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[1]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[2]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[3]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[4]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[5]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[6]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[7]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[8]} {inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdusedw[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/clear_fifo_n]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/ext_rd_fifo_sel]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/fifo_sel]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/infifo_rdempty]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/infifo_rdreq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_pct_wrreq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdempty]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_rdreq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_0_reset_n]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_pct_wrreq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdempty]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_rdreq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_1_reset_n]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst1_reset_n]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list lms2_tdd_txen]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/pct_data_rdreq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_wrempty]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/pct_wrreq]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list inst9_rxtx_top/tdd_out]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list inst9_rxtx_top/TX_gen0.tx_path_top_inst1/inst0_one_pct_fifo/inst0_pct_separate_fsm/tdd_ts_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list inst9_rxtx_top/txen_off_used]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list inst9_rxtx_top/txen_on_used]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list CLK100_FPGA_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list lms1_tdd_txen]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets CLK100_FPGA_BUFG]
