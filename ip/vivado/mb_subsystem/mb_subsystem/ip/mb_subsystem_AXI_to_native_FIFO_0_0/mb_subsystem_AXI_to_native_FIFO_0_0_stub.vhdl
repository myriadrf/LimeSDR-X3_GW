-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Feb 26 15:53:36 2021
-- Host        : servenikas-MS-7B86 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top mb_subsystem_AXI_to_native_FIFO_0_0 -prefix
--               mb_subsystem_AXI_to_native_FIFO_0_0_ mb_subsystem_AXI_to_native_FIFO_0_0_stub.vhdl
-- Design      : mb_subsystem_AXI_to_native_FIFO_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mb_subsystem_AXI_to_native_FIFO_0_0 is
  Port ( 
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

end mb_subsystem_AXI_to_native_FIFO_0_0;

architecture stub of mb_subsystem_AXI_to_native_FIFO_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M_NATIVE_READ_EMPTY,M_NATIVE_READ_AEMPTY,M_NATIVE_READ_DOUT[31:0],M_NATIVE_READ_RD_EN,M_NATIVE_WRITE_ACLR,M_NATIVE_WRITE_FULL,M_NATIVE_WRITE_AFULL,M_NATIVE_WRITE_DIN[31:0],M_NATIVE_WRITE_WR_EN,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI_to_native_FIFO_v1_0,Vivado 2020.1";
begin
end;
