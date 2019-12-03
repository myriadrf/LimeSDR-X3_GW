-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Dec  3 09:39:26 2019
-- Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/working_dir/xil/PCIe_5GRadio/lms7_trx/ip/vivado/mb_subsystem/mb_subsystem/ip/mb_subsystem_axi_amm_bridge_0_0/mb_subsystem_axi_amm_bridge_0_0_stub.vhdl
-- Design      : mb_subsystem_axi_amm_bridge_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mb_subsystem_axi_amm_bridge_0_0 is
  Port ( 
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

end mb_subsystem_axi_amm_bridge_0_0;

architecture stub of mb_subsystem_axi_amm_bridge_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,avm_address[31:0],avm_write,avm_read,avm_writedata[31:0],avm_readdata[31:0],avm_readdatavalid,avm_waitrequest";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_amm_bridge_v1_0_9_top,Vivado 2019.1";
begin
end;
