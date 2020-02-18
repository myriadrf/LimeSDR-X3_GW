// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Dec 10 13:53:26 2019
// Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top mb_subsystem_AXI_to_native_FIFO_0_0 -prefix
//               mb_subsystem_AXI_to_native_FIFO_0_0_ mb_subsystem_AXI_to_native_FIFO_0_0_stub.v
// Design      : mb_subsystem_AXI_to_native_FIFO_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_to_native_FIFO_v1_0,Vivado 2019.1" *)
module mb_subsystem_AXI_to_native_FIFO_0_0(M_NATIVE_READ_EMPTY, M_NATIVE_READ_AEMPTY, 
  M_NATIVE_READ_DOUT, M_NATIVE_READ_RD_EN, M_NATIVE_WRITE_ACLR, M_NATIVE_WRITE_FULL, 
  M_NATIVE_WRITE_AFULL, M_NATIVE_WRITE_DIN, M_NATIVE_WRITE_WR_EN, s00_axi_awaddr, 
  s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, 
  s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, 
  s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="M_NATIVE_READ_EMPTY,M_NATIVE_READ_AEMPTY,M_NATIVE_READ_DOUT[31:0],M_NATIVE_READ_RD_EN,M_NATIVE_WRITE_ACLR,M_NATIVE_WRITE_FULL,M_NATIVE_WRITE_AFULL,M_NATIVE_WRITE_DIN[31:0],M_NATIVE_WRITE_WR_EN,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  input M_NATIVE_READ_EMPTY;
  input M_NATIVE_READ_AEMPTY;
  input [31:0]M_NATIVE_READ_DOUT;
  output M_NATIVE_READ_RD_EN;
  output M_NATIVE_WRITE_ACLR;
  input M_NATIVE_WRITE_FULL;
  input M_NATIVE_WRITE_AFULL;
  output [31:0]M_NATIVE_WRITE_DIN;
  output M_NATIVE_WRITE_WR_EN;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
