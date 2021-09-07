// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Feb 26 15:53:36 2021
// Host        : servenikas-MS-7B86 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top mb_subsystem_AXI_to_native_FIFO_0_0 -prefix
//               mb_subsystem_AXI_to_native_FIFO_0_0_ mb_subsystem_AXI_to_native_FIFO_0_0_sim_netlist.v
// Design      : mb_subsystem_AXI_to_native_FIFO_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0
   (M_NATIVE_READ_RD_EN,
    M_NATIVE_WRITE_ACLR,
    M_NATIVE_WRITE_DIN,
    M_NATIVE_WRITE_WR_EN,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_bvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    M_NATIVE_READ_EMPTY,
    M_NATIVE_READ_AEMPTY,
    M_NATIVE_READ_DOUT,
    M_NATIVE_WRITE_FULL,
    M_NATIVE_WRITE_AFULL,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_rready);
  output M_NATIVE_READ_RD_EN;
  output M_NATIVE_WRITE_ACLR;
  output [31:0]M_NATIVE_WRITE_DIN;
  output M_NATIVE_WRITE_WR_EN;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_bvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  input M_NATIVE_READ_EMPTY;
  input M_NATIVE_READ_AEMPTY;
  input [31:0]M_NATIVE_READ_DOUT;
  input M_NATIVE_WRITE_FULL;
  input M_NATIVE_WRITE_AFULL;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_rready;

  wire M_NATIVE_READ_AEMPTY;
  wire [31:0]M_NATIVE_READ_DOUT;
  wire M_NATIVE_READ_EMPTY;
  wire M_NATIVE_READ_RD_EN;
  wire M_NATIVE_WRITE_ACLR;
  wire M_NATIVE_WRITE_AFULL;
  wire [31:0]M_NATIVE_WRITE_DIN;
  wire M_NATIVE_WRITE_FULL;
  wire M_NATIVE_WRITE_WR_EN;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]NLW_AXI_to_native_FIFO_v1_0_S00_AXI_inst_S_AXI_BRESP_UNCONNECTED;
  wire [1:0]NLW_AXI_to_native_FIFO_v1_0_S00_AXI_inst_S_AXI_RRESP_UNCONNECTED;

  (* C_M00_NATIVE_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI AXI_to_native_FIFO_v1_0_S00_AXI_inst
       (.M_NATIVE_READ_AEMPTY(M_NATIVE_READ_AEMPTY),
        .M_NATIVE_READ_DOUT(M_NATIVE_READ_DOUT),
        .M_NATIVE_READ_EMPTY(M_NATIVE_READ_EMPTY),
        .M_NATIVE_READ_RD_EN(M_NATIVE_READ_RD_EN),
        .M_NATIVE_WRITE_ACLR(M_NATIVE_WRITE_ACLR),
        .M_NATIVE_WRITE_AFULL(M_NATIVE_WRITE_AFULL),
        .M_NATIVE_WRITE_DIN(M_NATIVE_WRITE_DIN),
        .M_NATIVE_WRITE_FULL(M_NATIVE_WRITE_FULL),
        .M_NATIVE_WRITE_WR_EN(M_NATIVE_WRITE_WR_EN),
        .S_AXI_ACLK(s00_axi_aclk),
        .S_AXI_ARADDR({s00_axi_araddr,1'b0,1'b0}),
        .S_AXI_ARESETN(s00_axi_aresetn),
        .S_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_ARVALID(s00_axi_arvalid),
        .S_AXI_AWADDR({s00_axi_awaddr,1'b0,1'b0}),
        .S_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_AWVALID(s00_axi_awvalid),
        .S_AXI_BREADY(s00_axi_bready),
        .S_AXI_BRESP(NLW_AXI_to_native_FIFO_v1_0_S00_AXI_inst_S_AXI_BRESP_UNCONNECTED[1:0]),
        .S_AXI_BVALID(s00_axi_bvalid),
        .S_AXI_RDATA(s00_axi_rdata),
        .S_AXI_RREADY(s00_axi_rready),
        .S_AXI_RRESP(NLW_AXI_to_native_FIFO_v1_0_S00_AXI_inst_S_AXI_RRESP_UNCONNECTED[1:0]),
        .S_AXI_RVALID(s00_axi_rvalid),
        .S_AXI_WDATA(s00_axi_wdata),
        .S_AXI_WREADY(s00_axi_wready),
        .S_AXI_WSTRB(s00_axi_wstrb),
        .S_AXI_WVALID(s00_axi_wvalid));
endmodule

(* C_M00_NATIVE_DATA_WIDTH = "32" *) (* C_S_AXI_ADDR_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* keep_hierarchy = "soft" *) 
module mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI
   (M_NATIVE_READ_EMPTY,
    M_NATIVE_READ_AEMPTY,
    M_NATIVE_READ_DOUT,
    M_NATIVE_READ_RD_EN,
    M_NATIVE_WRITE_ACLR,
    M_NATIVE_WRITE_FULL,
    M_NATIVE_WRITE_AFULL,
    M_NATIVE_WRITE_DIN,
    M_NATIVE_WRITE_WR_EN,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input M_NATIVE_READ_EMPTY;
  input M_NATIVE_READ_AEMPTY;
  input [31:0]M_NATIVE_READ_DOUT;
  output M_NATIVE_READ_RD_EN;
  (* mark_debug = "true" *) output M_NATIVE_WRITE_ACLR;
  (* mark_debug = "true" *) input M_NATIVE_WRITE_FULL;
  (* mark_debug = "true" *) input M_NATIVE_WRITE_AFULL;
  (* mark_debug = "true" *) output [31:0]M_NATIVE_WRITE_DIN;
  (* mark_debug = "true" *) output M_NATIVE_WRITE_WR_EN;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [3:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;

  wire \<const0> ;
  wire M_NATIVE_READ_AEMPTY;
  wire [31:0]M_NATIVE_READ_DOUT;
  wire M_NATIVE_READ_EMPTY;
  (* MARK_DEBUG *) wire M_NATIVE_WRITE_ACLR;
  wire M_NATIVE_WRITE_ACLR_i_1_n_0;
  (* MARK_DEBUG *) wire M_NATIVE_WRITE_AFULL;
  (* MARK_DEBUG *) wire [31:0]M_NATIVE_WRITE_DIN;
  (* MARK_DEBUG *) wire M_NATIVE_WRITE_FULL;
  (* MARK_DEBUG *) wire M_NATIVE_WRITE_WR_EN;
  wire M_NATIVE_WRITE_WR_EN_reg0;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  (* MARK_DEBUG *) wire native_read_rd_en;
  wire native_read_rd_en_reg0;
  wire [31:0]p_1_in;
  (* MARK_DEBUG *) wire [31:0]reg_data_out;
  (* MARK_DEBUG *) wire [31:0]slv_reg0;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire \slv_reg0[10]_i_1_n_0 ;
  wire \slv_reg0[11]_i_1_n_0 ;
  wire \slv_reg0[12]_i_1_n_0 ;
  wire \slv_reg0[13]_i_1_n_0 ;
  wire \slv_reg0[14]_i_1_n_0 ;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[16]_i_1_n_0 ;
  wire \slv_reg0[17]_i_1_n_0 ;
  wire \slv_reg0[18]_i_1_n_0 ;
  wire \slv_reg0[19]_i_1_n_0 ;
  wire \slv_reg0[1]_i_1_n_0 ;
  wire \slv_reg0[20]_i_1_n_0 ;
  wire \slv_reg0[21]_i_1_n_0 ;
  wire \slv_reg0[22]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[24]_i_1_n_0 ;
  wire \slv_reg0[25]_i_1_n_0 ;
  wire \slv_reg0[26]_i_1_n_0 ;
  wire \slv_reg0[27]_i_1_n_0 ;
  wire \slv_reg0[28]_i_1_n_0 ;
  wire \slv_reg0[29]_i_1_n_0 ;
  wire \slv_reg0[2]_i_1_n_0 ;
  wire \slv_reg0[30]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[3]_i_1_n_0 ;
  wire \slv_reg0[4]_i_1_n_0 ;
  wire \slv_reg0[5]_i_1_n_0 ;
  wire \slv_reg0[6]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0[8]_i_1_n_0 ;
  wire \slv_reg0[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [31:0]slv_reg1;
  wire \slv_reg1[0]_i_1_n_0 ;
  wire \slv_reg1[10]_i_1_n_0 ;
  wire \slv_reg1[11]_i_1_n_0 ;
  wire \slv_reg1[12]_i_1_n_0 ;
  wire \slv_reg1[13]_i_1_n_0 ;
  wire \slv_reg1[14]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[16]_i_1_n_0 ;
  wire \slv_reg1[17]_i_1_n_0 ;
  wire \slv_reg1[18]_i_1_n_0 ;
  wire \slv_reg1[19]_i_1_n_0 ;
  wire \slv_reg1[1]_i_1_n_0 ;
  wire \slv_reg1[20]_i_1_n_0 ;
  wire \slv_reg1[21]_i_1_n_0 ;
  wire \slv_reg1[22]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[24]_i_1_n_0 ;
  wire \slv_reg1[25]_i_1_n_0 ;
  wire \slv_reg1[26]_i_1_n_0 ;
  wire \slv_reg1[27]_i_1_n_0 ;
  wire \slv_reg1[28]_i_1_n_0 ;
  wire \slv_reg1[29]_i_1_n_0 ;
  wire \slv_reg1[2]_i_1_n_0 ;
  wire \slv_reg1[30]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[3]_i_1_n_0 ;
  wire \slv_reg1[4]_i_1_n_0 ;
  wire \slv_reg1[5]_i_1_n_0 ;
  wire \slv_reg1[6]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1[8]_i_1_n_0 ;
  wire \slv_reg1[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [31:0]slv_reg2;
  wire \slv_reg2[0]_i_1_n_0 ;
  wire \slv_reg2[10]_i_1_n_0 ;
  wire \slv_reg2[11]_i_1_n_0 ;
  wire \slv_reg2[12]_i_1_n_0 ;
  wire \slv_reg2[13]_i_1_n_0 ;
  wire \slv_reg2[14]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[16]_i_1_n_0 ;
  wire \slv_reg2[17]_i_1_n_0 ;
  wire \slv_reg2[18]_i_1_n_0 ;
  wire \slv_reg2[19]_i_1_n_0 ;
  wire \slv_reg2[1]_i_1_n_0 ;
  wire \slv_reg2[20]_i_1_n_0 ;
  wire \slv_reg2[21]_i_1_n_0 ;
  wire \slv_reg2[22]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[24]_i_1_n_0 ;
  wire \slv_reg2[25]_i_1_n_0 ;
  wire \slv_reg2[26]_i_1_n_0 ;
  wire \slv_reg2[27]_i_1_n_0 ;
  wire \slv_reg2[28]_i_1_n_0 ;
  wire \slv_reg2[29]_i_1_n_0 ;
  wire \slv_reg2[2]_i_1_n_0 ;
  wire \slv_reg2[30]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[3]_i_1_n_0 ;
  wire \slv_reg2[4]_i_1_n_0 ;
  wire \slv_reg2[5]_i_1_n_0 ;
  wire \slv_reg2[6]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2[8]_i_1_n_0 ;
  wire \slv_reg2[9]_i_1_n_0 ;
  wire [0:0]slv_reg2__0;
  (* MARK_DEBUG *) wire [31:0]slv_reg3;
  (* MARK_DEBUG *) wire slv_reg_rden;
  (* MARK_DEBUG *) wire slv_reg_wren;

  assign M_NATIVE_READ_RD_EN = native_read_rd_en;
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    M_NATIVE_WRITE_ACLR_i_1
       (.I0(S_AXI_WDATA[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(slv_reg_wren),
        .I4(M_NATIVE_WRITE_ACLR),
        .O(M_NATIVE_WRITE_ACLR_i_1_n_0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE M_NATIVE_WRITE_ACLR_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(M_NATIVE_WRITE_ACLR_i_1_n_0),
        .Q(M_NATIVE_WRITE_ACLR),
        .R(slv_reg2__0));
  LUT3 #(
    .INIT(8'h10)) 
    \M_NATIVE_WRITE_DIN[31]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(slv_reg_wren),
        .O(M_NATIVE_WRITE_WR_EN_reg0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[0]),
        .Q(M_NATIVE_WRITE_DIN[0]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[10]),
        .Q(M_NATIVE_WRITE_DIN[10]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[11]),
        .Q(M_NATIVE_WRITE_DIN[11]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[12]),
        .Q(M_NATIVE_WRITE_DIN[12]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[13]),
        .Q(M_NATIVE_WRITE_DIN[13]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[14]),
        .Q(M_NATIVE_WRITE_DIN[14]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[15]),
        .Q(M_NATIVE_WRITE_DIN[15]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[16]),
        .Q(M_NATIVE_WRITE_DIN[16]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[17]),
        .Q(M_NATIVE_WRITE_DIN[17]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[18]),
        .Q(M_NATIVE_WRITE_DIN[18]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[19]),
        .Q(M_NATIVE_WRITE_DIN[19]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[1]),
        .Q(M_NATIVE_WRITE_DIN[1]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[20]),
        .Q(M_NATIVE_WRITE_DIN[20]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[21]),
        .Q(M_NATIVE_WRITE_DIN[21]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[22]),
        .Q(M_NATIVE_WRITE_DIN[22]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[23]),
        .Q(M_NATIVE_WRITE_DIN[23]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[24]),
        .Q(M_NATIVE_WRITE_DIN[24]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[25]),
        .Q(M_NATIVE_WRITE_DIN[25]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[26]),
        .Q(M_NATIVE_WRITE_DIN[26]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[27]),
        .Q(M_NATIVE_WRITE_DIN[27]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[28]),
        .Q(M_NATIVE_WRITE_DIN[28]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[29]),
        .Q(M_NATIVE_WRITE_DIN[29]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[2]),
        .Q(M_NATIVE_WRITE_DIN[2]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[30]),
        .Q(M_NATIVE_WRITE_DIN[30]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[31]),
        .Q(M_NATIVE_WRITE_DIN[31]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[3]),
        .Q(M_NATIVE_WRITE_DIN[3]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[4]),
        .Q(M_NATIVE_WRITE_DIN[4]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[5]),
        .Q(M_NATIVE_WRITE_DIN[5]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[6]),
        .Q(M_NATIVE_WRITE_DIN[6]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[7]),
        .Q(M_NATIVE_WRITE_DIN[7]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[8]),
        .Q(M_NATIVE_WRITE_DIN[8]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \M_NATIVE_WRITE_DIN_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(M_NATIVE_WRITE_WR_EN_reg0),
        .D(S_AXI_WDATA[9]),
        .Q(M_NATIVE_WRITE_DIN[9]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  FDRE M_NATIVE_WRITE_WR_EN_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(M_NATIVE_WRITE_WR_EN_reg0),
        .Q(M_NATIVE_WRITE_WR_EN),
        .R(slv_reg2__0));
  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(slv_reg2__0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[3]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(slv_reg2__0));
  FDSE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(slv_reg2__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(slv_reg2__0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[2]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(slv_reg2__0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(slv_reg2__0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(slv_reg2__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(slv_reg2__0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(slv_reg2__0));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(slv_reg2__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(slv_reg2__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(slv_reg2__0));
  LUT4 #(
    .INIT(16'h0400)) 
    native_read_rd_en_i_1
       (.I0(S_AXI_ARADDR[3]),
        .I1(S_AXI_ARADDR[2]),
        .I2(native_read_rd_en),
        .I3(S_AXI_ARVALID),
        .O(native_read_rd_en_reg0));
  (* KEEP = "yes" *) 
  FDRE native_read_rd_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(native_read_rd_en_reg0),
        .Q(native_read_rd_en),
        .R(slv_reg2__0));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_1
       (.I0(slv_reg3[31]),
        .I1(M_NATIVE_READ_DOUT[31]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[31]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_10
       (.I0(slv_reg3[22]),
        .I1(M_NATIVE_READ_DOUT[22]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[22]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_11
       (.I0(slv_reg3[21]),
        .I1(M_NATIVE_READ_DOUT[21]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[21]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_12
       (.I0(slv_reg3[20]),
        .I1(M_NATIVE_READ_DOUT[20]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[20]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_13
       (.I0(slv_reg3[19]),
        .I1(M_NATIVE_READ_DOUT[19]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[19]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_14
       (.I0(slv_reg3[18]),
        .I1(M_NATIVE_READ_DOUT[18]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[18]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_15
       (.I0(slv_reg3[17]),
        .I1(M_NATIVE_READ_DOUT[17]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[17]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_16
       (.I0(slv_reg3[16]),
        .I1(M_NATIVE_READ_DOUT[16]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[16]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_17
       (.I0(slv_reg3[15]),
        .I1(M_NATIVE_READ_DOUT[15]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[15]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_18
       (.I0(slv_reg3[14]),
        .I1(M_NATIVE_READ_DOUT[14]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[14]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_19
       (.I0(slv_reg3[13]),
        .I1(M_NATIVE_READ_DOUT[13]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[13]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_2
       (.I0(slv_reg3[30]),
        .I1(M_NATIVE_READ_DOUT[30]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[30]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_20
       (.I0(slv_reg3[12]),
        .I1(M_NATIVE_READ_DOUT[12]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[12]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_21
       (.I0(slv_reg3[11]),
        .I1(M_NATIVE_READ_DOUT[11]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[11]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_22
       (.I0(slv_reg3[10]),
        .I1(M_NATIVE_READ_DOUT[10]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[10]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_23
       (.I0(slv_reg3[9]),
        .I1(M_NATIVE_READ_DOUT[9]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[9]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[9]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_24
       (.I0(slv_reg3[8]),
        .I1(M_NATIVE_READ_DOUT[8]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[8]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_25
       (.I0(slv_reg3[7]),
        .I1(M_NATIVE_READ_DOUT[7]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[7]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_26
       (.I0(slv_reg3[6]),
        .I1(M_NATIVE_READ_DOUT[6]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[6]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_27
       (.I0(slv_reg3[5]),
        .I1(M_NATIVE_READ_DOUT[5]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[5]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_28
       (.I0(slv_reg3[4]),
        .I1(M_NATIVE_READ_DOUT[4]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[4]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_data_out_inferred_i_29
       (.I0(slv_reg3[3]),
        .I1(M_NATIVE_READ_DOUT[3]),
        .I2(axi_araddr[2]),
        .I3(M_NATIVE_WRITE_AFULL),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_3
       (.I0(slv_reg3[29]),
        .I1(M_NATIVE_READ_DOUT[29]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[29]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_data_out_inferred_i_30
       (.I0(slv_reg3[2]),
        .I1(M_NATIVE_READ_DOUT[2]),
        .I2(axi_araddr[2]),
        .I3(M_NATIVE_READ_AEMPTY),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_data_out_inferred_i_31
       (.I0(slv_reg3[1]),
        .I1(M_NATIVE_READ_DOUT[1]),
        .I2(axi_araddr[2]),
        .I3(M_NATIVE_WRITE_FULL),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_data_out_inferred_i_32
       (.I0(slv_reg3[0]),
        .I1(M_NATIVE_READ_DOUT[0]),
        .I2(axi_araddr[2]),
        .I3(M_NATIVE_READ_EMPTY),
        .I4(axi_araddr[3]),
        .I5(slv_reg0[0]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_4
       (.I0(slv_reg3[28]),
        .I1(M_NATIVE_READ_DOUT[28]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[28]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_5
       (.I0(slv_reg3[27]),
        .I1(M_NATIVE_READ_DOUT[27]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[27]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_6
       (.I0(slv_reg3[26]),
        .I1(M_NATIVE_READ_DOUT[26]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[26]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_7
       (.I0(slv_reg3[25]),
        .I1(M_NATIVE_READ_DOUT[25]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[25]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_8
       (.I0(slv_reg3[24]),
        .I1(M_NATIVE_READ_DOUT[24]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[24]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    reg_data_out_inferred_i_9
       (.I0(slv_reg3[23]),
        .I1(M_NATIVE_READ_DOUT[23]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[23]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[0]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[0]),
        .I3(S_AXI_WSTRB[0]),
        .I4(slv_reg0[0]),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[10]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[10]),
        .I3(S_AXI_WSTRB[1]),
        .I4(slv_reg0[10]),
        .O(\slv_reg0[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[11]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[11]),
        .I3(S_AXI_WSTRB[1]),
        .I4(slv_reg0[11]),
        .O(\slv_reg0[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[12]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[12]),
        .I3(S_AXI_WSTRB[1]),
        .I4(slv_reg0[12]),
        .O(\slv_reg0[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[13]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[13]),
        .I3(S_AXI_WSTRB[1]),
        .I4(slv_reg0[13]),
        .O(\slv_reg0[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[14]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[14]),
        .I3(S_AXI_WSTRB[1]),
        .I4(slv_reg0[14]),
        .O(\slv_reg0[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[15]),
        .I3(S_AXI_WSTRB[1]),
        .I4(slv_reg0[15]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[16]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[16]),
        .I3(S_AXI_WSTRB[2]),
        .I4(slv_reg0[16]),
        .O(\slv_reg0[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[17]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[17]),
        .I3(S_AXI_WSTRB[2]),
        .I4(slv_reg0[17]),
        .O(\slv_reg0[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[18]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[18]),
        .I3(S_AXI_WSTRB[2]),
        .I4(slv_reg0[18]),
        .O(\slv_reg0[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[19]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[19]),
        .I3(S_AXI_WSTRB[2]),
        .I4(slv_reg0[19]),
        .O(\slv_reg0[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[1]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[1]),
        .I3(S_AXI_WSTRB[0]),
        .I4(slv_reg0[1]),
        .O(\slv_reg0[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[20]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[20]),
        .I3(S_AXI_WSTRB[2]),
        .I4(slv_reg0[20]),
        .O(\slv_reg0[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[21]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[21]),
        .I3(S_AXI_WSTRB[2]),
        .I4(slv_reg0[21]),
        .O(\slv_reg0[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[22]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[22]),
        .I3(S_AXI_WSTRB[2]),
        .I4(slv_reg0[22]),
        .O(\slv_reg0[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[23]),
        .I3(S_AXI_WSTRB[2]),
        .I4(slv_reg0[23]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[24]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[24]),
        .I3(S_AXI_WSTRB[3]),
        .I4(slv_reg0[24]),
        .O(\slv_reg0[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[25]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[25]),
        .I3(S_AXI_WSTRB[3]),
        .I4(slv_reg0[25]),
        .O(\slv_reg0[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[26]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[26]),
        .I3(S_AXI_WSTRB[3]),
        .I4(slv_reg0[26]),
        .O(\slv_reg0[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[27]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[27]),
        .I3(S_AXI_WSTRB[3]),
        .I4(slv_reg0[27]),
        .O(\slv_reg0[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[28]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[28]),
        .I3(S_AXI_WSTRB[3]),
        .I4(slv_reg0[28]),
        .O(\slv_reg0[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[29]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[29]),
        .I3(S_AXI_WSTRB[3]),
        .I4(slv_reg0[29]),
        .O(\slv_reg0[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[2]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[2]),
        .I3(S_AXI_WSTRB[0]),
        .I4(slv_reg0[2]),
        .O(\slv_reg0[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[30]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[30]),
        .I3(S_AXI_WSTRB[3]),
        .I4(slv_reg0[30]),
        .O(\slv_reg0[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[31]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[31]),
        .I3(S_AXI_WSTRB[3]),
        .I4(slv_reg0[31]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[3]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[3]),
        .I3(S_AXI_WSTRB[0]),
        .I4(slv_reg0[3]),
        .O(\slv_reg0[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[4]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[4]),
        .I3(S_AXI_WSTRB[0]),
        .I4(slv_reg0[4]),
        .O(\slv_reg0[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[5]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[5]),
        .I3(S_AXI_WSTRB[0]),
        .I4(slv_reg0[5]),
        .O(\slv_reg0[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[6]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[6]),
        .I3(S_AXI_WSTRB[0]),
        .I4(slv_reg0[6]),
        .O(\slv_reg0[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[7]),
        .I3(S_AXI_WSTRB[0]),
        .I4(slv_reg0[7]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[8]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[8]),
        .I3(S_AXI_WSTRB[1]),
        .I4(slv_reg0[8]),
        .O(\slv_reg0[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF1000)) 
    \slv_reg0[9]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(S_AXI_WDATA[9]),
        .I3(S_AXI_WSTRB[1]),
        .I4(slv_reg0[9]),
        .O(\slv_reg0[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[0]_i_1_n_0 ),
        .Q(slv_reg0[0]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[10]_i_1_n_0 ),
        .Q(slv_reg0[10]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[11]_i_1_n_0 ),
        .Q(slv_reg0[11]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[12]_i_1_n_0 ),
        .Q(slv_reg0[12]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[13]_i_1_n_0 ),
        .Q(slv_reg0[13]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[14]_i_1_n_0 ),
        .Q(slv_reg0[14]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[15]_i_1_n_0 ),
        .Q(slv_reg0[15]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[16]_i_1_n_0 ),
        .Q(slv_reg0[16]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[17]_i_1_n_0 ),
        .Q(slv_reg0[17]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[18]_i_1_n_0 ),
        .Q(slv_reg0[18]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[19]_i_1_n_0 ),
        .Q(slv_reg0[19]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[1]_i_1_n_0 ),
        .Q(slv_reg0[1]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[20]_i_1_n_0 ),
        .Q(slv_reg0[20]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[21]_i_1_n_0 ),
        .Q(slv_reg0[21]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[22]_i_1_n_0 ),
        .Q(slv_reg0[22]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[23]_i_1_n_0 ),
        .Q(slv_reg0[23]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[24]_i_1_n_0 ),
        .Q(slv_reg0[24]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[25]_i_1_n_0 ),
        .Q(slv_reg0[25]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[26]_i_1_n_0 ),
        .Q(slv_reg0[26]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[27]_i_1_n_0 ),
        .Q(slv_reg0[27]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[28]_i_1_n_0 ),
        .Q(slv_reg0[28]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[29]_i_1_n_0 ),
        .Q(slv_reg0[29]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[2]_i_1_n_0 ),
        .Q(slv_reg0[2]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[30]_i_1_n_0 ),
        .Q(slv_reg0[30]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[31]_i_1_n_0 ),
        .Q(slv_reg0[31]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[3]_i_1_n_0 ),
        .Q(slv_reg0[3]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[4]_i_1_n_0 ),
        .Q(slv_reg0[4]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[5]_i_1_n_0 ),
        .Q(slv_reg0[5]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[6]_i_1_n_0 ),
        .Q(slv_reg0[6]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[7]_i_1_n_0 ),
        .Q(slv_reg0[7]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[8]_i_1_n_0 ),
        .Q(slv_reg0[8]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg0[9]_i_1_n_0 ),
        .Q(slv_reg0[9]),
        .R(slv_reg2__0));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[0]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[0]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[0]),
        .O(\slv_reg1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[10]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[10]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[10]),
        .O(\slv_reg1[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[11]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[11]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[11]),
        .O(\slv_reg1[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[12]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[12]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[12]),
        .O(\slv_reg1[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[13]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[13]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[13]),
        .O(\slv_reg1[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[14]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[14]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[14]),
        .O(\slv_reg1[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[15]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[15]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[16]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[16]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[16]),
        .O(\slv_reg1[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[17]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[17]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[17]),
        .O(\slv_reg1[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[18]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[18]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[18]),
        .O(\slv_reg1[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[19]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[19]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[19]),
        .O(\slv_reg1[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[1]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[1]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[1]),
        .O(\slv_reg1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[20]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[20]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[20]),
        .O(\slv_reg1[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[21]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[21]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[21]),
        .O(\slv_reg1[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[22]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[22]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[22]),
        .O(\slv_reg1[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[23]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[23]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[24]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[24]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[24]),
        .O(\slv_reg1[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[25]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[25]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[25]),
        .O(\slv_reg1[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[26]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[26]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[26]),
        .O(\slv_reg1[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[27]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[27]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[27]),
        .O(\slv_reg1[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[28]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[28]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[28]),
        .O(\slv_reg1[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[29]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[29]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[29]),
        .O(\slv_reg1[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[2]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[2]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[2]),
        .O(\slv_reg1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[30]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[30]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[30]),
        .O(\slv_reg1[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[31]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[31]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[3]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[3]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[3]),
        .O(\slv_reg1[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[4]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[4]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[4]),
        .O(\slv_reg1[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[5]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[5]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[5]),
        .O(\slv_reg1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[6]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[6]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[6]),
        .O(\slv_reg1[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[7]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[7]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[8]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[8]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[8]),
        .O(\slv_reg1[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg1[9]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[9]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg1[9]),
        .O(\slv_reg1[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[0]_i_1_n_0 ),
        .Q(slv_reg1[0]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[10]_i_1_n_0 ),
        .Q(slv_reg1[10]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[11]_i_1_n_0 ),
        .Q(slv_reg1[11]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[12]_i_1_n_0 ),
        .Q(slv_reg1[12]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[13]_i_1_n_0 ),
        .Q(slv_reg1[13]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[14]_i_1_n_0 ),
        .Q(slv_reg1[14]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[15]_i_1_n_0 ),
        .Q(slv_reg1[15]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[16]_i_1_n_0 ),
        .Q(slv_reg1[16]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[17]_i_1_n_0 ),
        .Q(slv_reg1[17]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[18]_i_1_n_0 ),
        .Q(slv_reg1[18]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[19]_i_1_n_0 ),
        .Q(slv_reg1[19]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[1]_i_1_n_0 ),
        .Q(slv_reg1[1]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[20]_i_1_n_0 ),
        .Q(slv_reg1[20]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[21]_i_1_n_0 ),
        .Q(slv_reg1[21]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[22]_i_1_n_0 ),
        .Q(slv_reg1[22]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[23]_i_1_n_0 ),
        .Q(slv_reg1[23]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[24]_i_1_n_0 ),
        .Q(slv_reg1[24]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[25]_i_1_n_0 ),
        .Q(slv_reg1[25]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[26]_i_1_n_0 ),
        .Q(slv_reg1[26]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[27]_i_1_n_0 ),
        .Q(slv_reg1[27]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[28]_i_1_n_0 ),
        .Q(slv_reg1[28]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[29]_i_1_n_0 ),
        .Q(slv_reg1[29]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[2]_i_1_n_0 ),
        .Q(slv_reg1[2]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[30]_i_1_n_0 ),
        .Q(slv_reg1[30]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[31]_i_1_n_0 ),
        .Q(slv_reg1[31]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[3]_i_1_n_0 ),
        .Q(slv_reg1[3]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[4]_i_1_n_0 ),
        .Q(slv_reg1[4]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[5]_i_1_n_0 ),
        .Q(slv_reg1[5]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[6]_i_1_n_0 ),
        .Q(slv_reg1[6]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[7]_i_1_n_0 ),
        .Q(slv_reg1[7]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[8]_i_1_n_0 ),
        .Q(slv_reg1[8]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg1[9]_i_1_n_0 ),
        .Q(slv_reg1[9]),
        .R(slv_reg2__0));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[0]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[0]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[0]),
        .O(\slv_reg2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[10]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[10]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[10]),
        .O(\slv_reg2[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[11]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[11]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[11]),
        .O(\slv_reg2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[12]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[12]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[12]),
        .O(\slv_reg2[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[13]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[13]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[13]),
        .O(\slv_reg2[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[14]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[14]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[14]),
        .O(\slv_reg2[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[15]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[15]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[16]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[16]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[16]),
        .O(\slv_reg2[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[17]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[17]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[17]),
        .O(\slv_reg2[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[18]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[18]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[18]),
        .O(\slv_reg2[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[19]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[19]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[19]),
        .O(\slv_reg2[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[1]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[1]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[1]),
        .O(\slv_reg2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[20]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[20]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[20]),
        .O(\slv_reg2[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[21]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[21]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[21]),
        .O(\slv_reg2[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[22]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[22]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[22]),
        .O(\slv_reg2[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[23]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[23]),
        .I2(S_AXI_WSTRB[2]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[23]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[24]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[24]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[24]),
        .O(\slv_reg2[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[25]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[25]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[25]),
        .O(\slv_reg2[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[26]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[26]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[26]),
        .O(\slv_reg2[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[27]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[27]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[27]),
        .O(\slv_reg2[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[28]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[28]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[28]),
        .O(\slv_reg2[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[29]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[29]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[29]),
        .O(\slv_reg2[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[2]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[2]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[2]),
        .O(\slv_reg2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[30]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[30]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[30]),
        .O(\slv_reg2[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[31]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[31]),
        .I2(S_AXI_WSTRB[3]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[31]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[3]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[3]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[3]),
        .O(\slv_reg2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[4]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[4]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[4]),
        .O(\slv_reg2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[5]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[5]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[5]),
        .O(\slv_reg2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[6]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[6]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[6]),
        .O(\slv_reg2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[7]),
        .I2(S_AXI_WSTRB[0]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[7]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[8]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[8]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[8]),
        .O(\slv_reg2[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \slv_reg2[9]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(S_AXI_WDATA[9]),
        .I2(S_AXI_WSTRB[1]),
        .I3(axi_awaddr[3]),
        .I4(slv_reg2[9]),
        .O(\slv_reg2[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[0]_i_1_n_0 ),
        .Q(slv_reg2[0]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[10]_i_1_n_0 ),
        .Q(slv_reg2[10]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[11]_i_1_n_0 ),
        .Q(slv_reg2[11]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[12]_i_1_n_0 ),
        .Q(slv_reg2[12]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[13]_i_1_n_0 ),
        .Q(slv_reg2[13]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[14]_i_1_n_0 ),
        .Q(slv_reg2[14]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[15]_i_1_n_0 ),
        .Q(slv_reg2[15]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[16]_i_1_n_0 ),
        .Q(slv_reg2[16]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[17]_i_1_n_0 ),
        .Q(slv_reg2[17]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[18]_i_1_n_0 ),
        .Q(slv_reg2[18]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[19]_i_1_n_0 ),
        .Q(slv_reg2[19]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[1]_i_1_n_0 ),
        .Q(slv_reg2[1]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[20]_i_1_n_0 ),
        .Q(slv_reg2[20]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[21]_i_1_n_0 ),
        .Q(slv_reg2[21]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[22]_i_1_n_0 ),
        .Q(slv_reg2[22]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[23]_i_1_n_0 ),
        .Q(slv_reg2[23]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[24]_i_1_n_0 ),
        .Q(slv_reg2[24]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[25]_i_1_n_0 ),
        .Q(slv_reg2[25]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[26]_i_1_n_0 ),
        .Q(slv_reg2[26]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[27]_i_1_n_0 ),
        .Q(slv_reg2[27]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[28]_i_1_n_0 ),
        .Q(slv_reg2[28]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[29]_i_1_n_0 ),
        .Q(slv_reg2[29]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[2]_i_1_n_0 ),
        .Q(slv_reg2[2]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[30]_i_1_n_0 ),
        .Q(slv_reg2[30]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[31]_i_1_n_0 ),
        .Q(slv_reg2[31]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[3]_i_1_n_0 ),
        .Q(slv_reg2[3]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[4]_i_1_n_0 ),
        .Q(slv_reg2[4]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[5]_i_1_n_0 ),
        .Q(slv_reg2[5]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[6]_i_1_n_0 ),
        .Q(slv_reg2[6]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[7]_i_1_n_0 ),
        .Q(slv_reg2[7]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[8]_i_1_n_0 ),
        .Q(slv_reg2[8]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(\slv_reg2[9]_i_1_n_0 ),
        .Q(slv_reg2[9]),
        .R(slv_reg2__0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[10]_i_1 
       (.I0(S_AXI_WDATA[10]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[10]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[11]_i_1 
       (.I0(S_AXI_WDATA[11]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[11]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[12]_i_1 
       (.I0(S_AXI_WDATA[12]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[12]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[13]_i_1 
       (.I0(S_AXI_WDATA[13]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[13]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[14]_i_1 
       (.I0(S_AXI_WDATA[14]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[14]),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[15]_i_1 
       (.I0(S_AXI_WDATA[15]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[15]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[16]_i_1 
       (.I0(S_AXI_WDATA[16]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[16]),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[17]_i_1 
       (.I0(S_AXI_WDATA[17]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[17]),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[18]_i_1 
       (.I0(S_AXI_WDATA[18]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[18]),
        .O(p_1_in[18]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[19]_i_1 
       (.I0(S_AXI_WDATA[19]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[19]),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[20]_i_1 
       (.I0(S_AXI_WDATA[20]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[20]),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[21]_i_1 
       (.I0(S_AXI_WDATA[21]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[21]),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[22]_i_1 
       (.I0(S_AXI_WDATA[22]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[22]),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[23]_i_1 
       (.I0(S_AXI_WDATA[23]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[23]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[24]_i_1 
       (.I0(S_AXI_WDATA[24]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[24]),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[25]_i_1 
       (.I0(S_AXI_WDATA[25]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[25]),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[26]_i_1 
       (.I0(S_AXI_WDATA[26]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[26]),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[27]_i_1 
       (.I0(S_AXI_WDATA[27]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[27]),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[28]_i_1 
       (.I0(S_AXI_WDATA[28]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[28]),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[29]_i_1 
       (.I0(S_AXI_WDATA[29]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[29]),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[30]_i_1 
       (.I0(S_AXI_WDATA[30]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[30]),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[31]_i_1 
       (.I0(S_AXI_WDATA[31]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[31]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[3]_i_1 
       (.I0(S_AXI_WDATA[3]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[4]_i_1 
       (.I0(S_AXI_WDATA[4]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[5]_i_1 
       (.I0(S_AXI_WDATA[5]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[6]_i_1 
       (.I0(S_AXI_WDATA[6]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[7]_i_1 
       (.I0(S_AXI_WDATA[7]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[8]_i_1 
       (.I0(S_AXI_WDATA[8]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[8]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \slv_reg3[9]_i_1 
       (.I0(S_AXI_WDATA[9]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(slv_reg3[9]),
        .O(p_1_in[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[0]),
        .Q(slv_reg3[0]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[10]),
        .Q(slv_reg3[10]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[11]),
        .Q(slv_reg3[11]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[12]),
        .Q(slv_reg3[12]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[13]),
        .Q(slv_reg3[13]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[14]),
        .Q(slv_reg3[14]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[15]),
        .Q(slv_reg3[15]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[16]),
        .Q(slv_reg3[16]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[17]),
        .Q(slv_reg3[17]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[18]),
        .Q(slv_reg3[18]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[19]),
        .Q(slv_reg3[19]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[1]),
        .Q(slv_reg3[1]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[20]),
        .Q(slv_reg3[20]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[21]),
        .Q(slv_reg3[21]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[22]),
        .Q(slv_reg3[22]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[23]),
        .Q(slv_reg3[23]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[24]),
        .Q(slv_reg3[24]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[25]),
        .Q(slv_reg3[25]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[26]),
        .Q(slv_reg3[26]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[27]),
        .Q(slv_reg3[27]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[28]),
        .Q(slv_reg3[28]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[29]),
        .Q(slv_reg3[29]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[2]),
        .Q(slv_reg3[2]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[30]),
        .Q(slv_reg3[30]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[31]),
        .Q(slv_reg3[31]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[3]),
        .Q(slv_reg3[3]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[4]),
        .Q(slv_reg3[4]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[5]),
        .Q(slv_reg3[5]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[6]),
        .Q(slv_reg3[6]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[7]),
        .Q(slv_reg3[7]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[8]),
        .Q(slv_reg3[8]),
        .R(slv_reg2__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "true" *) 
  FDRE \slv_reg3_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_wren),
        .D(p_1_in[9]),
        .Q(slv_reg3[9]),
        .R(slv_reg2__0));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden_inferred_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .O(slv_reg_rden));
  LUT4 #(
    .INIT(16'h8000)) 
    slv_reg_wren_inferred_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWVALID),
        .O(slv_reg_wren));
endmodule

(* CHECK_LICENSE_TYPE = "mb_subsystem_AXI_to_native_FIFO_0_0,AXI_to_native_FIFO_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AXI_to_native_FIFO_v1_0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module mb_subsystem_AXI_to_native_FIFO_0_0
   (M_NATIVE_READ_EMPTY,
    M_NATIVE_READ_AEMPTY,
    M_NATIVE_READ_DOUT,
    M_NATIVE_READ_RD_EN,
    M_NATIVE_WRITE_ACLR,
    M_NATIVE_WRITE_FULL,
    M_NATIVE_WRITE_AFULL,
    M_NATIVE_WRITE_DIN,
    M_NATIVE_WRITE_WR_EN,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 M00_NATIVE_READ EMPTY" *) input M_NATIVE_READ_EMPTY;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 M00_NATIVE_READ ALMOST_EMPTY" *) input M_NATIVE_READ_AEMPTY;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 M00_NATIVE_READ RD_DATA" *) input [31:0]M_NATIVE_READ_DOUT;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 M00_NATIVE_READ RD_EN" *) output M_NATIVE_READ_RD_EN;
  output M_NATIVE_WRITE_ACLR;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 M00_NATIVE_WRITE FULL" *) input M_NATIVE_WRITE_FULL;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 M00_NATIVE_WRITE ALMOST_FULL" *) input M_NATIVE_WRITE_AFULL;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 M00_NATIVE_WRITE WR_DATA" *) output [31:0]M_NATIVE_WRITE_DIN;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 M00_NATIVE_WRITE WR_EN" *) output M_NATIVE_WRITE_WR_EN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mb_subsystem_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mb_subsystem_Clk, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire M_NATIVE_READ_AEMPTY;
  wire [31:0]M_NATIVE_READ_DOUT;
  wire M_NATIVE_READ_EMPTY;
  wire M_NATIVE_READ_RD_EN;
  wire M_NATIVE_WRITE_ACLR;
  wire M_NATIVE_WRITE_AFULL;
  wire [31:0]M_NATIVE_WRITE_DIN;
  wire M_NATIVE_WRITE_FULL;
  wire M_NATIVE_WRITE_WR_EN;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0 U0
       (.M_NATIVE_READ_AEMPTY(M_NATIVE_READ_AEMPTY),
        .M_NATIVE_READ_DOUT(M_NATIVE_READ_DOUT),
        .M_NATIVE_READ_EMPTY(M_NATIVE_READ_EMPTY),
        .M_NATIVE_READ_RD_EN(M_NATIVE_READ_RD_EN),
        .M_NATIVE_WRITE_ACLR(M_NATIVE_WRITE_ACLR),
        .M_NATIVE_WRITE_AFULL(M_NATIVE_WRITE_AFULL),
        .M_NATIVE_WRITE_DIN(M_NATIVE_WRITE_DIN),
        .M_NATIVE_WRITE_FULL(M_NATIVE_WRITE_FULL),
        .M_NATIVE_WRITE_WR_EN(M_NATIVE_WRITE_WR_EN),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
