vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_core_top.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pipe_drp.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pipe_eq.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pipe_rate.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pipe_reset.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pipe_sync.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gtp_pipe_rate.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gtp_pipe_drp.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gtp_pipe_reset.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pipe_user.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pipe_wrapper.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_qpll_drp.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_qpll_reset.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_qpll_wrapper.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_rxeq_scan.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_axi_basic_rx_null_gen.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_axi_basic_rx_pipeline.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_axi_basic_rx.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_axi_basic_top.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_axi_basic_tx_pipeline.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_axi_basic_tx_thrtl_ctl.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_axi_basic_tx.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie_7x.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie_bram_7x.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie_bram_top_7x.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie_brams_7x.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie_pipe_lane.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie_pipe_misc.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie_pipe_pipeline.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gt_rx_valid_filter_7x.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gt_top.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gt_wrapper.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gt_common.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gtp_cpllpd_ovrd.v" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_gtx_cpllpd_ovrd.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie_top.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/source/pcie_x4_pcie2_top.vhd" \
"../../../../pcie_x4_ex.srcs/sources_1/ip/pcie_x4/sim/pcie_x4.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

