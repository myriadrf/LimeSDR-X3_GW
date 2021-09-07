// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Feb 26 15:55:25 2021
// Host        : servenikas-MS-7B86 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top mb_subsystem_axi_amm_bridge_0_0 -prefix
//               mb_subsystem_axi_amm_bridge_0_0_ mb_subsystem_axi_amm_bridge_0_0_sim_netlist.v
// Design      : mb_subsystem_axi_amm_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_11_lite
   (s_axi_rdata,
    avm_address,
    avm_byteenable,
    avm_writedata,
    avm_beginbursttransfer,
    s_axi_rvalid_reg_0,
    s_axi_bvalid_reg_0,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_arready,
    s_axi_rresp,
    avm_write,
    avm_read,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    avm_waitrequest,
    s_axi_aclk,
    s_axi_wdata,
    avm_readdatavalid,
    s_axi_rready,
    avm_readdata,
    s_axi_bready,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_wstrb);
  output [31:0]s_axi_rdata;
  output [31:0]avm_address;
  output [3:0]avm_byteenable;
  output [31:0]avm_writedata;
  output avm_beginbursttransfer;
  output s_axi_rvalid_reg_0;
  output s_axi_bvalid_reg_0;
  output s_axi_awready;
  output s_axi_wready;
  output [0:0]s_axi_bresp;
  output s_axi_arready;
  output [0:0]s_axi_rresp;
  output avm_write;
  output avm_read;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input avm_waitrequest;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input avm_readdatavalid;
  input s_axi_rready;
  input [31:0]avm_readdata;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_wstrb;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[3]_i_3_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_2_n_0 ;
  wire \FSM_onehot_current_state[5]_i_1_n_0 ;
  wire \FSM_onehot_current_state[6]_i_1_n_0 ;
  wire \FSM_onehot_current_state[7]_i_1_n_0 ;
  wire \FSM_onehot_current_state[8]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire \FSM_onehot_current_state_reg_n_0_[5] ;
  wire \FSM_onehot_current_state_reg_n_0_[7] ;
  wire \FSM_onehot_current_state_reg_n_0_[8] ;
  wire [31:0]avm_address;
  wire \avm_address[0]_i_1_n_0 ;
  wire \avm_address[10]_i_1_n_0 ;
  wire \avm_address[11]_i_1_n_0 ;
  wire \avm_address[12]_i_1_n_0 ;
  wire \avm_address[13]_i_1_n_0 ;
  wire \avm_address[14]_i_1_n_0 ;
  wire \avm_address[15]_i_1_n_0 ;
  wire \avm_address[16]_i_1_n_0 ;
  wire \avm_address[17]_i_1_n_0 ;
  wire \avm_address[18]_i_1_n_0 ;
  wire \avm_address[19]_i_1_n_0 ;
  wire \avm_address[1]_i_1_n_0 ;
  wire \avm_address[20]_i_1_n_0 ;
  wire \avm_address[21]_i_1_n_0 ;
  wire \avm_address[22]_i_1_n_0 ;
  wire \avm_address[23]_i_1_n_0 ;
  wire \avm_address[24]_i_1_n_0 ;
  wire \avm_address[25]_i_1_n_0 ;
  wire \avm_address[26]_i_1_n_0 ;
  wire \avm_address[27]_i_1_n_0 ;
  wire \avm_address[28]_i_1_n_0 ;
  wire \avm_address[29]_i_1_n_0 ;
  wire \avm_address[2]_i_1_n_0 ;
  wire \avm_address[30]_i_1_n_0 ;
  wire \avm_address[31]_i_1_n_0 ;
  wire \avm_address[31]_i_2_n_0 ;
  wire \avm_address[31]_i_3_n_0 ;
  wire \avm_address[31]_i_4_n_0 ;
  wire \avm_address[3]_i_1_n_0 ;
  wire \avm_address[4]_i_1_n_0 ;
  wire \avm_address[5]_i_1_n_0 ;
  wire \avm_address[6]_i_1_n_0 ;
  wire \avm_address[7]_i_1_n_0 ;
  wire \avm_address[8]_i_1_n_0 ;
  wire \avm_address[9]_i_1_n_0 ;
  wire avm_beginbursttransfer;
  wire avm_beginbursttransfer_i_1_n_0;
  wire [3:0]avm_byteenable;
  wire \avm_byteenable[0]_i_1_n_0 ;
  wire \avm_byteenable[1]_i_1_n_0 ;
  wire \avm_byteenable[2]_i_1_n_0 ;
  wire \avm_byteenable[3]_i_1_n_0 ;
  wire \avm_byteenable[3]_i_2_n_0 ;
  wire avm_read;
  wire avm_read_i_1_n_0;
  wire [31:0]avm_readdata;
  wire avm_readdata_i;
  wire avm_readdatavalid;
  wire avm_waitrequest;
  wire avm_write;
  wire avm_write_i_1_n_0;
  wire avm_write_i_2_n_0;
  wire [31:0]avm_writedata;
  wire \avm_writedata[31]_i_1_n_0 ;
  wire \avm_writedata[31]_i_2_n_0 ;
  wire \avm_writedata[31]_i_3_n_0 ;
  wire \avm_writedata[31]_i_4_n_0 ;
  wire clear;
  wire [8:0]p_0_in;
  wire [31:0]p_1_in;
  wire p_1_in_0;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arready_i_1_n_0;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awready_i_2_n_0;
  wire s_axi_awready_i_3_n_0;
  wire s_axi_awready_i_4_n_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp[1]_i_1_n_0 ;
  wire \s_axi_bresp[1]_i_2_n_0 ;
  wire \s_axi_bresp[1]_i_3_n_0 ;
  wire s_axi_bvalid_i_1_n_0;
  wire s_axi_bvalid_reg_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire \s_axi_rresp[1]_i_1_n_0 ;
  wire \s_axi_rresp[1]_i_2_n_0 ;
  wire \s_axi_rresp[1]_i_3_n_0 ;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_i_1_n_0;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start;
  wire start_i_1_n_0;
  wire start_i_2_n_0;
  wire start_i_3_n_0;
  wire start_i_5_n_0;
  wire start_reg_n_0;
  wire \tout_counter[8]_i_3_n_0 ;
  wire [8:0]tout_counter_reg;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF808080)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\avm_address[31]_i_3_n_0 ),
        .I1(avm_waitrequest),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(s_axi_arvalid),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFFFF40FF40)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(s_axi_rvalid_reg_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\avm_address[31]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I4(avm_waitrequest),
        .I5(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0EFE0000)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(avm_readdata_i),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(s_axi_rready),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(avm_waitrequest),
        .I2(\avm_address[31]_i_3_n_0 ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF0700)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h32FF32FF32FF3232)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(avm_readdata_i),
        .I1(\s_axi_bresp[1]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(p_1_in_0),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_current_state[3]_i_3 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_reg_0),
        .O(\FSM_onehot_current_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040404)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(avm_readdatavalid),
        .I1(\FSM_onehot_current_state[4]_i_2_n_0 ),
        .I2(\avm_address[31]_i_3_n_0 ),
        .I3(\s_axi_bresp[1]_i_2_n_0 ),
        .I4(avm_readdata_i),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(s_axi_rvalid_reg_0),
        .O(\FSM_onehot_current_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2AFF2A2A)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_reg_0),
        .I3(avm_waitrequest),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFF2A)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(p_1_in_0),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_reg_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(\FSM_onehot_current_state[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800080)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(s_axi_arvalid),
        .I4(s_axi_awready_i_3_n_0),
        .I5(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_current_state[8]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(avm_waitrequest),
        .I2(\avm_address[31]_i_3_n_0 ),
        .O(\FSM_onehot_current_state[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .R(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ),
        .S(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .Q(avm_readdata_i),
        .R(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ),
        .R(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[6]_i_1_n_0 ),
        .Q(p_1_in_0),
        .R(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ),
        .R(s_axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[0]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[0]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[10]_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[10]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[11]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[11]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[12]_i_1 
       (.I0(s_axi_araddr[12]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[12]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[13]_i_1 
       (.I0(s_axi_araddr[13]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[13]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[14]_i_1 
       (.I0(s_axi_araddr[14]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[14]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[15]_i_1 
       (.I0(s_axi_araddr[15]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[15]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[16]_i_1 
       (.I0(s_axi_araddr[16]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[16]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[17]_i_1 
       (.I0(s_axi_araddr[17]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[17]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[18]_i_1 
       (.I0(s_axi_araddr[18]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[18]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[19]_i_1 
       (.I0(s_axi_araddr[19]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[19]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[1]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[1]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[20]_i_1 
       (.I0(s_axi_araddr[20]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[20]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[21]_i_1 
       (.I0(s_axi_araddr[21]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[21]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[22]_i_1 
       (.I0(s_axi_araddr[22]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[22]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[23]_i_1 
       (.I0(s_axi_araddr[23]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[23]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[24]_i_1 
       (.I0(s_axi_araddr[24]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[24]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[25]_i_1 
       (.I0(s_axi_araddr[25]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[25]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[26]_i_1 
       (.I0(s_axi_araddr[26]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[26]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[27]_i_1 
       (.I0(s_axi_araddr[27]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[27]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[28]_i_1 
       (.I0(s_axi_araddr[28]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[28]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[29]_i_1 
       (.I0(s_axi_araddr[29]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[29]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[2]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[30]_i_1 
       (.I0(s_axi_araddr[30]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[30]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAAFAA)) 
    \avm_address[31]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(avm_waitrequest),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(\avm_address[31]_i_3_n_0 ),
        .O(\avm_address[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[31]_i_2 
       (.I0(s_axi_araddr[31]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[31]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \avm_address[31]_i_3 
       (.I0(s_axi_awready_i_4_n_0),
        .I1(tout_counter_reg[3]),
        .I2(tout_counter_reg[4]),
        .I3(tout_counter_reg[1]),
        .I4(tout_counter_reg[2]),
        .O(\avm_address[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \avm_address[31]_i_4 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\avm_address[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[3]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[4]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[4]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[5]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[6]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[7]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[7]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[8]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[8]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA80AA80AA80)) 
    \avm_address[9]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_awaddr[9]),
        .I5(\avm_address[31]_i_4_n_0 ),
        .O(\avm_address[9]_i_1_n_0 ));
  FDRE \avm_address_reg[0] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[0]_i_1_n_0 ),
        .Q(avm_address[0]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[10]_i_1_n_0 ),
        .Q(avm_address[10]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[11]_i_1_n_0 ),
        .Q(avm_address[11]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[12]_i_1_n_0 ),
        .Q(avm_address[12]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[13]_i_1_n_0 ),
        .Q(avm_address[13]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[14]_i_1_n_0 ),
        .Q(avm_address[14]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[15]_i_1_n_0 ),
        .Q(avm_address[15]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[16]_i_1_n_0 ),
        .Q(avm_address[16]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[17]_i_1_n_0 ),
        .Q(avm_address[17]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[18]_i_1_n_0 ),
        .Q(avm_address[18]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[19]_i_1_n_0 ),
        .Q(avm_address[19]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[1] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[1]_i_1_n_0 ),
        .Q(avm_address[1]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[20]_i_1_n_0 ),
        .Q(avm_address[20]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[21]_i_1_n_0 ),
        .Q(avm_address[21]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[22]_i_1_n_0 ),
        .Q(avm_address[22]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[23]_i_1_n_0 ),
        .Q(avm_address[23]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[24]_i_1_n_0 ),
        .Q(avm_address[24]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[25]_i_1_n_0 ),
        .Q(avm_address[25]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[26]_i_1_n_0 ),
        .Q(avm_address[26]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[27]_i_1_n_0 ),
        .Q(avm_address[27]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[28]_i_1_n_0 ),
        .Q(avm_address[28]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[29] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[29]_i_1_n_0 ),
        .Q(avm_address[29]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[2] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[2]_i_1_n_0 ),
        .Q(avm_address[2]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[30] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[30]_i_1_n_0 ),
        .Q(avm_address[30]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[31] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[31]_i_2_n_0 ),
        .Q(avm_address[31]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[3]_i_1_n_0 ),
        .Q(avm_address[3]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[4]_i_1_n_0 ),
        .Q(avm_address[4]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[5]_i_1_n_0 ),
        .Q(avm_address[5]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[6]_i_1_n_0 ),
        .Q(avm_address[6]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[7]_i_1_n_0 ),
        .Q(avm_address[7]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[8]_i_1_n_0 ),
        .Q(avm_address[8]),
        .R(s_axi_awready_i_1_n_0));
  FDRE \avm_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\avm_address[31]_i_1_n_0 ),
        .D(\avm_address[9]_i_1_n_0 ),
        .Q(avm_address[9]),
        .R(s_axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    avm_beginbursttransfer_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(avm_beginbursttransfer_i_1_n_0));
  FDRE avm_beginbursttransfer_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(avm_beginbursttransfer_i_1_n_0),
        .Q(avm_beginbursttransfer),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFAAFF80FF80)) 
    \avm_byteenable[0]_i_1 
       (.I0(s_axi_wstrb[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(avm_waitrequest),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_arvalid),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\avm_byteenable[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAAFF80FF80)) 
    \avm_byteenable[1]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(avm_waitrequest),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_arvalid),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\avm_byteenable[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAAFF80FF80)) 
    \avm_byteenable[2]_i_1 
       (.I0(s_axi_wstrb[2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(avm_waitrequest),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_arvalid),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\avm_byteenable[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEAAFEFE)) 
    \avm_byteenable[3]_i_1 
       (.I0(avm_beginbursttransfer_i_1_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\avm_address[31]_i_3_n_0 ),
        .I4(avm_waitrequest),
        .O(\avm_byteenable[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAAFF80FF80)) 
    \avm_byteenable[3]_i_2 
       (.I0(s_axi_wstrb[3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(avm_waitrequest),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(s_axi_arvalid),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\avm_byteenable[3]_i_2_n_0 ));
  FDSE \avm_byteenable_reg[0] 
       (.C(s_axi_aclk),
        .CE(\avm_byteenable[3]_i_1_n_0 ),
        .D(\avm_byteenable[0]_i_1_n_0 ),
        .Q(avm_byteenable[0]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \avm_byteenable_reg[1] 
       (.C(s_axi_aclk),
        .CE(\avm_byteenable[3]_i_1_n_0 ),
        .D(\avm_byteenable[1]_i_1_n_0 ),
        .Q(avm_byteenable[1]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \avm_byteenable_reg[2] 
       (.C(s_axi_aclk),
        .CE(\avm_byteenable[3]_i_1_n_0 ),
        .D(\avm_byteenable[2]_i_1_n_0 ),
        .Q(avm_byteenable[2]),
        .S(s_axi_awready_i_1_n_0));
  FDSE \avm_byteenable_reg[3] 
       (.C(s_axi_aclk),
        .CE(\avm_byteenable[3]_i_1_n_0 ),
        .D(\avm_byteenable[3]_i_2_n_0 ),
        .Q(avm_byteenable[3]),
        .S(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF8F088FFF8F08800)) 
    avm_read_i_1
       (.I0(\avm_address[31]_i_3_n_0 ),
        .I1(avm_waitrequest),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(avm_read),
        .O(avm_read_i_1_n_0));
  FDRE avm_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(avm_read_i_1_n_0),
        .Q(avm_read),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h2F0F22FF2F0F2200)) 
    avm_write_i_1
       (.I0(avm_write_i_2_n_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_awready_i_3_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(avm_write),
        .O(avm_write_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    avm_write_i_2
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .O(avm_write_i_2_n_0));
  FDRE avm_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(avm_write_i_1_n_0),
        .Q(avm_write),
        .R(s_axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h000E0C0C)) 
    \avm_writedata[31]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\avm_writedata[31]_i_3_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(avm_waitrequest),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\avm_writedata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF000088880000)) 
    \avm_writedata[31]_i_2 
       (.I0(avm_write_i_2_n_0),
        .I1(\avm_writedata[31]_i_4_n_0 ),
        .I2(\avm_address[31]_i_3_n_0 ),
        .I3(avm_waitrequest),
        .I4(s_axi_aresetn),
        .I5(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\avm_writedata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \avm_writedata[31]_i_3 
       (.I0(s_axi_aresetn),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_awvalid),
        .I4(s_axi_wvalid),
        .O(\avm_writedata[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \avm_writedata[31]_i_4 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(s_axi_arvalid),
        .O(\avm_writedata[31]_i_4_n_0 ));
  FDRE \avm_writedata_reg[0] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(avm_writedata[0]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[10] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(avm_writedata[10]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[11] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(avm_writedata[11]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[12] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(avm_writedata[12]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[13] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(avm_writedata[13]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[14] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(avm_writedata[14]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[15] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(avm_writedata[15]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[16] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(avm_writedata[16]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[17] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(avm_writedata[17]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[18] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(avm_writedata[18]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[19] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(avm_writedata[19]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[1] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(avm_writedata[1]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[20] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(avm_writedata[20]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[21] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(avm_writedata[21]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[22] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(avm_writedata[22]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[23] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(avm_writedata[23]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[24] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(avm_writedata[24]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[25] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(avm_writedata[25]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[26] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(avm_writedata[26]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[27] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(avm_writedata[27]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[28] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(avm_writedata[28]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[29] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(avm_writedata[29]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[2] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(avm_writedata[2]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[30] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(avm_writedata[30]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[31] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(avm_writedata[31]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[3] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(avm_writedata[3]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[4] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(avm_writedata[4]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[5] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(avm_writedata[5]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[6] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(avm_writedata[6]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[7] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(avm_writedata[7]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[8] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(avm_writedata[8]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  FDRE \avm_writedata_reg[9] 
       (.C(s_axi_aclk),
        .CE(\avm_writedata[31]_i_2_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(avm_writedata[9]),
        .R(\avm_writedata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A3A0A0A0A0)) 
    s_axi_arready_i_1
       (.I0(s_axi_awready_i_3_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(s_axi_arready),
        .O(s_axi_arready_i_1_n_0));
  FDRE s_axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_arready_i_1_n_0),
        .Q(s_axi_arready),
        .R(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA0003AAAA0000)) 
    s_axi_awready_i_2
       (.I0(s_axi_awready_i_3_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(s_axi_awready),
        .O(s_axi_awready_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    s_axi_awready_i_3
       (.I0(tout_counter_reg[2]),
        .I1(tout_counter_reg[1]),
        .I2(tout_counter_reg[4]),
        .I3(tout_counter_reg[3]),
        .I4(s_axi_awready_i_4_n_0),
        .I5(avm_waitrequest),
        .O(s_axi_awready_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    s_axi_awready_i_4
       (.I0(tout_counter_reg[7]),
        .I1(tout_counter_reg[8]),
        .I2(tout_counter_reg[5]),
        .I3(tout_counter_reg[6]),
        .I4(start_reg_n_0),
        .I5(tout_counter_reg[0]),
        .O(s_axi_awready_i_4_n_0));
  FDRE s_axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_awready_i_2_n_0),
        .Q(s_axi_awready),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0F080F0F0F080F00)) 
    \s_axi_bresp[1]_i_1 
       (.I0(avm_readdata_i),
        .I1(\s_axi_bresp[1]_i_2_n_0 ),
        .I2(\s_axi_bresp[1]_i_3_n_0 ),
        .I3(p_1_in_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(s_axi_bresp),
        .O(\s_axi_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_axi_bresp[1]_i_2 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_reg_0),
        .O(\s_axi_bresp[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \s_axi_bresp[1]_i_3 
       (.I0(s_axi_bvalid_reg_0),
        .I1(s_axi_bready),
        .I2(s_axi_aresetn),
        .O(\s_axi_bresp[1]_i_3_n_0 ));
  FDRE \s_axi_bresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0EFE)) 
    s_axi_bvalid_i_1
       (.I0(p_1_in_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(s_axi_bvalid_reg_0),
        .I3(s_axi_bready),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid_reg_0),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[10]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[11]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[11]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[12]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[12]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[13]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[13]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[14]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[14]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[15]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[15]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[16]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[16]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[17]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[17]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[18]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[18]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[19]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[19]),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[20]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[20]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[21]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[21]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[22]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[22]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[23]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[23]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[24]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[25]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[25]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[26]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[26]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[27]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[27]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[28]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[28]),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[29]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[29]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[30]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[30]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'hFF557F557F557F55)) 
    \s_axi_rdata[31]_i_1 
       (.I0(s_axi_aresetn),
        .I1(s_axi_rvalid_reg_0),
        .I2(s_axi_rready),
        .I3(avm_readdata_i),
        .I4(avm_readdatavalid),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \s_axi_rdata[31]_i_2 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_reg_0),
        .I2(avm_readdata_i),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(avm_readdatavalid),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[31]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[31]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[8]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h8F88FF8800000000)) 
    \s_axi_rdata[9]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(avm_readdatavalid),
        .I2(s_axi_rvalid_reg_0),
        .I3(avm_readdata_i),
        .I4(s_axi_rready),
        .I5(avm_readdata[9]),
        .O(p_1_in[9]));
  FDRE \s_axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(s_axi_rdata[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[10]),
        .Q(s_axi_rdata[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[11]),
        .Q(s_axi_rdata[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[12]),
        .Q(s_axi_rdata[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[13]),
        .Q(s_axi_rdata[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[14]),
        .Q(s_axi_rdata[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[15]),
        .Q(s_axi_rdata[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[16]),
        .Q(s_axi_rdata[16]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[17]),
        .Q(s_axi_rdata[17]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[18]),
        .Q(s_axi_rdata[18]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[19]),
        .Q(s_axi_rdata[19]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[20]),
        .Q(s_axi_rdata[20]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[21]),
        .Q(s_axi_rdata[21]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[22]),
        .Q(s_axi_rdata[22]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[23]),
        .Q(s_axi_rdata[23]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[24]),
        .Q(s_axi_rdata[24]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[25]),
        .Q(s_axi_rdata[25]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[26]),
        .Q(s_axi_rdata[26]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[27]),
        .Q(s_axi_rdata[27]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[28]),
        .Q(s_axi_rdata[28]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[29]),
        .Q(s_axi_rdata[29]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[30]),
        .Q(s_axi_rdata[30]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[31]),
        .Q(s_axi_rdata[31]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(s_axi_rdata[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(s_axi_rdata[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(s_axi_rdata[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(s_axi_rdata[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEAAAEAAEEAAA2AA)) 
    \s_axi_rresp[1]_i_1 
       (.I0(\s_axi_rresp[1]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .I2(\s_axi_rresp[1]_i_3_n_0 ),
        .I3(\s_axi_bresp[1]_i_2_n_0 ),
        .I4(avm_readdata_i),
        .I5(s_axi_rresp),
        .O(\s_axi_rresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800080008000)) 
    \s_axi_rresp[1]_i_2 
       (.I0(p_1_in_0),
        .I1(avm_readdatavalid),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(s_axi_aresetn),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid_reg_0),
        .O(\s_axi_rresp[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_rresp[1]_i_3 
       (.I0(avm_readdatavalid),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\s_axi_rresp[1]_i_3_n_0 ));
  FDRE \s_axi_rresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rresp[1]_i_1_n_0 ),
        .Q(s_axi_rresp),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF747474)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_reg_0),
        .I2(avm_readdata_i),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(avm_readdatavalid),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAA0003AAAA0000)) 
    s_axi_wready_i_1
       (.I0(s_axi_awready_i_3_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(s_axi_wready),
        .O(s_axi_wready_i_1_n_0));
  FDRE s_axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wready_i_1_n_0),
        .Q(s_axi_wready),
        .R(s_axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF80000)) 
    start_i_1
       (.I0(\avm_address[31]_i_3_n_0 ),
        .I1(start_i_2_n_0),
        .I2(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I3(start_i_3_n_0),
        .I4(start),
        .I5(start_reg_n_0),
        .O(start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA8FFA8A8)) 
    start_i_2
       (.I0(avm_waitrequest),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(s_axi_rvalid_reg_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(start_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h70)) 
    start_i_3
       (.I0(s_axi_bvalid_reg_0),
        .I1(s_axi_bready),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(start_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    start_i_4
       (.I0(avm_readdata_i),
        .I1(\s_axi_bresp[1]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(start_i_5_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(start));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    start_i_5
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(start_i_5_n_0));
  FDRE start_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start_reg_n_0),
        .R(s_axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \tout_counter[0]_i_1 
       (.I0(tout_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tout_counter[1]_i_1 
       (.I0(tout_counter_reg[0]),
        .I1(tout_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tout_counter[2]_i_1 
       (.I0(tout_counter_reg[1]),
        .I1(tout_counter_reg[0]),
        .I2(tout_counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tout_counter[3]_i_1 
       (.I0(tout_counter_reg[2]),
        .I1(tout_counter_reg[0]),
        .I2(tout_counter_reg[1]),
        .I3(tout_counter_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tout_counter[4]_i_1 
       (.I0(tout_counter_reg[3]),
        .I1(tout_counter_reg[1]),
        .I2(tout_counter_reg[0]),
        .I3(tout_counter_reg[2]),
        .I4(tout_counter_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \tout_counter[5]_i_1 
       (.I0(tout_counter_reg[4]),
        .I1(tout_counter_reg[2]),
        .I2(tout_counter_reg[0]),
        .I3(tout_counter_reg[1]),
        .I4(tout_counter_reg[3]),
        .I5(tout_counter_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \tout_counter[6]_i_1 
       (.I0(\tout_counter[8]_i_3_n_0 ),
        .I1(tout_counter_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \tout_counter[7]_i_1 
       (.I0(tout_counter_reg[6]),
        .I1(\tout_counter[8]_i_3_n_0 ),
        .I2(tout_counter_reg[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \tout_counter[8]_i_1 
       (.I0(start_reg_n_0),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hC6CC)) 
    \tout_counter[8]_i_2 
       (.I0(tout_counter_reg[7]),
        .I1(tout_counter_reg[8]),
        .I2(\tout_counter[8]_i_3_n_0 ),
        .I3(tout_counter_reg[6]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tout_counter[8]_i_3 
       (.I0(tout_counter_reg[4]),
        .I1(tout_counter_reg[2]),
        .I2(tout_counter_reg[0]),
        .I3(tout_counter_reg[1]),
        .I4(tout_counter_reg[3]),
        .I5(tout_counter_reg[5]),
        .O(\tout_counter[8]_i_3_n_0 ));
  FDSE \tout_counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(tout_counter_reg[0]),
        .S(clear));
  FDRE \tout_counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(tout_counter_reg[1]),
        .R(clear));
  FDRE \tout_counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(tout_counter_reg[2]),
        .R(clear));
  FDRE \tout_counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(tout_counter_reg[3]),
        .R(clear));
  FDRE \tout_counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(tout_counter_reg[4]),
        .R(clear));
  FDRE \tout_counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(tout_counter_reg[5]),
        .R(clear));
  FDRE \tout_counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(tout_counter_reg[6]),
        .R(clear));
  FDRE \tout_counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(tout_counter_reg[7]),
        .R(clear));
  FDRE \tout_counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(tout_counter_reg[8]),
        .R(clear));
endmodule

(* All_zero = "1'b0" *) (* C_ADDRESS_MODE = "0" *) (* C_AVM_BURST_WIDTH = "1" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_BASE1_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_BASE2_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000100" *) 
(* C_BASE3_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000001000" *) (* C_BASE4_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000001100" *) (* C_BURST_LENGTH = "4" *) 
(* C_DPHASE_TIMEOUT = "256" *) (* C_FAMILY = "artix7" *) (* C_FIXED_READ_WAIT = "1" *) 
(* C_FIXED_WRITE_WAIT = "1" *) (* C_HAS_FIXED_READ_LATENCY = "0" *) (* C_HAS_FIXED_WAIT = "0" *) 
(* C_HAS_RESPONSE = "0" *) (* C_HIGH1_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000011" *) (* C_HIGH2_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000101" *) 
(* C_HIGH3_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000001001" *) (* C_HIGH4_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000001111" *) (* C_NUM_ADDRESS_RANGES = "0" *) 
(* C_NUM_OUTSTANDING = "2" *) (* C_PROTOCOL = "0" *) (* C_READ_LATENCY = "1" *) 
(* C_S_AXI_ADDR_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "4" *) 
(* C_USE_WSTRB = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
module mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_11_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    avm_address,
    avm_write,
    avm_read,
    avm_byteenable,
    avm_writedata,
    avm_readdata,
    avm_resp,
    avm_readdatavalid,
    avm_burstcount,
    avm_beginbursttransfer,
    avm_writeresponsevalid,
    avm_waitrequest);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]avm_address;
  output avm_write;
  output avm_read;
  output [3:0]avm_byteenable;
  output [31:0]avm_writedata;
  input [31:0]avm_readdata;
  input [1:0]avm_resp;
  input avm_readdatavalid;
  output [0:0]avm_burstcount;
  output avm_beginbursttransfer;
  input avm_writeresponsevalid;
  input avm_waitrequest;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]avm_address;
  wire avm_beginbursttransfer;
  wire [3:0]avm_byteenable;
  wire avm_read;
  wire [31:0]avm_readdata;
  wire avm_readdatavalid;
  wire avm_waitrequest;
  wire avm_write;
  wire [31:0]avm_writedata;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign avm_burstcount[0] = \<const1> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_11_lite \AXI_LITE.I_AVA_MASTER_LITE 
       (.avm_address(avm_address),
        .avm_beginbursttransfer(avm_beginbursttransfer),
        .avm_byteenable(avm_byteenable),
        .avm_read(avm_read),
        .avm_readdata(avm_readdata),
        .avm_readdatavalid(avm_readdatavalid),
        .avm_waitrequest(avm_waitrequest),
        .avm_write(avm_write),
        .avm_writedata(avm_writedata),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid_reg_0(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "mb_subsystem_axi_amm_bridge_0_0,axi_amm_bridge_v1_0_11_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_amm_bridge_v1_0_11_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module mb_subsystem_axi_amm_bridge_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    avm_address,
    avm_write,
    avm_read,
    avm_writedata,
    avm_readdata,
    avm_readdatavalid,
    avm_waitrequest);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF S_AXI_LITE:S_AXI_FULL:M_AVALON, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN mb_subsystem_Clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mb_subsystem_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON ADDRESS" *) output [31:0]avm_address;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON WRITE" *) output avm_write;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON READ" *) output avm_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON WRITEDATA" *) output [31:0]avm_writedata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON READDATA" *) input [31:0]avm_readdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON READDATAVALID" *) input avm_readdatavalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:avalon:1.0 M_AVALON WAITREQUEST" *) input avm_waitrequest;

  wire [31:0]avm_address;
  wire avm_read;
  wire [31:0]avm_readdata;
  wire avm_readdatavalid;
  wire avm_waitrequest;
  wire avm_write;
  wire [31:0]avm_writedata;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_avm_beginbursttransfer_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [0:0]NLW_inst_avm_burstcount_UNCONNECTED;
  wire [3:0]NLW_inst_avm_byteenable_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [3:0]NLW_inst_s_axi_rid_UNCONNECTED;

  (* All_zero = "1'b0" *) 
  (* C_ADDRESS_MODE = "0" *) 
  (* C_AVM_BURST_WIDTH = "1" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_BASE1_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_BASE2_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000100" *) 
  (* C_BASE3_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000001000" *) 
  (* C_BASE4_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000001100" *) 
  (* C_BURST_LENGTH = "4" *) 
  (* C_DPHASE_TIMEOUT = "256" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FIXED_READ_WAIT = "1" *) 
  (* C_FIXED_WRITE_WAIT = "1" *) 
  (* C_HAS_FIXED_READ_LATENCY = "0" *) 
  (* C_HAS_FIXED_WAIT = "0" *) 
  (* C_HAS_RESPONSE = "0" *) 
  (* C_HIGH1_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000011" *) 
  (* C_HIGH2_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000000101" *) 
  (* C_HIGH3_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000001001" *) 
  (* C_HIGH4_ADDR = "64'b0000000000000000000000000000000000000000000000000000000000001111" *) 
  (* C_NUM_ADDRESS_RANGES = "0" *) 
  (* C_NUM_OUTSTANDING = "2" *) 
  (* C_PROTOCOL = "0" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "4" *) 
  (* C_USE_WSTRB = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_11_top inst
       (.avm_address(avm_address),
        .avm_beginbursttransfer(NLW_inst_avm_beginbursttransfer_UNCONNECTED),
        .avm_burstcount(NLW_inst_avm_burstcount_UNCONNECTED[0]),
        .avm_byteenable(NLW_inst_avm_byteenable_UNCONNECTED[3:0]),
        .avm_read(avm_read),
        .avm_readdata(avm_readdata),
        .avm_readdatavalid(avm_readdatavalid),
        .avm_resp({1'b0,1'b0}),
        .avm_waitrequest(avm_waitrequest),
        .avm_write(avm_write),
        .avm_writedata(avm_writedata),
        .avm_writeresponsevalid(1'b0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
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
