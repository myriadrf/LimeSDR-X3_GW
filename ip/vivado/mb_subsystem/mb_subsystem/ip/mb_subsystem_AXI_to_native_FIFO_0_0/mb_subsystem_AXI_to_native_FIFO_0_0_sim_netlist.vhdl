-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Dec 10 13:53:26 2019
-- Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mb_subsystem_AXI_to_native_FIFO_0_0 -prefix
--               mb_subsystem_AXI_to_native_FIFO_0_0_ mb_subsystem_AXI_to_native_FIFO_0_0_sim_netlist.vhdl
-- Design      : mb_subsystem_AXI_to_native_FIFO_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI is
  port (
    M_NATIVE_READ_EMPTY : in STD_LOGIC;
    M_NATIVE_READ_AEMPTY : in STD_LOGIC;
    M_NATIVE_READ_DOUT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_NATIVE_READ_RD_EN : out STD_LOGIC;
    M_NATIVE_WRITE_ACLR : out STD_LOGIC;
    M_NATIVE_WRITE_FULL : in STD_LOGIC;
    M_NATIVE_WRITE_AFULL : in STD_LOGIC;
    M_NATIVE_WRITE_DIN : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_NATIVE_WRITE_WR_EN : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute C_M00_NATIVE_DATA_WIDTH : integer;
  attribute C_M00_NATIVE_DATA_WIDTH of mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI : entity is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI : entity is 32;
end mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI;

architecture STRUCTURE of mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_native_write_aclr\ : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of M_NATIVE_WRITE_ACLR : signal is std.standard.true;
  signal M_NATIVE_WRITE_ACLR_i_1_n_0 : STD_LOGIC;
  signal M_NATIVE_WRITE_WR_EN_reg0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal native_read_rd_en : STD_LOGIC;
  attribute MARK_DEBUG of native_read_rd_en : signal is std.standard.true;
  signal native_read_rd_en_reg0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of reg_data_out : signal is std.standard.true;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg0 : signal is std.standard.true;
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[9]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg1 : signal is std.standard.true;
  signal \slv_reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[9]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg2 : signal is std.standard.true;
  signal \slv_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[10]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[11]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[12]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[13]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[14]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[16]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[17]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[18]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[19]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[20]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[21]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[22]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[24]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[25]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[26]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[27]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[28]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[29]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[30]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[8]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[9]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of slv_reg3 : signal is std.standard.true;
  signal slv_reg_rden : STD_LOGIC;
  attribute MARK_DEBUG of slv_reg_rden : signal is std.standard.true;
  signal slv_reg_wren : STD_LOGIC;
  attribute MARK_DEBUG of slv_reg_wren : signal is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of M_NATIVE_WRITE_ACLR_reg : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of M_NATIVE_WRITE_ACLR_reg : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[0]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[0]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[10]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[10]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[11]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[11]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[12]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[12]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[13]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[13]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[14]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[14]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[15]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[15]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[16]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[16]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[17]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[17]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[18]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[18]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[19]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[19]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[1]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[1]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[20]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[20]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[21]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[21]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[22]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[22]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[23]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[23]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[24]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[24]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[25]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[25]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[26]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[26]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[27]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[27]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[28]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[28]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[29]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[29]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[2]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[2]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[30]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[30]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[31]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[31]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[3]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[3]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[4]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[4]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[5]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[5]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[6]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[6]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[7]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[7]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[8]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[8]\ : label is "true";
  attribute KEEP of \M_NATIVE_WRITE_DIN_reg[9]\ : label is "yes";
  attribute mark_debug_string of \M_NATIVE_WRITE_DIN_reg[9]\ : label is "true";
  attribute KEEP of M_NATIVE_WRITE_WR_EN_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute KEEP of native_read_rd_en_reg : label is "yes";
  attribute KEEP of \slv_reg0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[0]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[10]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[11]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[12]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[13]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[14]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[14]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[15]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[15]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[16]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[16]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[17]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[17]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[18]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[18]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[19]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[19]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[1]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[20]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[20]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[21]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[21]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[22]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[22]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[23]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[23]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[24]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[24]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[25]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[25]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[26]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[26]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[27]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[27]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[28]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[28]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[29]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[29]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[2]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[30]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[30]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[31]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[31]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[3]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[4]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[5]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[6]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[7]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[8]\ : label is "true";
  attribute KEEP of \slv_reg0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \slv_reg0_reg[9]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[0]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[10]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[11]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[12]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[13]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[14]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[14]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[15]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[15]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[16]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[16]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[17]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[17]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[18]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[18]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[19]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[19]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[1]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[20]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[20]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[21]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[21]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[22]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[22]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[23]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[23]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[24]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[24]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[25]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[25]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[26]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[26]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[27]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[27]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[28]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[28]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[29]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[29]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[2]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[30]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[30]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[31]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[31]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[3]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[4]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[5]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[6]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[7]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[8]\ : label is "true";
  attribute KEEP of \slv_reg1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \slv_reg1_reg[9]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[0]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[10]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[11]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[12]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[13]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[14]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[14]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[15]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[15]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[16]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[16]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[17]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[17]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[18]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[18]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[19]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[19]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[1]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[20]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[20]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[21]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[21]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[22]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[22]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[23]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[23]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[24]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[24]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[25]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[25]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[26]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[26]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[27]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[27]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[28]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[28]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[29]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[29]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[2]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[30]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[30]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[31]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[31]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[3]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[4]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[5]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[6]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[7]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[8]\ : label is "true";
  attribute KEEP of \slv_reg2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \slv_reg2_reg[9]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[0]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[0]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[10]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[10]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[11]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[11]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[12]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[12]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[13]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[13]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[14]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[14]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[15]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[15]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[16]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[16]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[17]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[17]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[18]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[18]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[19]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[19]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[1]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[1]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[20]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[20]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[21]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[21]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[22]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[22]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[23]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[23]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[24]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[24]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[25]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[25]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[26]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[26]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[27]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[27]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[28]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[28]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[29]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[29]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[2]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[2]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[30]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[30]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[31]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[31]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[3]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[3]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[4]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[4]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[5]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[5]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[6]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[6]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[7]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[7]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[8]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[8]\ : label is "true";
  attribute KEEP of \slv_reg3_reg[9]\ : label is "yes";
  attribute mark_debug_string of \slv_reg3_reg[9]\ : label is "true";
  attribute mark_debug_string of M_NATIVE_WRITE_ACLR : signal is "true";
  attribute mark_debug_string of M_NATIVE_WRITE_AFULL : signal is "true";
  attribute mark_debug_string of M_NATIVE_WRITE_FULL : signal is "true";
  attribute mark_debug_string of M_NATIVE_WRITE_WR_EN : signal is "true";
  attribute mark_debug_string of M_NATIVE_WRITE_DIN : signal is "true";
begin
  M_NATIVE_READ_RD_EN <= native_read_rd_en;
  M_NATIVE_WRITE_ACLR <= \^m_native_write_aclr\;
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
M_NATIVE_WRITE_ACLR_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(3),
      I3 => slv_reg_wren,
      I4 => \^m_native_write_aclr\,
      O => M_NATIVE_WRITE_ACLR_i_1_n_0
    );
M_NATIVE_WRITE_ACLR_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => M_NATIVE_WRITE_ACLR_i_1_n_0,
      Q => \^m_native_write_aclr\,
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => slv_reg_wren,
      O => M_NATIVE_WRITE_WR_EN_reg0
    );
\M_NATIVE_WRITE_DIN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(0),
      Q => M_NATIVE_WRITE_DIN(0),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(10),
      Q => M_NATIVE_WRITE_DIN(10),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(11),
      Q => M_NATIVE_WRITE_DIN(11),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(12),
      Q => M_NATIVE_WRITE_DIN(12),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(13),
      Q => M_NATIVE_WRITE_DIN(13),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(14),
      Q => M_NATIVE_WRITE_DIN(14),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(15),
      Q => M_NATIVE_WRITE_DIN(15),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(16),
      Q => M_NATIVE_WRITE_DIN(16),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(17),
      Q => M_NATIVE_WRITE_DIN(17),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(18),
      Q => M_NATIVE_WRITE_DIN(18),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(19),
      Q => M_NATIVE_WRITE_DIN(19),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(1),
      Q => M_NATIVE_WRITE_DIN(1),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(20),
      Q => M_NATIVE_WRITE_DIN(20),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(21),
      Q => M_NATIVE_WRITE_DIN(21),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(22),
      Q => M_NATIVE_WRITE_DIN(22),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(23),
      Q => M_NATIVE_WRITE_DIN(23),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(24),
      Q => M_NATIVE_WRITE_DIN(24),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(25),
      Q => M_NATIVE_WRITE_DIN(25),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(26),
      Q => M_NATIVE_WRITE_DIN(26),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(27),
      Q => M_NATIVE_WRITE_DIN(27),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(28),
      Q => M_NATIVE_WRITE_DIN(28),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(29),
      Q => M_NATIVE_WRITE_DIN(29),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(2),
      Q => M_NATIVE_WRITE_DIN(2),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(30),
      Q => M_NATIVE_WRITE_DIN(30),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(31),
      Q => M_NATIVE_WRITE_DIN(31),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(3),
      Q => M_NATIVE_WRITE_DIN(3),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(4),
      Q => M_NATIVE_WRITE_DIN(4),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(5),
      Q => M_NATIVE_WRITE_DIN(5),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(6),
      Q => M_NATIVE_WRITE_DIN(6),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(7),
      Q => M_NATIVE_WRITE_DIN(7),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(8),
      Q => M_NATIVE_WRITE_DIN(8),
      R => \slv_reg2__0\(0)
    );
\M_NATIVE_WRITE_DIN_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => M_NATIVE_WRITE_WR_EN_reg0,
      D => S_AXI_WDATA(9),
      Q => M_NATIVE_WRITE_DIN(9),
      R => \slv_reg2__0\(0)
    );
M_NATIVE_WRITE_WR_EN_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => M_NATIVE_WRITE_WR_EN_reg0,
      Q => M_NATIVE_WRITE_WR_EN,
      R => \slv_reg2__0\(0)
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \slv_reg2__0\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(3),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => \slv_reg2__0\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => \slv_reg2__0\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => \slv_reg2__0\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => S_AXI_WVALID,
      I2 => S_AXI_AWVALID,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => \slv_reg2__0\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => \slv_reg2__0\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \slv_reg2__0\(0)
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => \slv_reg2__0\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_AWVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => S_AXI_RDATA(0),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => S_AXI_RDATA(10),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => S_AXI_RDATA(11),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => S_AXI_RDATA(12),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => S_AXI_RDATA(13),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => S_AXI_RDATA(14),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => S_AXI_RDATA(15),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => S_AXI_RDATA(16),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => S_AXI_RDATA(17),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => S_AXI_RDATA(18),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => S_AXI_RDATA(19),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => S_AXI_RDATA(1),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => S_AXI_RDATA(20),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => S_AXI_RDATA(21),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => S_AXI_RDATA(22),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => S_AXI_RDATA(23),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => S_AXI_RDATA(24),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => S_AXI_RDATA(25),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => S_AXI_RDATA(26),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => S_AXI_RDATA(27),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => S_AXI_RDATA(28),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => S_AXI_RDATA(29),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => S_AXI_RDATA(2),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => S_AXI_RDATA(30),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => S_AXI_RDATA(31),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => S_AXI_RDATA(3),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => S_AXI_RDATA(4),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => S_AXI_RDATA(5),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => S_AXI_RDATA(6),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => S_AXI_RDATA(7),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => S_AXI_RDATA(8),
      R => \slv_reg2__0\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => S_AXI_RDATA(9),
      R => \slv_reg2__0\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => \slv_reg2__0\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => \slv_reg2__0\(0)
    );
native_read_rd_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => S_AXI_ARADDR(3),
      I1 => S_AXI_ARADDR(2),
      I2 => native_read_rd_en,
      I3 => S_AXI_ARVALID,
      O => native_read_rd_en_reg0
    );
native_read_rd_en_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => native_read_rd_en_reg0,
      Q => native_read_rd_en,
      R => \slv_reg2__0\(0)
    );
reg_data_out_inferred_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => M_NATIVE_READ_DOUT(31),
      I2 => axi_araddr(2),
      I3 => slv_reg0(31),
      I4 => axi_araddr(3),
      O => reg_data_out(31)
    );
reg_data_out_inferred_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => M_NATIVE_READ_DOUT(22),
      I2 => axi_araddr(2),
      I3 => slv_reg0(22),
      I4 => axi_araddr(3),
      O => reg_data_out(22)
    );
reg_data_out_inferred_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => M_NATIVE_READ_DOUT(21),
      I2 => axi_araddr(2),
      I3 => slv_reg0(21),
      I4 => axi_araddr(3),
      O => reg_data_out(21)
    );
reg_data_out_inferred_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => M_NATIVE_READ_DOUT(20),
      I2 => axi_araddr(2),
      I3 => slv_reg0(20),
      I4 => axi_araddr(3),
      O => reg_data_out(20)
    );
reg_data_out_inferred_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => M_NATIVE_READ_DOUT(19),
      I2 => axi_araddr(2),
      I3 => slv_reg0(19),
      I4 => axi_araddr(3),
      O => reg_data_out(19)
    );
reg_data_out_inferred_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => M_NATIVE_READ_DOUT(18),
      I2 => axi_araddr(2),
      I3 => slv_reg0(18),
      I4 => axi_araddr(3),
      O => reg_data_out(18)
    );
reg_data_out_inferred_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => M_NATIVE_READ_DOUT(17),
      I2 => axi_araddr(2),
      I3 => slv_reg0(17),
      I4 => axi_araddr(3),
      O => reg_data_out(17)
    );
reg_data_out_inferred_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => M_NATIVE_READ_DOUT(16),
      I2 => axi_araddr(2),
      I3 => slv_reg0(16),
      I4 => axi_araddr(3),
      O => reg_data_out(16)
    );
reg_data_out_inferred_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => M_NATIVE_READ_DOUT(15),
      I2 => axi_araddr(2),
      I3 => slv_reg0(15),
      I4 => axi_araddr(3),
      O => reg_data_out(15)
    );
reg_data_out_inferred_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => M_NATIVE_READ_DOUT(14),
      I2 => axi_araddr(2),
      I3 => slv_reg0(14),
      I4 => axi_araddr(3),
      O => reg_data_out(14)
    );
reg_data_out_inferred_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => M_NATIVE_READ_DOUT(13),
      I2 => axi_araddr(2),
      I3 => slv_reg0(13),
      I4 => axi_araddr(3),
      O => reg_data_out(13)
    );
reg_data_out_inferred_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => M_NATIVE_READ_DOUT(30),
      I2 => axi_araddr(2),
      I3 => slv_reg0(30),
      I4 => axi_araddr(3),
      O => reg_data_out(30)
    );
reg_data_out_inferred_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => M_NATIVE_READ_DOUT(12),
      I2 => axi_araddr(2),
      I3 => slv_reg0(12),
      I4 => axi_araddr(3),
      O => reg_data_out(12)
    );
reg_data_out_inferred_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => M_NATIVE_READ_DOUT(11),
      I2 => axi_araddr(2),
      I3 => slv_reg0(11),
      I4 => axi_araddr(3),
      O => reg_data_out(11)
    );
reg_data_out_inferred_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => M_NATIVE_READ_DOUT(10),
      I2 => axi_araddr(2),
      I3 => slv_reg0(10),
      I4 => axi_araddr(3),
      O => reg_data_out(10)
    );
reg_data_out_inferred_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => M_NATIVE_READ_DOUT(9),
      I2 => axi_araddr(2),
      I3 => slv_reg0(9),
      I4 => axi_araddr(3),
      O => reg_data_out(9)
    );
reg_data_out_inferred_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => M_NATIVE_READ_DOUT(8),
      I2 => axi_araddr(2),
      I3 => slv_reg0(8),
      I4 => axi_araddr(3),
      O => reg_data_out(8)
    );
reg_data_out_inferred_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => M_NATIVE_READ_DOUT(7),
      I2 => axi_araddr(2),
      I3 => slv_reg0(7),
      I4 => axi_araddr(3),
      O => reg_data_out(7)
    );
reg_data_out_inferred_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => M_NATIVE_READ_DOUT(6),
      I2 => axi_araddr(2),
      I3 => slv_reg0(6),
      I4 => axi_araddr(3),
      O => reg_data_out(6)
    );
reg_data_out_inferred_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => M_NATIVE_READ_DOUT(5),
      I2 => axi_araddr(2),
      I3 => slv_reg0(5),
      I4 => axi_araddr(3),
      O => reg_data_out(5)
    );
reg_data_out_inferred_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => M_NATIVE_READ_DOUT(4),
      I2 => axi_araddr(2),
      I3 => slv_reg0(4),
      I4 => axi_araddr(3),
      O => reg_data_out(4)
    );
reg_data_out_inferred_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => M_NATIVE_READ_DOUT(3),
      I2 => axi_araddr(2),
      I3 => M_NATIVE_WRITE_AFULL,
      I4 => axi_araddr(3),
      I5 => slv_reg0(3),
      O => reg_data_out(3)
    );
reg_data_out_inferred_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => M_NATIVE_READ_DOUT(29),
      I2 => axi_araddr(2),
      I3 => slv_reg0(29),
      I4 => axi_araddr(3),
      O => reg_data_out(29)
    );
reg_data_out_inferred_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => M_NATIVE_READ_DOUT(2),
      I2 => axi_araddr(2),
      I3 => M_NATIVE_READ_AEMPTY,
      I4 => axi_araddr(3),
      I5 => slv_reg0(2),
      O => reg_data_out(2)
    );
reg_data_out_inferred_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => M_NATIVE_READ_DOUT(1),
      I2 => axi_araddr(2),
      I3 => M_NATIVE_WRITE_FULL,
      I4 => axi_araddr(3),
      I5 => slv_reg0(1),
      O => reg_data_out(1)
    );
reg_data_out_inferred_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => M_NATIVE_READ_DOUT(0),
      I2 => axi_araddr(2),
      I3 => M_NATIVE_READ_EMPTY,
      I4 => axi_araddr(3),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
reg_data_out_inferred_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => M_NATIVE_READ_DOUT(28),
      I2 => axi_araddr(2),
      I3 => slv_reg0(28),
      I4 => axi_araddr(3),
      O => reg_data_out(28)
    );
reg_data_out_inferred_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => M_NATIVE_READ_DOUT(27),
      I2 => axi_araddr(2),
      I3 => slv_reg0(27),
      I4 => axi_araddr(3),
      O => reg_data_out(27)
    );
reg_data_out_inferred_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => M_NATIVE_READ_DOUT(26),
      I2 => axi_araddr(2),
      I3 => slv_reg0(26),
      I4 => axi_araddr(3),
      O => reg_data_out(26)
    );
reg_data_out_inferred_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => M_NATIVE_READ_DOUT(25),
      I2 => axi_araddr(2),
      I3 => slv_reg0(25),
      I4 => axi_araddr(3),
      O => reg_data_out(25)
    );
reg_data_out_inferred_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => M_NATIVE_READ_DOUT(24),
      I2 => axi_araddr(2),
      I3 => slv_reg0(24),
      I4 => axi_araddr(3),
      O => reg_data_out(24)
    );
reg_data_out_inferred_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => M_NATIVE_READ_DOUT(23),
      I2 => axi_araddr(2),
      I3 => slv_reg0(23),
      I4 => axi_araddr(3),
      O => reg_data_out(23)
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(0),
      I3 => S_AXI_WSTRB(0),
      I4 => slv_reg0(0),
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(10),
      I3 => S_AXI_WSTRB(1),
      I4 => slv_reg0(10),
      O => \slv_reg0[10]_i_1_n_0\
    );
\slv_reg0[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(11),
      I3 => S_AXI_WSTRB(1),
      I4 => slv_reg0(11),
      O => \slv_reg0[11]_i_1_n_0\
    );
\slv_reg0[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(12),
      I3 => S_AXI_WSTRB(1),
      I4 => slv_reg0(12),
      O => \slv_reg0[12]_i_1_n_0\
    );
\slv_reg0[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(13),
      I3 => S_AXI_WSTRB(1),
      I4 => slv_reg0(13),
      O => \slv_reg0[13]_i_1_n_0\
    );
\slv_reg0[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(14),
      I3 => S_AXI_WSTRB(1),
      I4 => slv_reg0(14),
      O => \slv_reg0[14]_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(15),
      I3 => S_AXI_WSTRB(1),
      I4 => slv_reg0(15),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(16),
      I3 => S_AXI_WSTRB(2),
      I4 => slv_reg0(16),
      O => \slv_reg0[16]_i_1_n_0\
    );
\slv_reg0[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(17),
      I3 => S_AXI_WSTRB(2),
      I4 => slv_reg0(17),
      O => \slv_reg0[17]_i_1_n_0\
    );
\slv_reg0[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(18),
      I3 => S_AXI_WSTRB(2),
      I4 => slv_reg0(18),
      O => \slv_reg0[18]_i_1_n_0\
    );
\slv_reg0[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(19),
      I3 => S_AXI_WSTRB(2),
      I4 => slv_reg0(19),
      O => \slv_reg0[19]_i_1_n_0\
    );
\slv_reg0[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(1),
      I3 => S_AXI_WSTRB(0),
      I4 => slv_reg0(1),
      O => \slv_reg0[1]_i_1_n_0\
    );
\slv_reg0[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(20),
      I3 => S_AXI_WSTRB(2),
      I4 => slv_reg0(20),
      O => \slv_reg0[20]_i_1_n_0\
    );
\slv_reg0[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(21),
      I3 => S_AXI_WSTRB(2),
      I4 => slv_reg0(21),
      O => \slv_reg0[21]_i_1_n_0\
    );
\slv_reg0[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(22),
      I3 => S_AXI_WSTRB(2),
      I4 => slv_reg0(22),
      O => \slv_reg0[22]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(23),
      I3 => S_AXI_WSTRB(2),
      I4 => slv_reg0(23),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(24),
      I3 => S_AXI_WSTRB(3),
      I4 => slv_reg0(24),
      O => \slv_reg0[24]_i_1_n_0\
    );
\slv_reg0[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(25),
      I3 => S_AXI_WSTRB(3),
      I4 => slv_reg0(25),
      O => \slv_reg0[25]_i_1_n_0\
    );
\slv_reg0[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(26),
      I3 => S_AXI_WSTRB(3),
      I4 => slv_reg0(26),
      O => \slv_reg0[26]_i_1_n_0\
    );
\slv_reg0[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(27),
      I3 => S_AXI_WSTRB(3),
      I4 => slv_reg0(27),
      O => \slv_reg0[27]_i_1_n_0\
    );
\slv_reg0[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(28),
      I3 => S_AXI_WSTRB(3),
      I4 => slv_reg0(28),
      O => \slv_reg0[28]_i_1_n_0\
    );
\slv_reg0[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(29),
      I3 => S_AXI_WSTRB(3),
      I4 => slv_reg0(29),
      O => \slv_reg0[29]_i_1_n_0\
    );
\slv_reg0[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(2),
      I3 => S_AXI_WSTRB(0),
      I4 => slv_reg0(2),
      O => \slv_reg0[2]_i_1_n_0\
    );
\slv_reg0[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(30),
      I3 => S_AXI_WSTRB(3),
      I4 => slv_reg0(30),
      O => \slv_reg0[30]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(31),
      I3 => S_AXI_WSTRB(3),
      I4 => slv_reg0(31),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(3),
      I3 => S_AXI_WSTRB(0),
      I4 => slv_reg0(3),
      O => \slv_reg0[3]_i_1_n_0\
    );
\slv_reg0[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(4),
      I3 => S_AXI_WSTRB(0),
      I4 => slv_reg0(4),
      O => \slv_reg0[4]_i_1_n_0\
    );
\slv_reg0[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(5),
      I3 => S_AXI_WSTRB(0),
      I4 => slv_reg0(5),
      O => \slv_reg0[5]_i_1_n_0\
    );
\slv_reg0[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(6),
      I3 => S_AXI_WSTRB(0),
      I4 => slv_reg0(6),
      O => \slv_reg0[6]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(7),
      I3 => S_AXI_WSTRB(0),
      I4 => slv_reg0(7),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(8),
      I3 => S_AXI_WSTRB(1),
      I4 => slv_reg0(8),
      O => \slv_reg0[8]_i_1_n_0\
    );
\slv_reg0[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF1000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => S_AXI_WDATA(9),
      I3 => S_AXI_WSTRB(1),
      I4 => slv_reg0(9),
      O => \slv_reg0[9]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[0]_i_1_n_0\,
      Q => slv_reg0(0),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[10]_i_1_n_0\,
      Q => slv_reg0(10),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[11]_i_1_n_0\,
      Q => slv_reg0(11),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[12]_i_1_n_0\,
      Q => slv_reg0(12),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[13]_i_1_n_0\,
      Q => slv_reg0(13),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[14]_i_1_n_0\,
      Q => slv_reg0(14),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[15]_i_1_n_0\,
      Q => slv_reg0(15),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[16]_i_1_n_0\,
      Q => slv_reg0(16),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[17]_i_1_n_0\,
      Q => slv_reg0(17),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[18]_i_1_n_0\,
      Q => slv_reg0(18),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[19]_i_1_n_0\,
      Q => slv_reg0(19),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[1]_i_1_n_0\,
      Q => slv_reg0(1),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[20]_i_1_n_0\,
      Q => slv_reg0(20),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[21]_i_1_n_0\,
      Q => slv_reg0(21),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[22]_i_1_n_0\,
      Q => slv_reg0(22),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[23]_i_1_n_0\,
      Q => slv_reg0(23),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[24]_i_1_n_0\,
      Q => slv_reg0(24),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[25]_i_1_n_0\,
      Q => slv_reg0(25),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[26]_i_1_n_0\,
      Q => slv_reg0(26),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[27]_i_1_n_0\,
      Q => slv_reg0(27),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[28]_i_1_n_0\,
      Q => slv_reg0(28),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[29]_i_1_n_0\,
      Q => slv_reg0(29),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[2]_i_1_n_0\,
      Q => slv_reg0(2),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[30]_i_1_n_0\,
      Q => slv_reg0(30),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[31]_i_1_n_0\,
      Q => slv_reg0(31),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[3]_i_1_n_0\,
      Q => slv_reg0(3),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[4]_i_1_n_0\,
      Q => slv_reg0(4),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[5]_i_1_n_0\,
      Q => slv_reg0(5),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[6]_i_1_n_0\,
      Q => slv_reg0(6),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[7]_i_1_n_0\,
      Q => slv_reg0(7),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[8]_i_1_n_0\,
      Q => slv_reg0(8),
      R => \slv_reg2__0\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg0[9]_i_1_n_0\,
      Q => slv_reg0(9),
      R => \slv_reg2__0\(0)
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(0),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(0),
      O => \slv_reg1[0]_i_1_n_0\
    );
\slv_reg1[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(10),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(10),
      O => \slv_reg1[10]_i_1_n_0\
    );
\slv_reg1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(11),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(11),
      O => \slv_reg1[11]_i_1_n_0\
    );
\slv_reg1[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(12),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(12),
      O => \slv_reg1[12]_i_1_n_0\
    );
\slv_reg1[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(13),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(13),
      O => \slv_reg1[13]_i_1_n_0\
    );
\slv_reg1[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(14),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(14),
      O => \slv_reg1[14]_i_1_n_0\
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(15),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(15),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(16),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(16),
      O => \slv_reg1[16]_i_1_n_0\
    );
\slv_reg1[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(17),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(17),
      O => \slv_reg1[17]_i_1_n_0\
    );
\slv_reg1[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(18),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(18),
      O => \slv_reg1[18]_i_1_n_0\
    );
\slv_reg1[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(19),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(19),
      O => \slv_reg1[19]_i_1_n_0\
    );
\slv_reg1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(1),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(1),
      O => \slv_reg1[1]_i_1_n_0\
    );
\slv_reg1[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(20),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(20),
      O => \slv_reg1[20]_i_1_n_0\
    );
\slv_reg1[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(21),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(21),
      O => \slv_reg1[21]_i_1_n_0\
    );
\slv_reg1[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(22),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(22),
      O => \slv_reg1[22]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(23),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(23),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(24),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(24),
      O => \slv_reg1[24]_i_1_n_0\
    );
\slv_reg1[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(25),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(25),
      O => \slv_reg1[25]_i_1_n_0\
    );
\slv_reg1[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(26),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(26),
      O => \slv_reg1[26]_i_1_n_0\
    );
\slv_reg1[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(27),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(27),
      O => \slv_reg1[27]_i_1_n_0\
    );
\slv_reg1[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(28),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(28),
      O => \slv_reg1[28]_i_1_n_0\
    );
\slv_reg1[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(29),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(29),
      O => \slv_reg1[29]_i_1_n_0\
    );
\slv_reg1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(2),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(2),
      O => \slv_reg1[2]_i_1_n_0\
    );
\slv_reg1[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(30),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(30),
      O => \slv_reg1[30]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(31),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(31),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(3),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(3),
      O => \slv_reg1[3]_i_1_n_0\
    );
\slv_reg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(4),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(4),
      O => \slv_reg1[4]_i_1_n_0\
    );
\slv_reg1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(5),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(5),
      O => \slv_reg1[5]_i_1_n_0\
    );
\slv_reg1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(6),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(6),
      O => \slv_reg1[6]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(7),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(7),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(8),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(8),
      O => \slv_reg1[8]_i_1_n_0\
    );
\slv_reg1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => S_AXI_WDATA(9),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(2),
      I4 => slv_reg1(9),
      O => \slv_reg1[9]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[0]_i_1_n_0\,
      Q => slv_reg1(0),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[10]_i_1_n_0\,
      Q => slv_reg1(10),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[11]_i_1_n_0\,
      Q => slv_reg1(11),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[12]_i_1_n_0\,
      Q => slv_reg1(12),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[13]_i_1_n_0\,
      Q => slv_reg1(13),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[14]_i_1_n_0\,
      Q => slv_reg1(14),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[15]_i_1_n_0\,
      Q => slv_reg1(15),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[16]_i_1_n_0\,
      Q => slv_reg1(16),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[17]_i_1_n_0\,
      Q => slv_reg1(17),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[18]_i_1_n_0\,
      Q => slv_reg1(18),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[19]_i_1_n_0\,
      Q => slv_reg1(19),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[1]_i_1_n_0\,
      Q => slv_reg1(1),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[20]_i_1_n_0\,
      Q => slv_reg1(20),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[21]_i_1_n_0\,
      Q => slv_reg1(21),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[22]_i_1_n_0\,
      Q => slv_reg1(22),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[23]_i_1_n_0\,
      Q => slv_reg1(23),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[24]_i_1_n_0\,
      Q => slv_reg1(24),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[25]_i_1_n_0\,
      Q => slv_reg1(25),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[26]_i_1_n_0\,
      Q => slv_reg1(26),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[27]_i_1_n_0\,
      Q => slv_reg1(27),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[28]_i_1_n_0\,
      Q => slv_reg1(28),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[29]_i_1_n_0\,
      Q => slv_reg1(29),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[2]_i_1_n_0\,
      Q => slv_reg1(2),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[30]_i_1_n_0\,
      Q => slv_reg1(30),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[31]_i_1_n_0\,
      Q => slv_reg1(31),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[3]_i_1_n_0\,
      Q => slv_reg1(3),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[4]_i_1_n_0\,
      Q => slv_reg1(4),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[5]_i_1_n_0\,
      Q => slv_reg1(5),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[6]_i_1_n_0\,
      Q => slv_reg1(6),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[7]_i_1_n_0\,
      Q => slv_reg1(7),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[8]_i_1_n_0\,
      Q => slv_reg1(8),
      R => \slv_reg2__0\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg1[9]_i_1_n_0\,
      Q => slv_reg1(9),
      R => \slv_reg2__0\(0)
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(0),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(0),
      O => \slv_reg2[0]_i_1_n_0\
    );
\slv_reg2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(10),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(10),
      O => \slv_reg2[10]_i_1_n_0\
    );
\slv_reg2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(11),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(11),
      O => \slv_reg2[11]_i_1_n_0\
    );
\slv_reg2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(12),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(12),
      O => \slv_reg2[12]_i_1_n_0\
    );
\slv_reg2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(13),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(13),
      O => \slv_reg2[13]_i_1_n_0\
    );
\slv_reg2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(14),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(14),
      O => \slv_reg2[14]_i_1_n_0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(15),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(15),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(16),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(16),
      O => \slv_reg2[16]_i_1_n_0\
    );
\slv_reg2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(17),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(17),
      O => \slv_reg2[17]_i_1_n_0\
    );
\slv_reg2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(18),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(18),
      O => \slv_reg2[18]_i_1_n_0\
    );
\slv_reg2[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(19),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(19),
      O => \slv_reg2[19]_i_1_n_0\
    );
\slv_reg2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(1),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(1),
      O => \slv_reg2[1]_i_1_n_0\
    );
\slv_reg2[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(20),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(20),
      O => \slv_reg2[20]_i_1_n_0\
    );
\slv_reg2[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(21),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(21),
      O => \slv_reg2[21]_i_1_n_0\
    );
\slv_reg2[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(22),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(22),
      O => \slv_reg2[22]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(23),
      I2 => S_AXI_WSTRB(2),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(23),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(24),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(24),
      O => \slv_reg2[24]_i_1_n_0\
    );
\slv_reg2[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(25),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(25),
      O => \slv_reg2[25]_i_1_n_0\
    );
\slv_reg2[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(26),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(26),
      O => \slv_reg2[26]_i_1_n_0\
    );
\slv_reg2[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(27),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(27),
      O => \slv_reg2[27]_i_1_n_0\
    );
\slv_reg2[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(28),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(28),
      O => \slv_reg2[28]_i_1_n_0\
    );
\slv_reg2[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(29),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(29),
      O => \slv_reg2[29]_i_1_n_0\
    );
\slv_reg2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(2),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(2),
      O => \slv_reg2[2]_i_1_n_0\
    );
\slv_reg2[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(30),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(30),
      O => \slv_reg2[30]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(31),
      I2 => S_AXI_WSTRB(3),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(31),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(3),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(3),
      O => \slv_reg2[3]_i_1_n_0\
    );
\slv_reg2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(4),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(4),
      O => \slv_reg2[4]_i_1_n_0\
    );
\slv_reg2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(5),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(5),
      O => \slv_reg2[5]_i_1_n_0\
    );
\slv_reg2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(6),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(6),
      O => \slv_reg2[6]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(7),
      I2 => S_AXI_WSTRB(0),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(7),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(8),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(8),
      O => \slv_reg2[8]_i_1_n_0\
    );
\slv_reg2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => S_AXI_WDATA(9),
      I2 => S_AXI_WSTRB(1),
      I3 => axi_awaddr(3),
      I4 => slv_reg2(9),
      O => \slv_reg2[9]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[0]_i_1_n_0\,
      Q => slv_reg2(0),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[10]_i_1_n_0\,
      Q => slv_reg2(10),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[11]_i_1_n_0\,
      Q => slv_reg2(11),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[12]_i_1_n_0\,
      Q => slv_reg2(12),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[13]_i_1_n_0\,
      Q => slv_reg2(13),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[14]_i_1_n_0\,
      Q => slv_reg2(14),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[15]_i_1_n_0\,
      Q => slv_reg2(15),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[16]_i_1_n_0\,
      Q => slv_reg2(16),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[17]_i_1_n_0\,
      Q => slv_reg2(17),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[18]_i_1_n_0\,
      Q => slv_reg2(18),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[19]_i_1_n_0\,
      Q => slv_reg2(19),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[1]_i_1_n_0\,
      Q => slv_reg2(1),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[20]_i_1_n_0\,
      Q => slv_reg2(20),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[21]_i_1_n_0\,
      Q => slv_reg2(21),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[22]_i_1_n_0\,
      Q => slv_reg2(22),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[23]_i_1_n_0\,
      Q => slv_reg2(23),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[24]_i_1_n_0\,
      Q => slv_reg2(24),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[25]_i_1_n_0\,
      Q => slv_reg2(25),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[26]_i_1_n_0\,
      Q => slv_reg2(26),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[27]_i_1_n_0\,
      Q => slv_reg2(27),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[28]_i_1_n_0\,
      Q => slv_reg2(28),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[29]_i_1_n_0\,
      Q => slv_reg2(29),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[2]_i_1_n_0\,
      Q => slv_reg2(2),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[30]_i_1_n_0\,
      Q => slv_reg2(30),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[31]_i_1_n_0\,
      Q => slv_reg2(31),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[3]_i_1_n_0\,
      Q => slv_reg2(3),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[4]_i_1_n_0\,
      Q => slv_reg2(4),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[5]_i_1_n_0\,
      Q => slv_reg2(5),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[6]_i_1_n_0\,
      Q => slv_reg2(6),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[7]_i_1_n_0\,
      Q => slv_reg2(7),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[8]_i_1_n_0\,
      Q => slv_reg2(8),
      R => \slv_reg2__0\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => \slv_reg2[9]_i_1_n_0\,
      Q => slv_reg2(9),
      R => \slv_reg2__0\(0)
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(0),
      O => p_1_in(0)
    );
\slv_reg3[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(10),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(10),
      O => p_1_in(10)
    );
\slv_reg3[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(11),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(11),
      O => p_1_in(11)
    );
\slv_reg3[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(12),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(12),
      O => p_1_in(12)
    );
\slv_reg3[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(13),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(13),
      O => p_1_in(13)
    );
\slv_reg3[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(14),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(14),
      O => p_1_in(14)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(15),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(15),
      O => p_1_in(15)
    );
\slv_reg3[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(16),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(16),
      O => p_1_in(16)
    );
\slv_reg3[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(17),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(17),
      O => p_1_in(17)
    );
\slv_reg3[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(18),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(18),
      O => p_1_in(18)
    );
\slv_reg3[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(19),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(19),
      O => p_1_in(19)
    );
\slv_reg3[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(1),
      O => p_1_in(1)
    );
\slv_reg3[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(20),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(20),
      O => p_1_in(20)
    );
\slv_reg3[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(21),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(21),
      O => p_1_in(21)
    );
\slv_reg3[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(22),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(22),
      O => p_1_in(22)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(23),
      I1 => S_AXI_WSTRB(2),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(23),
      O => p_1_in(23)
    );
\slv_reg3[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(24),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(24),
      O => p_1_in(24)
    );
\slv_reg3[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(25),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(25),
      O => p_1_in(25)
    );
\slv_reg3[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(26),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(26),
      O => p_1_in(26)
    );
\slv_reg3[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(27),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(27),
      O => p_1_in(27)
    );
\slv_reg3[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(28),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(28),
      O => p_1_in(28)
    );
\slv_reg3[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(29),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(29),
      O => p_1_in(29)
    );
\slv_reg3[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(2),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(2),
      O => p_1_in(2)
    );
\slv_reg3[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(30),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(30),
      O => p_1_in(30)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(31),
      I1 => S_AXI_WSTRB(3),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(31),
      O => p_1_in(31)
    );
\slv_reg3[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(3),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(3),
      O => p_1_in(3)
    );
\slv_reg3[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(4),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(4),
      O => p_1_in(4)
    );
\slv_reg3[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(5),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(5),
      O => p_1_in(5)
    );
\slv_reg3[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(6),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(6),
      O => p_1_in(6)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(7),
      I1 => S_AXI_WSTRB(0),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(7),
      O => p_1_in(7)
    );
\slv_reg3[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(8),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(8),
      O => p_1_in(8)
    );
\slv_reg3[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => S_AXI_WDATA(9),
      I1 => S_AXI_WSTRB(1),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => slv_reg3(9),
      O => p_1_in(9)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(0),
      Q => slv_reg3(0),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(10),
      Q => slv_reg3(10),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(11),
      Q => slv_reg3(11),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(12),
      Q => slv_reg3(12),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(13),
      Q => slv_reg3(13),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(14),
      Q => slv_reg3(14),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(15),
      Q => slv_reg3(15),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(16),
      Q => slv_reg3(16),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(17),
      Q => slv_reg3(17),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(18),
      Q => slv_reg3(18),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(19),
      Q => slv_reg3(19),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(1),
      Q => slv_reg3(1),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(20),
      Q => slv_reg3(20),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(21),
      Q => slv_reg3(21),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(22),
      Q => slv_reg3(22),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(23),
      Q => slv_reg3(23),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(24),
      Q => slv_reg3(24),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(25),
      Q => slv_reg3(25),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(26),
      Q => slv_reg3(26),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(27),
      Q => slv_reg3(27),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(28),
      Q => slv_reg3(28),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(29),
      Q => slv_reg3(29),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(2),
      Q => slv_reg3(2),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(30),
      Q => slv_reg3(30),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(31),
      Q => slv_reg3(31),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(3),
      Q => slv_reg3(3),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(4),
      Q => slv_reg3(4),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(5),
      Q => slv_reg3(5),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(6),
      Q => slv_reg3(6),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(7),
      Q => slv_reg3(7),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(8),
      Q => slv_reg3(8),
      R => \slv_reg2__0\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => slv_reg_wren,
      D => p_1_in(9),
      Q => slv_reg3(9),
      R => \slv_reg2__0\(0)
    );
slv_reg_rden_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
slv_reg_wren_inferred_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_AWVALID,
      O => slv_reg_wren
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0 is
  port (
    M_NATIVE_READ_RD_EN : out STD_LOGIC;
    M_NATIVE_WRITE_ACLR : out STD_LOGIC;
    M_NATIVE_WRITE_DIN : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_NATIVE_WRITE_WR_EN : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    M_NATIVE_READ_EMPTY : in STD_LOGIC;
    M_NATIVE_READ_AEMPTY : in STD_LOGIC;
    M_NATIVE_READ_DOUT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_NATIVE_WRITE_FULL : in STD_LOGIC;
    M_NATIVE_WRITE_AFULL : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0;

architecture STRUCTURE of mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0 is
  attribute C_M00_NATIVE_DATA_WIDTH : integer;
  attribute C_M00_NATIVE_DATA_WIDTH of AXI_to_native_FIFO_v1_0_S00_AXI_inst : label is 32;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of AXI_to_native_FIFO_v1_0_S00_AXI_inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of AXI_to_native_FIFO_v1_0_S00_AXI_inst : label is 32;
begin
AXI_to_native_FIFO_v1_0_S00_AXI_inst: entity work.mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0_S00_AXI
     port map (
      M_NATIVE_READ_AEMPTY => M_NATIVE_READ_AEMPTY,
      M_NATIVE_READ_DOUT(31 downto 0) => M_NATIVE_READ_DOUT(31 downto 0),
      M_NATIVE_READ_EMPTY => M_NATIVE_READ_EMPTY,
      M_NATIVE_READ_RD_EN => M_NATIVE_READ_RD_EN,
      M_NATIVE_WRITE_ACLR => M_NATIVE_WRITE_ACLR,
      M_NATIVE_WRITE_AFULL => M_NATIVE_WRITE_AFULL,
      M_NATIVE_WRITE_DIN(31 downto 0) => M_NATIVE_WRITE_DIN(31 downto 0),
      M_NATIVE_WRITE_FULL => M_NATIVE_WRITE_FULL,
      M_NATIVE_WRITE_WR_EN => M_NATIVE_WRITE_WR_EN,
      S_AXI_ACLK => s00_axi_aclk,
      S_AXI_ARADDR(3 downto 0) => s00_axi_araddr(3 downto 0),
      S_AXI_ARESETN => s00_axi_aresetn,
      S_AXI_ARPROT(2 downto 0) => s00_axi_arprot(2 downto 0),
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_ARVALID => s00_axi_arvalid,
      S_AXI_AWADDR(3 downto 0) => s00_axi_awaddr(3 downto 0),
      S_AXI_AWPROT(2 downto 0) => s00_axi_awprot(2 downto 0),
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_AWVALID => s00_axi_awvalid,
      S_AXI_BREADY => s00_axi_bready,
      S_AXI_BRESP(1 downto 0) => s00_axi_bresp(1 downto 0),
      S_AXI_BVALID => s00_axi_bvalid,
      S_AXI_RDATA(31 downto 0) => s00_axi_rdata(31 downto 0),
      S_AXI_RREADY => s00_axi_rready,
      S_AXI_RRESP(1 downto 0) => s00_axi_rresp(1 downto 0),
      S_AXI_RVALID => s00_axi_rvalid,
      S_AXI_WDATA(31 downto 0) => s00_axi_wdata(31 downto 0),
      S_AXI_WREADY => s00_axi_wready,
      S_AXI_WSTRB(3 downto 0) => s00_axi_wstrb(3 downto 0),
      S_AXI_WVALID => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_AXI_to_native_FIFO_0_0 is
  port (
    M_NATIVE_READ_EMPTY : in STD_LOGIC;
    M_NATIVE_READ_AEMPTY : in STD_LOGIC;
    M_NATIVE_READ_DOUT : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_NATIVE_READ_RD_EN : out STD_LOGIC;
    M_NATIVE_WRITE_ACLR : out STD_LOGIC;
    M_NATIVE_WRITE_FULL : in STD_LOGIC;
    M_NATIVE_WRITE_AFULL : in STD_LOGIC;
    M_NATIVE_WRITE_DIN : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_NATIVE_WRITE_WR_EN : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_subsystem_AXI_to_native_FIFO_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_subsystem_AXI_to_native_FIFO_0_0 : entity is "mb_subsystem_AXI_to_native_FIFO_0_0,AXI_to_native_FIFO_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mb_subsystem_AXI_to_native_FIFO_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mb_subsystem_AXI_to_native_FIFO_0_0 : entity is "AXI_to_native_FIFO_v1_0,Vivado 2019.1";
end mb_subsystem_AXI_to_native_FIFO_0_0;

architecture STRUCTURE of mb_subsystem_AXI_to_native_FIFO_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of M_NATIVE_READ_AEMPTY : signal is "xilinx.com:interface:fifo_read:1.0 M00_NATIVE_READ ALMOST_EMPTY";
  attribute x_interface_info of M_NATIVE_READ_EMPTY : signal is "xilinx.com:interface:fifo_read:1.0 M00_NATIVE_READ EMPTY";
  attribute x_interface_info of M_NATIVE_READ_RD_EN : signal is "xilinx.com:interface:fifo_read:1.0 M00_NATIVE_READ RD_EN";
  attribute x_interface_info of M_NATIVE_WRITE_AFULL : signal is "xilinx.com:interface:fifo_write:1.0 M00_NATIVE_WRITE ALMOST_FULL";
  attribute x_interface_info of M_NATIVE_WRITE_FULL : signal is "xilinx.com:interface:fifo_write:1.0 M00_NATIVE_WRITE FULL";
  attribute x_interface_info of M_NATIVE_WRITE_WR_EN : signal is "xilinx.com:interface:fifo_write:1.0 M00_NATIVE_WRITE WR_EN";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN mb_subsystem_Clk, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of M_NATIVE_READ_DOUT : signal is "xilinx.com:interface:fifo_read:1.0 M00_NATIVE_READ RD_DATA";
  attribute x_interface_info of M_NATIVE_WRITE_DIN : signal is "xilinx.com:interface:fifo_write:1.0 M00_NATIVE_WRITE WR_DATA";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN mb_subsystem_Clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
U0: entity work.mb_subsystem_AXI_to_native_FIFO_0_0_AXI_to_native_FIFO_v1_0
     port map (
      M_NATIVE_READ_AEMPTY => M_NATIVE_READ_AEMPTY,
      M_NATIVE_READ_DOUT(31 downto 0) => M_NATIVE_READ_DOUT(31 downto 0),
      M_NATIVE_READ_EMPTY => M_NATIVE_READ_EMPTY,
      M_NATIVE_READ_RD_EN => M_NATIVE_READ_RD_EN,
      M_NATIVE_WRITE_ACLR => M_NATIVE_WRITE_ACLR,
      M_NATIVE_WRITE_AFULL => M_NATIVE_WRITE_AFULL,
      M_NATIVE_WRITE_DIN(31 downto 0) => M_NATIVE_WRITE_DIN(31 downto 0),
      M_NATIVE_WRITE_FULL => M_NATIVE_WRITE_FULL,
      M_NATIVE_WRITE_WR_EN => M_NATIVE_WRITE_WR_EN,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(3 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arprot(2 downto 0) => s00_axi_arprot(2 downto 0),
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awprot(2 downto 0) => s00_axi_awprot(2 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => s00_axi_bresp(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => s00_axi_rresp(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
