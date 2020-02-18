-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Dec 10 13:56:11 2019
-- Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mb_subsystem_axi_amm_bridge_0_0 -prefix
--               mb_subsystem_axi_amm_bridge_0_0_ mb_subsystem_axi_amm_bridge_0_0_sim_netlist.vhdl
-- Design      : mb_subsystem_axi_amm_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_lite is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_byteenable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    avm_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_beginbursttransfer : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    s_axi_bvalid_reg_0 : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    avm_write : out STD_LOGIC;
    avm_read : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    avm_waitrequest : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_readdatavalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    avm_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_lite;

architecture STRUCTURE of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_lite is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \avm_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[11]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[12]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[13]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[14]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[16]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[17]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[18]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[19]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[20]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[21]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[22]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[23]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[24]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[25]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[26]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[27]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[28]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[29]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[30]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[31]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[31]_i_2_n_0\ : STD_LOGIC;
  signal \avm_address[31]_i_3_n_0\ : STD_LOGIC;
  signal \avm_address[31]_i_4_n_0\ : STD_LOGIC;
  signal \avm_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \avm_address[9]_i_1_n_0\ : STD_LOGIC;
  signal avm_beginbursttransfer_i_1_n_0 : STD_LOGIC;
  signal \avm_byteenable[0]_i_1_n_0\ : STD_LOGIC;
  signal \avm_byteenable[1]_i_1_n_0\ : STD_LOGIC;
  signal \avm_byteenable[2]_i_1_n_0\ : STD_LOGIC;
  signal \avm_byteenable[3]_i_1_n_0\ : STD_LOGIC;
  signal \avm_byteenable[3]_i_2_n_0\ : STD_LOGIC;
  signal \^avm_read\ : STD_LOGIC;
  signal avm_read_i_1_n_0 : STD_LOGIC;
  signal avm_readdata_i : STD_LOGIC;
  signal \^avm_write\ : STD_LOGIC;
  signal avm_write_i_1_n_0 : STD_LOGIC;
  signal avm_write_i_2_n_0 : STD_LOGIC;
  signal \avm_writedata[31]_i_1_n_0\ : STD_LOGIC;
  signal \avm_writedata[31]_i_2_n_0\ : STD_LOGIC;
  signal \avm_writedata[31]_i_3_n_0\ : STD_LOGIC;
  signal \avm_writedata[31]_i_4_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready_i_1_n_0 : STD_LOGIC;
  signal s_axi_awready_i_2_n_0 : STD_LOGIC;
  signal s_axi_awready_i_3_n_0 : STD_LOGIC;
  signal s_axi_awready_i_4_n_0 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_3_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_i_3_n_0\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready_i_1_n_0 : STD_LOGIC;
  signal start : STD_LOGIC;
  signal start_i_1_n_0 : STD_LOGIC;
  signal start_i_2_n_0 : STD_LOGIC;
  signal start_i_3_n_0 : STD_LOGIC;
  signal start_i_5_n_0 : STD_LOGIC;
  signal start_reg_n_0 : STD_LOGIC;
  signal \tout_counter[8]_i_3_n_0\ : STD_LOGIC;
  signal tout_counter_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[3]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[6]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[8]\ : label is "READ_ADDRESS:000000001,READ_DATA:000000010,WRITE_RESP:000100000,WRITE_AD_DATA:010000000,IDLE:000001000,INV_WRITE_DATA:001000000,INV_READ_ADDRESS:000000100,INV_READ_DATA:000010000,INV_WRITE_ADDRESS:100000000";
  attribute SOFT_HLUTNM of avm_beginbursttransfer_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of avm_write_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \avm_writedata[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axi_bvalid_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of start_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of start_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of start_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tout_counter[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tout_counter[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tout_counter[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tout_counter[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tout_counter[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tout_counter[8]_i_2\ : label is "soft_lutpair7";
begin
  avm_read <= \^avm_read\;
  avm_write <= \^avm_write\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid_reg_0 <= \^s_axi_bvalid_reg_0\;
  s_axi_rresp(0) <= \^s_axi_rresp\(0);
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
  s_axi_wready <= \^s_axi_wready\;
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \avm_address[31]_i_3_n_0\,
      I1 => avm_waitrequest,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I4 => s_axi_arvalid,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FFFFFF40FF40"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I2 => \avm_address[31]_i_3_n_0\,
      I3 => \FSM_onehot_current_state[1]_i_2_n_0\,
      I4 => avm_waitrequest,
      I5 => \FSM_onehot_current_state_reg_n_0_[0]\,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EFE0000"
    )
        port map (
      I0 => avm_readdata_i,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => s_axi_rready,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \FSM_onehot_current_state[1]_i_2_n_0\
    );
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => avm_waitrequest,
      I2 => \avm_address[31]_i_3_n_0\,
      O => \FSM_onehot_current_state[2]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0700"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_current_state[3]_i_2_n_0\,
      O => \FSM_onehot_current_state[3]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32FF32FF32FF3232"
    )
        port map (
      I0 => avm_readdata_i,
      I1 => \s_axi_bresp[1]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_current_state[3]_i_3_n_0\,
      I4 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I5 => p_1_in_0,
      O => \FSM_onehot_current_state[3]_i_2_n_0\
    );
\FSM_onehot_current_state[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid_reg_0\,
      O => \FSM_onehot_current_state[3]_i_3_n_0\
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF040404"
    )
        port map (
      I0 => avm_readdatavalid,
      I1 => \FSM_onehot_current_state[4]_i_2_n_0\,
      I2 => \avm_address[31]_i_3_n_0\,
      I3 => \s_axi_bresp[1]_i_2_n_0\,
      I4 => avm_readdata_i,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => \FSM_onehot_current_state[4]_i_1_n_0\
    );
\FSM_onehot_current_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \^s_axi_rvalid_reg_0\,
      O => \FSM_onehot_current_state[4]_i_2_n_0\
    );
\FSM_onehot_current_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A2A"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => avm_waitrequest,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => \FSM_onehot_current_state[5]_i_1_n_0\
    );
\FSM_onehot_current_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
        port map (
      I0 => p_1_in_0,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => \FSM_onehot_current_state_reg_n_0_[8]\,
      O => \FSM_onehot_current_state[6]_i_1_n_0\
    );
\FSM_onehot_current_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800080"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I3 => s_axi_arvalid,
      I4 => s_axi_awready_i_3_n_0,
      I5 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => \FSM_onehot_current_state[7]_i_1_n_0\
    );
\FSM_onehot_current_state[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => avm_waitrequest,
      I2 => \avm_address[31]_i_3_n_0\,
      O => \FSM_onehot_current_state[8]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[2]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[3]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\,
      S => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[4]_i_1_n_0\,
      Q => avm_readdata_i,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[5]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[5]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[6]_i_1_n_0\,
      Q => p_1_in_0,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[7]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[7]\,
      R => s_axi_awready_i_1_n_0
    );
\FSM_onehot_current_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_current_state[8]_i_1_n_0\,
      Q => \FSM_onehot_current_state_reg_n_0_[8]\,
      R => s_axi_awready_i_1_n_0
    );
\avm_address[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(0),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[0]_i_1_n_0\
    );
\avm_address[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(10),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[10]_i_1_n_0\
    );
\avm_address[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(11),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[11]_i_1_n_0\
    );
\avm_address[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(12),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[12]_i_1_n_0\
    );
\avm_address[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(13),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[13]_i_1_n_0\
    );
\avm_address[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(14),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[14]_i_1_n_0\
    );
\avm_address[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(15),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[15]_i_1_n_0\
    );
\avm_address[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(16),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[16]_i_1_n_0\
    );
\avm_address[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(17),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[17]_i_1_n_0\
    );
\avm_address[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(18),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[18]_i_1_n_0\
    );
\avm_address[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(19),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[19]_i_1_n_0\
    );
\avm_address[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(1),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[1]_i_1_n_0\
    );
\avm_address[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(20),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[20]_i_1_n_0\
    );
\avm_address[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(21),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[21]_i_1_n_0\
    );
\avm_address[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(22),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[22]_i_1_n_0\
    );
\avm_address[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(23),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[23]_i_1_n_0\
    );
\avm_address[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(24),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[24]_i_1_n_0\
    );
\avm_address[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(25),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[25]_i_1_n_0\
    );
\avm_address[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(26),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[26]_i_1_n_0\
    );
\avm_address[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(27),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[27]_i_1_n_0\
    );
\avm_address[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(28),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[28]_i_1_n_0\
    );
\avm_address[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(29),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[29]_i_1_n_0\
    );
\avm_address[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(2),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[2]_i_1_n_0\
    );
\avm_address[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(30),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[30]_i_1_n_0\
    );
\avm_address[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAAFAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => avm_waitrequest,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => \avm_address[31]_i_3_n_0\,
      O => \avm_address[31]_i_1_n_0\
    );
\avm_address[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(31),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[31]_i_2_n_0\
    );
\avm_address[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_awready_i_4_n_0,
      I1 => tout_counter_reg(3),
      I2 => tout_counter_reg(4),
      I3 => tout_counter_reg(1),
      I4 => tout_counter_reg(2),
      O => \avm_address[31]_i_3_n_0\
    );
\avm_address[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => \avm_address[31]_i_4_n_0\
    );
\avm_address[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(3),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[3]_i_1_n_0\
    );
\avm_address[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(4),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[4]_i_1_n_0\
    );
\avm_address[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(5),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[5]_i_1_n_0\
    );
\avm_address[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(6),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[6]_i_1_n_0\
    );
\avm_address[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(7),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[7]_i_1_n_0\
    );
\avm_address[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(8),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[8]_i_1_n_0\
    );
\avm_address[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA80AA80AA80"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_awaddr(9),
      I5 => \avm_address[31]_i_4_n_0\,
      O => \avm_address[9]_i_1_n_0\
    );
\avm_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[0]_i_1_n_0\,
      Q => avm_address(0),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[10]_i_1_n_0\,
      Q => avm_address(10),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[11]_i_1_n_0\,
      Q => avm_address(11),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[12]_i_1_n_0\,
      Q => avm_address(12),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[13]_i_1_n_0\,
      Q => avm_address(13),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[14]_i_1_n_0\,
      Q => avm_address(14),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[15]_i_1_n_0\,
      Q => avm_address(15),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[16]_i_1_n_0\,
      Q => avm_address(16),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[17]_i_1_n_0\,
      Q => avm_address(17),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[18]_i_1_n_0\,
      Q => avm_address(18),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[19]_i_1_n_0\,
      Q => avm_address(19),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[1]_i_1_n_0\,
      Q => avm_address(1),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[20]_i_1_n_0\,
      Q => avm_address(20),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[21]_i_1_n_0\,
      Q => avm_address(21),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[22]_i_1_n_0\,
      Q => avm_address(22),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[23]_i_1_n_0\,
      Q => avm_address(23),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[24]_i_1_n_0\,
      Q => avm_address(24),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[25]_i_1_n_0\,
      Q => avm_address(25),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[26]_i_1_n_0\,
      Q => avm_address(26),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[27]_i_1_n_0\,
      Q => avm_address(27),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[28]_i_1_n_0\,
      Q => avm_address(28),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[29]_i_1_n_0\,
      Q => avm_address(29),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[2]_i_1_n_0\,
      Q => avm_address(2),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[30]_i_1_n_0\,
      Q => avm_address(30),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[31]_i_2_n_0\,
      Q => avm_address(31),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[3]_i_1_n_0\,
      Q => avm_address(3),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[4]_i_1_n_0\,
      Q => avm_address(4),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[5]_i_1_n_0\,
      Q => avm_address(5),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[6]_i_1_n_0\,
      Q => avm_address(6),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[7]_i_1_n_0\,
      Q => avm_address(7),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[8]_i_1_n_0\,
      Q => avm_address(8),
      R => s_axi_awready_i_1_n_0
    );
\avm_address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_address[31]_i_1_n_0\,
      D => \avm_address[9]_i_1_n_0\,
      Q => avm_address(9),
      R => s_axi_awready_i_1_n_0
    );
avm_beginbursttransfer_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => avm_beginbursttransfer_i_1_n_0
    );
avm_beginbursttransfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => avm_beginbursttransfer_i_1_n_0,
      Q => avm_beginbursttransfer,
      R => s_axi_awready_i_1_n_0
    );
\avm_byteenable[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAFF80FF80"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => avm_waitrequest,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_arvalid,
      I5 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => \avm_byteenable[0]_i_1_n_0\
    );
\avm_byteenable[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAFF80FF80"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => avm_waitrequest,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_arvalid,
      I5 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => \avm_byteenable[1]_i_1_n_0\
    );
\avm_byteenable[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAFF80FF80"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => avm_waitrequest,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_arvalid,
      I5 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => \avm_byteenable[2]_i_1_n_0\
    );
\avm_byteenable[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAFEFE"
    )
        port map (
      I0 => avm_beginbursttransfer_i_1_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I3 => \avm_address[31]_i_3_n_0\,
      I4 => avm_waitrequest,
      O => \avm_byteenable[3]_i_1_n_0\
    );
\avm_byteenable[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAAFF80FF80"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I2 => avm_waitrequest,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => s_axi_arvalid,
      I5 => \FSM_onehot_current_state_reg_n_0_[3]\,
      O => \avm_byteenable[3]_i_2_n_0\
    );
\avm_byteenable_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \avm_byteenable[3]_i_1_n_0\,
      D => \avm_byteenable[0]_i_1_n_0\,
      Q => avm_byteenable(0),
      S => s_axi_awready_i_1_n_0
    );
\avm_byteenable_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \avm_byteenable[3]_i_1_n_0\,
      D => \avm_byteenable[1]_i_1_n_0\,
      Q => avm_byteenable(1),
      S => s_axi_awready_i_1_n_0
    );
\avm_byteenable_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \avm_byteenable[3]_i_1_n_0\,
      D => \avm_byteenable[2]_i_1_n_0\,
      Q => avm_byteenable(2),
      S => s_axi_awready_i_1_n_0
    );
\avm_byteenable_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => \avm_byteenable[3]_i_1_n_0\,
      D => \avm_byteenable[3]_i_2_n_0\,
      Q => avm_byteenable(3),
      S => s_axi_awready_i_1_n_0
    );
avm_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F088FFF8F08800"
    )
        port map (
      I0 => \avm_address[31]_i_3_n_0\,
      I1 => avm_waitrequest,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I5 => \^avm_read\,
      O => avm_read_i_1_n_0
    );
avm_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => avm_read_i_1_n_0,
      Q => \^avm_read\,
      R => s_axi_awready_i_1_n_0
    );
avm_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F0F22FF2F0F2200"
    )
        port map (
      I0 => avm_write_i_2_n_0,
      I1 => s_axi_arvalid,
      I2 => s_axi_awready_i_3_n_0,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I5 => \^avm_write\,
      O => avm_write_i_1_n_0
    );
avm_write_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      O => avm_write_i_2_n_0
    );
avm_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => avm_write_i_1_n_0,
      Q => \^avm_write\,
      R => s_axi_awready_i_1_n_0
    );
\avm_writedata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0C0C"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \avm_writedata[31]_i_3_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I3 => avm_waitrequest,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FF000088880000"
    )
        port map (
      I0 => avm_write_i_2_n_0,
      I1 => \avm_writedata[31]_i_4_n_0\,
      I2 => \avm_address[31]_i_3_n_0\,
      I3 => avm_waitrequest,
      I4 => s_axi_aresetn,
      I5 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => \avm_writedata[31]_i_2_n_0\
    );
\avm_writedata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => s_axi_arvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_wvalid,
      O => \avm_writedata[31]_i_3_n_0\
    );
\avm_writedata[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => s_axi_arvalid,
      O => \avm_writedata[31]_i_4_n_0\
    );
\avm_writedata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(0),
      Q => avm_writedata(0),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(10),
      Q => avm_writedata(10),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(11),
      Q => avm_writedata(11),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(12),
      Q => avm_writedata(12),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(13),
      Q => avm_writedata(13),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(14),
      Q => avm_writedata(14),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(15),
      Q => avm_writedata(15),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(16),
      Q => avm_writedata(16),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(17),
      Q => avm_writedata(17),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(18),
      Q => avm_writedata(18),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(19),
      Q => avm_writedata(19),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(1),
      Q => avm_writedata(1),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(20),
      Q => avm_writedata(20),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(21),
      Q => avm_writedata(21),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(22),
      Q => avm_writedata(22),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(23),
      Q => avm_writedata(23),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(24),
      Q => avm_writedata(24),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(25),
      Q => avm_writedata(25),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(26),
      Q => avm_writedata(26),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(27),
      Q => avm_writedata(27),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(28),
      Q => avm_writedata(28),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(29),
      Q => avm_writedata(29),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(2),
      Q => avm_writedata(2),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(30),
      Q => avm_writedata(30),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(31),
      Q => avm_writedata(31),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(3),
      Q => avm_writedata(3),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(4),
      Q => avm_writedata(4),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(5),
      Q => avm_writedata(5),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(6),
      Q => avm_writedata(6),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(7),
      Q => avm_writedata(7),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(8),
      Q => avm_writedata(8),
      R => \avm_writedata[31]_i_1_n_0\
    );
\avm_writedata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \avm_writedata[31]_i_2_n_0\,
      D => s_axi_wdata(9),
      Q => avm_writedata(9),
      R => \avm_writedata[31]_i_1_n_0\
    );
s_axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A3A0A0A0A0"
    )
        port map (
      I0 => s_axi_awready_i_3_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I5 => \^s_axi_arready\,
      O => s_axi_arready_i_1_n_0
    );
s_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => s_axi_awready_i_1_n_0
    );
s_axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => s_axi_awready_i_1_n_0
    );
s_axi_awready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0003AAAA0000"
    )
        port map (
      I0 => s_axi_awready_i_3_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I5 => \^s_axi_awready\,
      O => s_axi_awready_i_2_n_0
    );
s_axi_awready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => tout_counter_reg(2),
      I1 => tout_counter_reg(1),
      I2 => tout_counter_reg(4),
      I3 => tout_counter_reg(3),
      I4 => s_axi_awready_i_4_n_0,
      I5 => avm_waitrequest,
      O => s_axi_awready_i_3_n_0
    );
s_axi_awready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => tout_counter_reg(7),
      I1 => tout_counter_reg(8),
      I2 => tout_counter_reg(5),
      I3 => tout_counter_reg(6),
      I4 => start_reg_n_0,
      I5 => tout_counter_reg(0),
      O => s_axi_awready_i_4_n_0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => s_axi_awready_i_1_n_0
    );
\s_axi_bresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F080F0F0F080F00"
    )
        port map (
      I0 => avm_readdata_i,
      I1 => \s_axi_bresp[1]_i_2_n_0\,
      I2 => \s_axi_bresp[1]_i_3_n_0\,
      I3 => p_1_in_0,
      I4 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I5 => \^s_axi_bresp\(0),
      O => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_bresp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid_reg_0\,
      O => \s_axi_bresp[1]_i_2_n_0\
    );
\s_axi_bresp[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^s_axi_bvalid_reg_0\,
      I1 => s_axi_bready,
      I2 => s_axi_aresetn,
      O => \s_axi_bresp[1]_i_3_n_0\
    );
\s_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EFE"
    )
        port map (
      I0 => p_1_in_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => s_axi_bready,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid_reg_0\,
      R => s_axi_awready_i_1_n_0
    );
\s_axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(0),
      O => p_1_in(0)
    );
\s_axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(10),
      O => p_1_in(10)
    );
\s_axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(11),
      O => p_1_in(11)
    );
\s_axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(12),
      O => p_1_in(12)
    );
\s_axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(13),
      O => p_1_in(13)
    );
\s_axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(14),
      O => p_1_in(14)
    );
\s_axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(15),
      O => p_1_in(15)
    );
\s_axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(16),
      O => p_1_in(16)
    );
\s_axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(17),
      O => p_1_in(17)
    );
\s_axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(18),
      O => p_1_in(18)
    );
\s_axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(19),
      O => p_1_in(19)
    );
\s_axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(1),
      O => p_1_in(1)
    );
\s_axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(20),
      O => p_1_in(20)
    );
\s_axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(21),
      O => p_1_in(21)
    );
\s_axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(22),
      O => p_1_in(22)
    );
\s_axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(23),
      O => p_1_in(23)
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(24),
      O => p_1_in(24)
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(25),
      O => p_1_in(25)
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(26),
      O => p_1_in(26)
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(27),
      O => p_1_in(27)
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(28),
      O => p_1_in(28)
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(29),
      O => p_1_in(29)
    );
\s_axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(2),
      O => p_1_in(2)
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(30),
      O => p_1_in(30)
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF557F557F557F55"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => s_axi_rready,
      I3 => avm_readdata_i,
      I4 => avm_readdatavalid,
      I5 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => avm_readdata_i,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I4 => avm_readdatavalid,
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(31),
      O => p_1_in(31)
    );
\s_axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(3),
      O => p_1_in(3)
    );
\s_axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(4),
      O => p_1_in(4)
    );
\s_axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(5),
      O => p_1_in(5)
    );
\s_axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(6),
      O => p_1_in(6)
    );
\s_axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(7),
      O => p_1_in(7)
    );
\s_axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(8),
      O => p_1_in(8)
    );
\s_axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FF8800000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => avm_readdatavalid,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => avm_readdata_i,
      I4 => s_axi_rready,
      I5 => avm_readdata(9),
      O => p_1_in(9)
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(0),
      Q => s_axi_rdata(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(10),
      Q => s_axi_rdata(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(11),
      Q => s_axi_rdata(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(12),
      Q => s_axi_rdata(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(13),
      Q => s_axi_rdata(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(14),
      Q => s_axi_rdata(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(15),
      Q => s_axi_rdata(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(16),
      Q => s_axi_rdata(16),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(17),
      Q => s_axi_rdata(17),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(18),
      Q => s_axi_rdata(18),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(19),
      Q => s_axi_rdata(19),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(1),
      Q => s_axi_rdata(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(20),
      Q => s_axi_rdata(20),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(21),
      Q => s_axi_rdata(21),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(22),
      Q => s_axi_rdata(22),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(23),
      Q => s_axi_rdata(23),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(24),
      Q => s_axi_rdata(24),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(25),
      Q => s_axi_rdata(25),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(26),
      Q => s_axi_rdata(26),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(27),
      Q => s_axi_rdata(27),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(28),
      Q => s_axi_rdata(28),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(29),
      Q => s_axi_rdata(29),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(2),
      Q => s_axi_rdata(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(30),
      Q => s_axi_rdata(30),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(31),
      Q => s_axi_rdata(31),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(3),
      Q => s_axi_rdata(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(4),
      Q => s_axi_rdata(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(5),
      Q => s_axi_rdata(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(6),
      Q => s_axi_rdata(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(7),
      Q => s_axi_rdata(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(8),
      Q => s_axi_rdata(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => p_1_in(9),
      Q => s_axi_rdata(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAAAEAAEEAAA2AA"
    )
        port map (
      I0 => \s_axi_rresp[1]_i_2_n_0\,
      I1 => s_axi_aresetn,
      I2 => \s_axi_rresp[1]_i_3_n_0\,
      I3 => \s_axi_bresp[1]_i_2_n_0\,
      I4 => avm_readdata_i,
      I5 => \^s_axi_rresp\(0),
      O => \s_axi_rresp[1]_i_1_n_0\
    );
\s_axi_rresp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080008000"
    )
        port map (
      I0 => p_1_in_0,
      I1 => avm_readdatavalid,
      I2 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I3 => s_axi_aresetn,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid_reg_0\,
      O => \s_axi_rresp[1]_i_2_n_0\
    );
\s_axi_rresp[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => avm_readdatavalid,
      I1 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => \s_axi_rresp[1]_i_3_n_0\
    );
\s_axi_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rresp[1]_i_1_n_0\,
      Q => \^s_axi_rresp\(0),
      R => '0'
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF747474"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => avm_readdata_i,
      I3 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I4 => avm_readdatavalid,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => s_axi_awready_i_1_n_0
    );
s_axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0003AAAA0000"
    )
        port map (
      I0 => s_axi_awready_i_3_n_0,
      I1 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[8]\,
      I4 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I5 => \^s_axi_wready\,
      O => s_axi_wready_i_1_n_0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => s_axi_awready_i_1_n_0
    );
start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFFFFFF80000"
    )
        port map (
      I0 => \avm_address[31]_i_3_n_0\,
      I1 => start_i_2_n_0,
      I2 => \FSM_onehot_current_state[1]_i_2_n_0\,
      I3 => start_i_3_n_0,
      I4 => start,
      I5 => start_reg_n_0,
      O => start_i_1_n_0
    );
start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA8A8"
    )
        port map (
      I0 => avm_waitrequest,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I3 => \^s_axi_rvalid_reg_0\,
      I4 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => start_i_2_n_0
    );
start_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^s_axi_bvalid_reg_0\,
      I1 => s_axi_bready,
      I2 => \FSM_onehot_current_state_reg_n_0_[5]\,
      O => start_i_3_n_0
    );
start_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => avm_readdata_i,
      I1 => \s_axi_bresp[1]_i_2_n_0\,
      I2 => \FSM_onehot_current_state_reg_n_0_[5]\,
      I3 => start_i_5_n_0,
      I4 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[1]\,
      O => start
    );
start_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[7]\,
      O => start_i_5_n_0
    );
start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start_i_1_n_0,
      Q => start_reg_n_0,
      R => s_axi_awready_i_1_n_0
    );
\tout_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tout_counter_reg(0),
      O => p_0_in(0)
    );
\tout_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tout_counter_reg(0),
      I1 => tout_counter_reg(1),
      O => p_0_in(1)
    );
\tout_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tout_counter_reg(1),
      I1 => tout_counter_reg(0),
      I2 => tout_counter_reg(2),
      O => p_0_in(2)
    );
\tout_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tout_counter_reg(2),
      I1 => tout_counter_reg(0),
      I2 => tout_counter_reg(1),
      I3 => tout_counter_reg(3),
      O => p_0_in(3)
    );
\tout_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => tout_counter_reg(3),
      I1 => tout_counter_reg(1),
      I2 => tout_counter_reg(0),
      I3 => tout_counter_reg(2),
      I4 => tout_counter_reg(4),
      O => p_0_in(4)
    );
\tout_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => tout_counter_reg(4),
      I1 => tout_counter_reg(2),
      I2 => tout_counter_reg(0),
      I3 => tout_counter_reg(1),
      I4 => tout_counter_reg(3),
      I5 => tout_counter_reg(5),
      O => p_0_in(5)
    );
\tout_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tout_counter[8]_i_3_n_0\,
      I1 => tout_counter_reg(6),
      O => p_0_in(6)
    );
\tout_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => tout_counter_reg(6),
      I1 => \tout_counter[8]_i_3_n_0\,
      I2 => tout_counter_reg(7),
      O => p_0_in(7)
    );
\tout_counter[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start_reg_n_0,
      O => clear
    );
\tout_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C6CC"
    )
        port map (
      I0 => tout_counter_reg(7),
      I1 => tout_counter_reg(8),
      I2 => \tout_counter[8]_i_3_n_0\,
      I3 => tout_counter_reg(6),
      O => p_0_in(8)
    );
\tout_counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => tout_counter_reg(4),
      I1 => tout_counter_reg(2),
      I2 => tout_counter_reg(0),
      I3 => tout_counter_reg(1),
      I4 => tout_counter_reg(3),
      I5 => tout_counter_reg(5),
      O => \tout_counter[8]_i_3_n_0\
    );
\tout_counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(0),
      Q => tout_counter_reg(0),
      S => clear
    );
\tout_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(1),
      Q => tout_counter_reg(1),
      R => clear
    );
\tout_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(2),
      Q => tout_counter_reg(2),
      R => clear
    );
\tout_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(3),
      Q => tout_counter_reg(3),
      R => clear
    );
\tout_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(4),
      Q => tout_counter_reg(4),
      R => clear
    );
\tout_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(5),
      Q => tout_counter_reg(5),
      R => clear
    );
\tout_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(6),
      Q => tout_counter_reg(6),
      R => clear
    );
\tout_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(7),
      Q => tout_counter_reg(7),
      R => clear
    );
\tout_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in(8),
      Q => tout_counter_reg(8),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    avm_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_write : out STD_LOGIC;
    avm_read : out STD_LOGIC;
    avm_byteenable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    avm_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_resp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    avm_readdatavalid : in STD_LOGIC;
    avm_burstcount : out STD_LOGIC_VECTOR ( 0 to 0 );
    avm_beginbursttransfer : out STD_LOGIC;
    avm_writeresponsevalid : in STD_LOGIC;
    avm_waitrequest : in STD_LOGIC
  );
  attribute All_zero : string;
  attribute All_zero of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "1'b0";
  attribute C_ADDRESS_MODE : integer;
  attribute C_ADDRESS_MODE of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 0;
  attribute C_AVM_BURST_WIDTH : integer;
  attribute C_AVM_BURST_WIDTH of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 1;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 1;
  attribute C_BASE1_ADDR : string;
  attribute C_BASE1_ADDR of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BASE2_ADDR : string;
  attribute C_BASE2_ADDR of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000000100";
  attribute C_BASE3_ADDR : string;
  attribute C_BASE3_ADDR of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000001000";
  attribute C_BASE4_ADDR : string;
  attribute C_BASE4_ADDR of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000001100";
  attribute C_BURST_LENGTH : integer;
  attribute C_BURST_LENGTH of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 4;
  attribute C_DPHASE_TIMEOUT : integer;
  attribute C_DPHASE_TIMEOUT of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 256;
  attribute C_FAMILY : string;
  attribute C_FAMILY of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "artix7";
  attribute C_FIXED_READ_WAIT : integer;
  attribute C_FIXED_READ_WAIT of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 1;
  attribute C_FIXED_WRITE_WAIT : integer;
  attribute C_FIXED_WRITE_WAIT of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 1;
  attribute C_HAS_FIXED_READ_LATENCY : integer;
  attribute C_HAS_FIXED_READ_LATENCY of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 0;
  attribute C_HAS_FIXED_WAIT : integer;
  attribute C_HAS_FIXED_WAIT of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 0;
  attribute C_HAS_RESPONSE : integer;
  attribute C_HAS_RESPONSE of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 0;
  attribute C_HIGH1_ADDR : string;
  attribute C_HIGH1_ADDR of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000000011";
  attribute C_HIGH2_ADDR : string;
  attribute C_HIGH2_ADDR of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000000101";
  attribute C_HIGH3_ADDR : string;
  attribute C_HIGH3_ADDR of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000001001";
  attribute C_HIGH4_ADDR : string;
  attribute C_HIGH4_ADDR of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "64'b0000000000000000000000000000000000000000000000000000000000001111";
  attribute C_NUM_ADDRESS_RANGES : integer;
  attribute C_NUM_ADDRESS_RANGES of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 0;
  attribute C_NUM_OUTSTANDING : integer;
  attribute C_NUM_OUTSTANDING of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 2;
  attribute C_PROTOCOL : integer;
  attribute C_PROTOCOL of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 4;
  attribute C_USE_WSTRB : integer;
  attribute C_USE_WSTRB of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top : entity is "yes";
end mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top;

architecture STRUCTURE of mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  avm_burstcount(0) <= \<const1>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
\AXI_LITE.I_AVA_MASTER_LITE\: entity work.mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_lite
     port map (
      avm_address(31 downto 0) => avm_address(31 downto 0),
      avm_beginbursttransfer => avm_beginbursttransfer,
      avm_byteenable(3 downto 0) => avm_byteenable(3 downto 0),
      avm_read => avm_read,
      avm_readdata(31 downto 0) => avm_readdata(31 downto 0),
      avm_readdatavalid => avm_readdatavalid,
      avm_waitrequest => avm_waitrequest,
      avm_write => avm_write,
      avm_writedata(31 downto 0) => avm_writedata(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid_reg_0 => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_axi_amm_bridge_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    avm_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_write : out STD_LOGIC;
    avm_read : out STD_LOGIC;
    avm_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avm_readdatavalid : in STD_LOGIC;
    avm_waitrequest : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_subsystem_axi_amm_bridge_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_subsystem_axi_amm_bridge_0_0 : entity is "mb_subsystem_axi_amm_bridge_0_0,axi_amm_bridge_v1_0_9_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mb_subsystem_axi_amm_bridge_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mb_subsystem_axi_amm_bridge_0_0 : entity is "axi_amm_bridge_v1_0_9_top,Vivado 2019.1";
end mb_subsystem_axi_amm_bridge_0_0;

architecture STRUCTURE of mb_subsystem_axi_amm_bridge_0_0 is
  signal NLW_inst_avm_beginbursttransfer_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_avm_burstcount_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_avm_byteenable_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute All_zero : string;
  attribute All_zero of inst : label is "1'b0";
  attribute C_ADDRESS_MODE : integer;
  attribute C_ADDRESS_MODE of inst : label is 0;
  attribute C_AVM_BURST_WIDTH : integer;
  attribute C_AVM_BURST_WIDTH of inst : label is 1;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of inst : label is 1;
  attribute C_BASE1_ADDR : string;
  attribute C_BASE1_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_BASE2_ADDR : string;
  attribute C_BASE2_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000100";
  attribute C_BASE3_ADDR : string;
  attribute C_BASE3_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000001000";
  attribute C_BASE4_ADDR : string;
  attribute C_BASE4_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000001100";
  attribute C_BURST_LENGTH : integer;
  attribute C_BURST_LENGTH of inst : label is 4;
  attribute C_DPHASE_TIMEOUT : integer;
  attribute C_DPHASE_TIMEOUT of inst : label is 256;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_FIXED_READ_WAIT : integer;
  attribute C_FIXED_READ_WAIT of inst : label is 1;
  attribute C_FIXED_WRITE_WAIT : integer;
  attribute C_FIXED_WRITE_WAIT of inst : label is 1;
  attribute C_HAS_FIXED_READ_LATENCY : integer;
  attribute C_HAS_FIXED_READ_LATENCY of inst : label is 0;
  attribute C_HAS_FIXED_WAIT : integer;
  attribute C_HAS_FIXED_WAIT of inst : label is 0;
  attribute C_HAS_RESPONSE : integer;
  attribute C_HAS_RESPONSE of inst : label is 0;
  attribute C_HIGH1_ADDR : string;
  attribute C_HIGH1_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000011";
  attribute C_HIGH2_ADDR : string;
  attribute C_HIGH2_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000101";
  attribute C_HIGH3_ADDR : string;
  attribute C_HIGH3_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000001001";
  attribute C_HIGH4_ADDR : string;
  attribute C_HIGH4_ADDR of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000001111";
  attribute C_NUM_ADDRESS_RANGES : integer;
  attribute C_NUM_ADDRESS_RANGES of inst : label is 0;
  attribute C_NUM_OUTSTANDING : integer;
  attribute C_NUM_OUTSTANDING of inst : label is 2;
  attribute C_PROTOCOL : integer;
  attribute C_PROTOCOL of inst : label is 0;
  attribute C_READ_LATENCY : integer;
  attribute C_READ_LATENCY of inst : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 4;
  attribute C_USE_WSTRB : integer;
  attribute C_USE_WSTRB of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of avm_read : signal is "xilinx.com:interface:avalon:1.0 M_AVALON READ";
  attribute X_INTERFACE_INFO of avm_readdatavalid : signal is "xilinx.com:interface:avalon:1.0 M_AVALON READDATAVALID";
  attribute X_INTERFACE_INFO of avm_waitrequest : signal is "xilinx.com:interface:avalon:1.0 M_AVALON WAITREQUEST";
  attribute X_INTERFACE_INFO of avm_write : signal is "xilinx.com:interface:avalon:1.0 M_AVALON WRITE";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF S_AXI_LITE:S_AXI_FULL:M_AVALON, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mb_subsystem_Clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mb_subsystem_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  attribute X_INTERFACE_INFO of avm_address : signal is "xilinx.com:interface:avalon:1.0 M_AVALON ADDRESS";
  attribute X_INTERFACE_INFO of avm_readdata : signal is "xilinx.com:interface:avalon:1.0 M_AVALON READDATA";
  attribute X_INTERFACE_INFO of avm_writedata : signal is "xilinx.com:interface:avalon:1.0 M_AVALON WRITEDATA";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
begin
inst: entity work.mb_subsystem_axi_amm_bridge_0_0_axi_amm_bridge_v1_0_9_top
     port map (
      avm_address(31 downto 0) => avm_address(31 downto 0),
      avm_beginbursttransfer => NLW_inst_avm_beginbursttransfer_UNCONNECTED,
      avm_burstcount(0) => NLW_inst_avm_burstcount_UNCONNECTED(0),
      avm_byteenable(3 downto 0) => NLW_inst_avm_byteenable_UNCONNECTED(3 downto 0),
      avm_read => avm_read,
      avm_readdata(31 downto 0) => avm_readdata(31 downto 0),
      avm_readdatavalid => avm_readdatavalid,
      avm_resp(1 downto 0) => B"00",
      avm_waitrequest => avm_waitrequest,
      avm_write => avm_write,
      avm_writedata(31 downto 0) => avm_writedata(31 downto 0),
      avm_writeresponsevalid => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => NLW_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
