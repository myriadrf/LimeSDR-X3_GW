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








create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list inst1_pll_top/inst1_rx_pll_top_cyc5/XILINX_MMCM.MMCM_inst1/inst/CLK_CORE_DRP_I/clk_inst/clk_out2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/current_state[0]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/current_state[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 13 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[0]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[1]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[2]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[3]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[4]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[5]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[6]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[7]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[8]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[9]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[10]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[11]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_h_reg[12]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 13 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[0]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[1]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[2]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[3]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[4]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[5]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[6]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[7]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[8]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[9]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[10]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[11]} {inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/diq_l_reg[12]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/AI_err]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/AQ_err]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/BI_err]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/BQ_err]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/cmp_start_reg]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/debug_compare_stop]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list inst6_lms7002_top/debug_tx_ptrn_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/IQ_SEL_err]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/reset_n]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list inst6_lms7002_top/inst0_diq2fifo/inst3_smpl_cmp/smpl_err]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets PPS_OUT_OBUF]
