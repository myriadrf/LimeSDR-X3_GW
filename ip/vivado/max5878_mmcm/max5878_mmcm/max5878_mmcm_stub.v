// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Feb 12 10:42:01 2020
// Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/working_dir/xil/PCIe_5GRadio/lms7_trx/ip/vivado/max5878_mmcm/max5878_mmcm/max5878_mmcm_stub.v
// Design      : max5878_mmcm
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module max5878_mmcm(clk_out1, clk_out2, clk_out3, clk_in1_p, 
  clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input clk_in1_p;
  input clk_in1_n;
endmodule
