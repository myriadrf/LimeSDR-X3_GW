// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Oct 24 10:57:04 2019
// Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/working_dir/xilinx/PCIe_5GRadio/lms7_trx/ip/vivado/rx_pll/rx_pll/rx_pll_stub.v
// Design      : rx_pll
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module rx_pll(clk_out1, clk_out2, psclk, psen, psincdec, psdone, 
  reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,psclk,psen,psincdec,psdone,reset,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input psclk;
  input psen;
  input psincdec;
  output psdone;
  input reset;
  output locked;
  input clk_in1;
endmodule
