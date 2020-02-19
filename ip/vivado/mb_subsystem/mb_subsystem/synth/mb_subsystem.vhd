--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Tue Feb 18 10:26:03 2020
--Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
--Command     : generate_target mb_subsystem.bd
--Design      : mb_subsystem
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i00_couplers_imp_386BDH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end i00_couplers_imp_386BDH;

architecture STRUCTURE of i00_couplers_imp_386BDH is
  signal i00_couplers_to_i00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_i00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i00_couplers_to_i00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_i00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i00_couplers_to_i00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i00_couplers_to_i00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_i00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i00_couplers_to_i00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_i00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_i00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i00_couplers_to_i00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= i00_couplers_to_i00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= i00_couplers_to_i00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= i00_couplers_to_i00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= i00_couplers_to_i00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= i00_couplers_to_i00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= i00_couplers_to_i00_couplers_AWVALID(0);
  M_AXI_bready(0) <= i00_couplers_to_i00_couplers_BREADY(0);
  M_AXI_rready(0) <= i00_couplers_to_i00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= i00_couplers_to_i00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= i00_couplers_to_i00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= i00_couplers_to_i00_couplers_WVALID(0);
  S_AXI_arready(0) <= i00_couplers_to_i00_couplers_ARREADY(0);
  S_AXI_awready(0) <= i00_couplers_to_i00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= i00_couplers_to_i00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= i00_couplers_to_i00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= i00_couplers_to_i00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= i00_couplers_to_i00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= i00_couplers_to_i00_couplers_RVALID(0);
  S_AXI_wready(0) <= i00_couplers_to_i00_couplers_WREADY(0);
  i00_couplers_to_i00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  i00_couplers_to_i00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  i00_couplers_to_i00_couplers_ARREADY(0) <= M_AXI_arready(0);
  i00_couplers_to_i00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  i00_couplers_to_i00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  i00_couplers_to_i00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  i00_couplers_to_i00_couplers_AWREADY(0) <= M_AXI_awready(0);
  i00_couplers_to_i00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  i00_couplers_to_i00_couplers_BREADY(0) <= S_AXI_bready(0);
  i00_couplers_to_i00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  i00_couplers_to_i00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  i00_couplers_to_i00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  i00_couplers_to_i00_couplers_RREADY(0) <= S_AXI_rready(0);
  i00_couplers_to_i00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  i00_couplers_to_i00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  i00_couplers_to_i00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  i00_couplers_to_i00_couplers_WREADY(0) <= M_AXI_wready(0);
  i00_couplers_to_i00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  i00_couplers_to_i00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i01_couplers_imp_7X1785 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end i01_couplers_imp_7X1785;

architecture STRUCTURE of i01_couplers_imp_7X1785 is
  signal i01_couplers_to_i01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_i01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i01_couplers_to_i01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_i01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i01_couplers_to_i01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i01_couplers_to_i01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_i01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i01_couplers_to_i01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_i01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_i01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i01_couplers_to_i01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= i01_couplers_to_i01_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= i01_couplers_to_i01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= i01_couplers_to_i01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= i01_couplers_to_i01_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= i01_couplers_to_i01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= i01_couplers_to_i01_couplers_AWVALID(0);
  M_AXI_bready(0) <= i01_couplers_to_i01_couplers_BREADY(0);
  M_AXI_rready(0) <= i01_couplers_to_i01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= i01_couplers_to_i01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= i01_couplers_to_i01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= i01_couplers_to_i01_couplers_WVALID(0);
  S_AXI_arready(0) <= i01_couplers_to_i01_couplers_ARREADY(0);
  S_AXI_awready(0) <= i01_couplers_to_i01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= i01_couplers_to_i01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= i01_couplers_to_i01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= i01_couplers_to_i01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= i01_couplers_to_i01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= i01_couplers_to_i01_couplers_RVALID(0);
  S_AXI_wready(0) <= i01_couplers_to_i01_couplers_WREADY(0);
  i01_couplers_to_i01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  i01_couplers_to_i01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  i01_couplers_to_i01_couplers_ARREADY(0) <= M_AXI_arready(0);
  i01_couplers_to_i01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  i01_couplers_to_i01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  i01_couplers_to_i01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  i01_couplers_to_i01_couplers_AWREADY(0) <= M_AXI_awready(0);
  i01_couplers_to_i01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  i01_couplers_to_i01_couplers_BREADY(0) <= S_AXI_bready(0);
  i01_couplers_to_i01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  i01_couplers_to_i01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  i01_couplers_to_i01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  i01_couplers_to_i01_couplers_RREADY(0) <= S_AXI_rready(0);
  i01_couplers_to_i01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  i01_couplers_to_i01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  i01_couplers_to_i01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  i01_couplers_to_i01_couplers_WREADY(0) <= M_AXI_wready(0);
  i01_couplers_to_i01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  i01_couplers_to_i01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i02_couplers_imp_AJ0IVP is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end i02_couplers_imp_AJ0IVP;

architecture STRUCTURE of i02_couplers_imp_AJ0IVP is
  signal i02_couplers_to_i02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_i02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i02_couplers_to_i02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_i02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i02_couplers_to_i02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i02_couplers_to_i02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_i02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i02_couplers_to_i02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_i02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_i02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i02_couplers_to_i02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= i02_couplers_to_i02_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= i02_couplers_to_i02_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= i02_couplers_to_i02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= i02_couplers_to_i02_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= i02_couplers_to_i02_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= i02_couplers_to_i02_couplers_AWVALID(0);
  M_AXI_bready(0) <= i02_couplers_to_i02_couplers_BREADY(0);
  M_AXI_rready(0) <= i02_couplers_to_i02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= i02_couplers_to_i02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= i02_couplers_to_i02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= i02_couplers_to_i02_couplers_WVALID(0);
  S_AXI_arready(0) <= i02_couplers_to_i02_couplers_ARREADY(0);
  S_AXI_awready(0) <= i02_couplers_to_i02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= i02_couplers_to_i02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= i02_couplers_to_i02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= i02_couplers_to_i02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= i02_couplers_to_i02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= i02_couplers_to_i02_couplers_RVALID(0);
  S_AXI_wready(0) <= i02_couplers_to_i02_couplers_WREADY(0);
  i02_couplers_to_i02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  i02_couplers_to_i02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  i02_couplers_to_i02_couplers_ARREADY(0) <= M_AXI_arready(0);
  i02_couplers_to_i02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  i02_couplers_to_i02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  i02_couplers_to_i02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  i02_couplers_to_i02_couplers_AWREADY(0) <= M_AXI_awready(0);
  i02_couplers_to_i02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  i02_couplers_to_i02_couplers_BREADY(0) <= S_AXI_bready(0);
  i02_couplers_to_i02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  i02_couplers_to_i02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  i02_couplers_to_i02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  i02_couplers_to_i02_couplers_RREADY(0) <= S_AXI_rready(0);
  i02_couplers_to_i02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  i02_couplers_to_i02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  i02_couplers_to_i02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  i02_couplers_to_i02_couplers_WREADY(0) <= M_AXI_wready(0);
  i02_couplers_to_i02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  i02_couplers_to_i02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_RDG37U is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_RDG37U;

architecture STRUCTURE of m00_couplers_imp_RDG37U is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_WMA45M is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_WMA45M;

architecture STRUCTURE of m01_couplers_imp_WMA45M is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_LCSAMI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_LCSAMI;

architecture STRUCTURE of m02_couplers_imp_LCSAMI is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_PHON4A is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m03_couplers_imp_PHON4A;

architecture STRUCTURE of m03_couplers_imp_PHON4A is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m03_couplers_to_m03_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m03_couplers_to_m03_couplers_AWVALID(0);
  M_AXI_bready(0) <= m03_couplers_to_m03_couplers_BREADY(0);
  M_AXI_rready(0) <= m03_couplers_to_m03_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m03_couplers_to_m03_couplers_WVALID(0);
  S_AXI_arready(0) <= m03_couplers_to_m03_couplers_ARREADY(0);
  S_AXI_awready(0) <= m03_couplers_to_m03_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m03_couplers_to_m03_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m03_couplers_to_m03_couplers_RVALID(0);
  S_AXI_wready(0) <= m03_couplers_to_m03_couplers_WREADY(0);
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY(0) <= M_AXI_arready(0);
  m03_couplers_to_m03_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY(0) <= M_AXI_awready(0);
  m03_couplers_to_m03_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m03_couplers_to_m03_couplers_BREADY(0) <= S_AXI_bready(0);
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY(0) <= S_AXI_rready(0);
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY(0) <= M_AXI_wready(0);
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_H7JY2Y is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_H7JY2Y;

architecture STRUCTURE of m04_couplers_imp_H7JY2Y is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m04_couplers_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m04_couplers_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_BFC422 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m05_couplers_imp_BFC422;

architecture STRUCTURE of m05_couplers_imp_BFC422 is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m05_couplers_to_m05_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m05_couplers_to_m05_couplers_AWVALID(0);
  M_AXI_bready(0) <= m05_couplers_to_m05_couplers_BREADY(0);
  M_AXI_rready(0) <= m05_couplers_to_m05_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m05_couplers_to_m05_couplers_WVALID(0);
  S_AXI_arready(0) <= m05_couplers_to_m05_couplers_ARREADY(0);
  S_AXI_awready(0) <= m05_couplers_to_m05_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m05_couplers_to_m05_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m05_couplers_to_m05_couplers_RVALID(0);
  S_AXI_wready(0) <= m05_couplers_to_m05_couplers_WREADY(0);
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARREADY(0) <= M_AXI_arready(0);
  m05_couplers_to_m05_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWREADY(0) <= M_AXI_awready(0);
  m05_couplers_to_m05_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m05_couplers_to_m05_couplers_BREADY(0) <= S_AXI_bready(0);
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RREADY(0) <= S_AXI_rready(0);
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WREADY(0) <= M_AXI_wready(0);
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_4J7B9M is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m06_couplers_imp_4J7B9M;

architecture STRUCTURE of m06_couplers_imp_4J7B9M is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m06_couplers_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m06_couplers_to_m06_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m06_couplers_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m06_couplers_to_m06_couplers_AWVALID(0);
  M_AXI_bready(0) <= m06_couplers_to_m06_couplers_BREADY(0);
  M_AXI_rready(0) <= m06_couplers_to_m06_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m06_couplers_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m06_couplers_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m06_couplers_to_m06_couplers_WVALID(0);
  S_AXI_arready(0) <= m06_couplers_to_m06_couplers_ARREADY(0);
  S_AXI_awready(0) <= m06_couplers_to_m06_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_m06_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m06_couplers_to_m06_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_m06_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_m06_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m06_couplers_to_m06_couplers_RVALID(0);
  S_AXI_wready(0) <= m06_couplers_to_m06_couplers_WREADY(0);
  m06_couplers_to_m06_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_m06_couplers_ARREADY(0) <= M_AXI_arready(0);
  m06_couplers_to_m06_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m06_couplers_to_m06_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_m06_couplers_AWREADY(0) <= M_AXI_awready(0);
  m06_couplers_to_m06_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m06_couplers_to_m06_couplers_BREADY(0) <= S_AXI_bready(0);
  m06_couplers_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m06_couplers_to_m06_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m06_couplers_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m06_couplers_to_m06_couplers_RREADY(0) <= S_AXI_rready(0);
  m06_couplers_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m06_couplers_to_m06_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m06_couplers_to_m06_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_m06_couplers_WREADY(0) <= M_AXI_wready(0);
  m06_couplers_to_m06_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_m06_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m07_couplers_imp_22VAX6 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m07_couplers_imp_22VAX6;

architecture STRUCTURE of m07_couplers_imp_22VAX6 is
  signal m07_couplers_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m07_couplers_to_m07_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m07_couplers_to_m07_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m07_couplers_to_m07_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m07_couplers_to_m07_couplers_AWVALID(0);
  M_AXI_bready(0) <= m07_couplers_to_m07_couplers_BREADY(0);
  M_AXI_rready(0) <= m07_couplers_to_m07_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m07_couplers_to_m07_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m07_couplers_to_m07_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m07_couplers_to_m07_couplers_WVALID(0);
  S_AXI_arready(0) <= m07_couplers_to_m07_couplers_ARREADY(0);
  S_AXI_awready(0) <= m07_couplers_to_m07_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m07_couplers_to_m07_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m07_couplers_to_m07_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m07_couplers_to_m07_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m07_couplers_to_m07_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m07_couplers_to_m07_couplers_RVALID(0);
  S_AXI_wready(0) <= m07_couplers_to_m07_couplers_WREADY(0);
  m07_couplers_to_m07_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m07_couplers_to_m07_couplers_ARREADY(0) <= M_AXI_arready(0);
  m07_couplers_to_m07_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m07_couplers_to_m07_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m07_couplers_to_m07_couplers_AWREADY(0) <= M_AXI_awready(0);
  m07_couplers_to_m07_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m07_couplers_to_m07_couplers_BREADY(0) <= S_AXI_bready(0);
  m07_couplers_to_m07_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m07_couplers_to_m07_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m07_couplers_to_m07_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m07_couplers_to_m07_couplers_RREADY(0) <= S_AXI_rready(0);
  m07_couplers_to_m07_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m07_couplers_to_m07_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m07_couplers_to_m07_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m07_couplers_to_m07_couplers_WREADY(0) <= M_AXI_wready(0);
  m07_couplers_to_m07_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m07_couplers_to_m07_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m08_couplers_imp_1P0GGGA is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m08_couplers_imp_1P0GGGA;

architecture STRUCTURE of m08_couplers_imp_1P0GGGA is
  signal m08_couplers_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_m08_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_m08_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m08_couplers_to_m08_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m08_couplers_to_m08_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m08_couplers_to_m08_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m08_couplers_to_m08_couplers_AWVALID(0);
  M_AXI_bready(0) <= m08_couplers_to_m08_couplers_BREADY(0);
  M_AXI_rready(0) <= m08_couplers_to_m08_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m08_couplers_to_m08_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m08_couplers_to_m08_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m08_couplers_to_m08_couplers_WVALID(0);
  S_AXI_arready(0) <= m08_couplers_to_m08_couplers_ARREADY(0);
  S_AXI_awready(0) <= m08_couplers_to_m08_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m08_couplers_to_m08_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m08_couplers_to_m08_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m08_couplers_to_m08_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m08_couplers_to_m08_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m08_couplers_to_m08_couplers_RVALID(0);
  S_AXI_wready(0) <= m08_couplers_to_m08_couplers_WREADY(0);
  m08_couplers_to_m08_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m08_couplers_to_m08_couplers_ARREADY(0) <= M_AXI_arready(0);
  m08_couplers_to_m08_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m08_couplers_to_m08_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m08_couplers_to_m08_couplers_AWREADY(0) <= M_AXI_awready(0);
  m08_couplers_to_m08_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m08_couplers_to_m08_couplers_BREADY(0) <= S_AXI_bready(0);
  m08_couplers_to_m08_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m08_couplers_to_m08_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m08_couplers_to_m08_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m08_couplers_to_m08_couplers_RREADY(0) <= S_AXI_rready(0);
  m08_couplers_to_m08_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m08_couplers_to_m08_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m08_couplers_to_m08_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m08_couplers_to_m08_couplers_WREADY(0) <= M_AXI_wready(0);
  m08_couplers_to_m08_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m08_couplers_to_m08_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m09_couplers_imp_1KTOOLM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m09_couplers_imp_1KTOOLM;

architecture STRUCTURE of m09_couplers_imp_1KTOOLM is
  signal m09_couplers_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_m09_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_m09_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m09_couplers_to_m09_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m09_couplers_to_m09_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m09_couplers_to_m09_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m09_couplers_to_m09_couplers_AWVALID(0);
  M_AXI_bready(0) <= m09_couplers_to_m09_couplers_BREADY(0);
  M_AXI_rready(0) <= m09_couplers_to_m09_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m09_couplers_to_m09_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m09_couplers_to_m09_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m09_couplers_to_m09_couplers_WVALID(0);
  S_AXI_arready(0) <= m09_couplers_to_m09_couplers_ARREADY(0);
  S_AXI_awready(0) <= m09_couplers_to_m09_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m09_couplers_to_m09_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m09_couplers_to_m09_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m09_couplers_to_m09_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m09_couplers_to_m09_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m09_couplers_to_m09_couplers_RVALID(0);
  S_AXI_wready(0) <= m09_couplers_to_m09_couplers_WREADY(0);
  m09_couplers_to_m09_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m09_couplers_to_m09_couplers_ARREADY(0) <= M_AXI_arready(0);
  m09_couplers_to_m09_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m09_couplers_to_m09_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m09_couplers_to_m09_couplers_AWREADY(0) <= M_AXI_awready(0);
  m09_couplers_to_m09_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m09_couplers_to_m09_couplers_BREADY(0) <= S_AXI_bready(0);
  m09_couplers_to_m09_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m09_couplers_to_m09_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m09_couplers_to_m09_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m09_couplers_to_m09_couplers_RREADY(0) <= S_AXI_rready(0);
  m09_couplers_to_m09_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m09_couplers_to_m09_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m09_couplers_to_m09_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m09_couplers_to_m09_couplers_WREADY(0) <= M_AXI_wready(0);
  m09_couplers_to_m09_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m09_couplers_to_m09_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m10_couplers_imp_1XBGQ72 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m10_couplers_imp_1XBGQ72;

architecture STRUCTURE of m10_couplers_imp_1XBGQ72 is
  signal m10_couplers_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_m10_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_m10_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m10_couplers_to_m10_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m10_couplers_to_m10_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m10_couplers_to_m10_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m10_couplers_to_m10_couplers_AWVALID(0);
  M_AXI_bready(0) <= m10_couplers_to_m10_couplers_BREADY(0);
  M_AXI_rready(0) <= m10_couplers_to_m10_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m10_couplers_to_m10_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m10_couplers_to_m10_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m10_couplers_to_m10_couplers_WVALID(0);
  S_AXI_arready(0) <= m10_couplers_to_m10_couplers_ARREADY(0);
  S_AXI_awready(0) <= m10_couplers_to_m10_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m10_couplers_to_m10_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m10_couplers_to_m10_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m10_couplers_to_m10_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m10_couplers_to_m10_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m10_couplers_to_m10_couplers_RVALID(0);
  S_AXI_wready(0) <= m10_couplers_to_m10_couplers_WREADY(0);
  m10_couplers_to_m10_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m10_couplers_to_m10_couplers_ARREADY(0) <= M_AXI_arready(0);
  m10_couplers_to_m10_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m10_couplers_to_m10_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m10_couplers_to_m10_couplers_AWREADY(0) <= M_AXI_awready(0);
  m10_couplers_to_m10_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m10_couplers_to_m10_couplers_BREADY(0) <= S_AXI_bready(0);
  m10_couplers_to_m10_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m10_couplers_to_m10_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m10_couplers_to_m10_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m10_couplers_to_m10_couplers_RREADY(0) <= S_AXI_rready(0);
  m10_couplers_to_m10_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m10_couplers_to_m10_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m10_couplers_to_m10_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m10_couplers_to_m10_couplers_WREADY(0) <= M_AXI_wready(0);
  m10_couplers_to_m10_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m10_couplers_to_m10_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m11_couplers_imp_1UB5VTQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m11_couplers_imp_1UB5VTQ;

architecture STRUCTURE of m11_couplers_imp_1UB5VTQ is
  signal m11_couplers_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_m11_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_m11_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m11_couplers_to_m11_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m11_couplers_to_m11_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m11_couplers_to_m11_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m11_couplers_to_m11_couplers_AWVALID(0);
  M_AXI_bready(0) <= m11_couplers_to_m11_couplers_BREADY(0);
  M_AXI_rready(0) <= m11_couplers_to_m11_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m11_couplers_to_m11_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m11_couplers_to_m11_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m11_couplers_to_m11_couplers_WVALID(0);
  S_AXI_arready(0) <= m11_couplers_to_m11_couplers_ARREADY(0);
  S_AXI_awready(0) <= m11_couplers_to_m11_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m11_couplers_to_m11_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m11_couplers_to_m11_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m11_couplers_to_m11_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m11_couplers_to_m11_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m11_couplers_to_m11_couplers_RVALID(0);
  S_AXI_wready(0) <= m11_couplers_to_m11_couplers_WREADY(0);
  m11_couplers_to_m11_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m11_couplers_to_m11_couplers_ARREADY(0) <= M_AXI_arready(0);
  m11_couplers_to_m11_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m11_couplers_to_m11_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m11_couplers_to_m11_couplers_AWREADY(0) <= M_AXI_awready(0);
  m11_couplers_to_m11_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m11_couplers_to_m11_couplers_BREADY(0) <= S_AXI_bready(0);
  m11_couplers_to_m11_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m11_couplers_to_m11_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m11_couplers_to_m11_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m11_couplers_to_m11_couplers_RREADY(0) <= S_AXI_rready(0);
  m11_couplers_to_m11_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m11_couplers_to_m11_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m11_couplers_to_m11_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m11_couplers_to_m11_couplers_WREADY(0) <= M_AXI_wready(0);
  m11_couplers_to_m11_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m11_couplers_to_m11_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m12_couplers_imp_1NSR8YM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m12_couplers_imp_1NSR8YM;

architecture STRUCTURE of m12_couplers_imp_1NSR8YM is
  signal m12_couplers_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_m12_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_m12_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_m12_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_m12_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_m12_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m12_couplers_to_m12_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m12_couplers_to_m12_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m12_couplers_to_m12_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m12_couplers_to_m12_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m12_couplers_to_m12_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m12_couplers_to_m12_couplers_AWVALID(0);
  M_AXI_bready(0) <= m12_couplers_to_m12_couplers_BREADY(0);
  M_AXI_rready(0) <= m12_couplers_to_m12_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m12_couplers_to_m12_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m12_couplers_to_m12_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m12_couplers_to_m12_couplers_WVALID(0);
  S_AXI_arready(0) <= m12_couplers_to_m12_couplers_ARREADY(0);
  S_AXI_awready(0) <= m12_couplers_to_m12_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m12_couplers_to_m12_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m12_couplers_to_m12_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m12_couplers_to_m12_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m12_couplers_to_m12_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m12_couplers_to_m12_couplers_RVALID(0);
  S_AXI_wready(0) <= m12_couplers_to_m12_couplers_WREADY(0);
  m12_couplers_to_m12_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m12_couplers_to_m12_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m12_couplers_to_m12_couplers_ARREADY(0) <= M_AXI_arready(0);
  m12_couplers_to_m12_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m12_couplers_to_m12_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m12_couplers_to_m12_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m12_couplers_to_m12_couplers_AWREADY(0) <= M_AXI_awready(0);
  m12_couplers_to_m12_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m12_couplers_to_m12_couplers_BREADY(0) <= S_AXI_bready(0);
  m12_couplers_to_m12_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m12_couplers_to_m12_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m12_couplers_to_m12_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m12_couplers_to_m12_couplers_RREADY(0) <= S_AXI_rready(0);
  m12_couplers_to_m12_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m12_couplers_to_m12_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m12_couplers_to_m12_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m12_couplers_to_m12_couplers_WREADY(0) <= M_AXI_wready(0);
  m12_couplers_to_m12_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m12_couplers_to_m12_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m13_couplers_imp_1HGKKWU is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m13_couplers_imp_1HGKKWU;

architecture STRUCTURE of m13_couplers_imp_1HGKKWU is
  signal m13_couplers_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_m13_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_m13_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_m13_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_m13_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m13_couplers_to_m13_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m13_couplers_to_m13_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m13_couplers_to_m13_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m13_couplers_to_m13_couplers_AWVALID(0);
  M_AXI_bready(0) <= m13_couplers_to_m13_couplers_BREADY(0);
  M_AXI_rready(0) <= m13_couplers_to_m13_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m13_couplers_to_m13_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m13_couplers_to_m13_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m13_couplers_to_m13_couplers_WVALID(0);
  S_AXI_arready(0) <= m13_couplers_to_m13_couplers_ARREADY(0);
  S_AXI_awready(0) <= m13_couplers_to_m13_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m13_couplers_to_m13_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m13_couplers_to_m13_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m13_couplers_to_m13_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m13_couplers_to_m13_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m13_couplers_to_m13_couplers_RVALID(0);
  S_AXI_wready(0) <= m13_couplers_to_m13_couplers_WREADY(0);
  m13_couplers_to_m13_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m13_couplers_to_m13_couplers_ARREADY(0) <= M_AXI_arready(0);
  m13_couplers_to_m13_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m13_couplers_to_m13_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m13_couplers_to_m13_couplers_AWREADY(0) <= M_AXI_awready(0);
  m13_couplers_to_m13_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m13_couplers_to_m13_couplers_BREADY(0) <= S_AXI_bready(0);
  m13_couplers_to_m13_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m13_couplers_to_m13_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m13_couplers_to_m13_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m13_couplers_to_m13_couplers_RREADY(0) <= S_AXI_rready(0);
  m13_couplers_to_m13_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m13_couplers_to_m13_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m13_couplers_to_m13_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m13_couplers_to_m13_couplers_WREADY(0) <= M_AXI_wready(0);
  m13_couplers_to_m13_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m13_couplers_to_m13_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m14_couplers_imp_19WQ5Y6 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m14_couplers_imp_19WQ5Y6;

architecture STRUCTURE of m14_couplers_imp_19WQ5Y6 is
  signal m14_couplers_to_m14_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_m14_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_m14_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m14_couplers_to_m14_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_m14_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m14_couplers_to_m14_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_m14_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_m14_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m14_couplers_to_m14_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m14_couplers_to_m14_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m14_couplers_to_m14_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m14_couplers_to_m14_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m14_couplers_to_m14_couplers_AWVALID(0);
  M_AXI_bready(0) <= m14_couplers_to_m14_couplers_BREADY(0);
  M_AXI_rready(0) <= m14_couplers_to_m14_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m14_couplers_to_m14_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m14_couplers_to_m14_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m14_couplers_to_m14_couplers_WVALID(0);
  S_AXI_arready(0) <= m14_couplers_to_m14_couplers_ARREADY(0);
  S_AXI_awready(0) <= m14_couplers_to_m14_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m14_couplers_to_m14_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m14_couplers_to_m14_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m14_couplers_to_m14_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m14_couplers_to_m14_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m14_couplers_to_m14_couplers_RVALID(0);
  S_AXI_wready(0) <= m14_couplers_to_m14_couplers_WREADY(0);
  m14_couplers_to_m14_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m14_couplers_to_m14_couplers_ARREADY(0) <= M_AXI_arready(0);
  m14_couplers_to_m14_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m14_couplers_to_m14_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m14_couplers_to_m14_couplers_AWREADY(0) <= M_AXI_awready(0);
  m14_couplers_to_m14_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m14_couplers_to_m14_couplers_BREADY(0) <= S_AXI_bready(0);
  m14_couplers_to_m14_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m14_couplers_to_m14_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m14_couplers_to_m14_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m14_couplers_to_m14_couplers_RREADY(0) <= S_AXI_rready(0);
  m14_couplers_to_m14_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m14_couplers_to_m14_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m14_couplers_to_m14_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m14_couplers_to_m14_couplers_WREADY(0) <= M_AXI_wready(0);
  m14_couplers_to_m14_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m14_couplers_to_m14_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m15_couplers_imp_1DHNOF2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m15_couplers_imp_1DHNOF2;

architecture STRUCTURE of m15_couplers_imp_1DHNOF2 is
  signal m15_couplers_to_m15_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m15_couplers_to_m15_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m15_couplers_to_m15_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m15_couplers_to_m15_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m15_couplers_to_m15_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m15_couplers_to_m15_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m15_couplers_to_m15_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_m15_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m15_couplers_to_m15_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m15_couplers_to_m15_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m15_couplers_to_m15_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m15_couplers_to_m15_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m15_couplers_to_m15_couplers_AWVALID(0);
  M_AXI_bready(0) <= m15_couplers_to_m15_couplers_BREADY(0);
  M_AXI_rready(0) <= m15_couplers_to_m15_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m15_couplers_to_m15_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m15_couplers_to_m15_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m15_couplers_to_m15_couplers_WVALID(0);
  S_AXI_arready(0) <= m15_couplers_to_m15_couplers_ARREADY(0);
  S_AXI_awready(0) <= m15_couplers_to_m15_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m15_couplers_to_m15_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m15_couplers_to_m15_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m15_couplers_to_m15_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m15_couplers_to_m15_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m15_couplers_to_m15_couplers_RVALID(0);
  S_AXI_wready(0) <= m15_couplers_to_m15_couplers_WREADY(0);
  m15_couplers_to_m15_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m15_couplers_to_m15_couplers_ARREADY(0) <= M_AXI_arready(0);
  m15_couplers_to_m15_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m15_couplers_to_m15_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m15_couplers_to_m15_couplers_AWREADY(0) <= M_AXI_awready(0);
  m15_couplers_to_m15_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m15_couplers_to_m15_couplers_BREADY(0) <= S_AXI_bready(0);
  m15_couplers_to_m15_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m15_couplers_to_m15_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m15_couplers_to_m15_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m15_couplers_to_m15_couplers_RREADY(0) <= S_AXI_rready(0);
  m15_couplers_to_m15_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m15_couplers_to_m15_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m15_couplers_to_m15_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m15_couplers_to_m15_couplers_WREADY(0) <= M_AXI_wready(0);
  m15_couplers_to_m15_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m15_couplers_to_m15_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m16_couplers_imp_12LW1LQ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m16_couplers_imp_12LW1LQ;

architecture STRUCTURE of m16_couplers_imp_12LW1LQ is
  signal m16_couplers_to_m16_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m16_couplers_to_m16_couplers_ARREADY : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_ARVALID : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m16_couplers_to_m16_couplers_AWREADY : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_AWVALID : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_BREADY : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m16_couplers_to_m16_couplers_BVALID : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m16_couplers_to_m16_couplers_RREADY : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m16_couplers_to_m16_couplers_RVALID : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m16_couplers_to_m16_couplers_WREADY : STD_LOGIC;
  signal m16_couplers_to_m16_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m16_couplers_to_m16_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m16_couplers_to_m16_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m16_couplers_to_m16_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m16_couplers_to_m16_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m16_couplers_to_m16_couplers_AWVALID;
  M_AXI_bready <= m16_couplers_to_m16_couplers_BREADY;
  M_AXI_rready <= m16_couplers_to_m16_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m16_couplers_to_m16_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m16_couplers_to_m16_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m16_couplers_to_m16_couplers_WVALID;
  S_AXI_arready <= m16_couplers_to_m16_couplers_ARREADY;
  S_AXI_awready <= m16_couplers_to_m16_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m16_couplers_to_m16_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m16_couplers_to_m16_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m16_couplers_to_m16_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m16_couplers_to_m16_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m16_couplers_to_m16_couplers_RVALID;
  S_AXI_wready <= m16_couplers_to_m16_couplers_WREADY;
  m16_couplers_to_m16_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m16_couplers_to_m16_couplers_ARREADY <= M_AXI_arready;
  m16_couplers_to_m16_couplers_ARVALID <= S_AXI_arvalid;
  m16_couplers_to_m16_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m16_couplers_to_m16_couplers_AWREADY <= M_AXI_awready;
  m16_couplers_to_m16_couplers_AWVALID <= S_AXI_awvalid;
  m16_couplers_to_m16_couplers_BREADY <= S_AXI_bready;
  m16_couplers_to_m16_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m16_couplers_to_m16_couplers_BVALID <= M_AXI_bvalid;
  m16_couplers_to_m16_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m16_couplers_to_m16_couplers_RREADY <= S_AXI_rready;
  m16_couplers_to_m16_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m16_couplers_to_m16_couplers_RVALID <= M_AXI_rvalid;
  m16_couplers_to_m16_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m16_couplers_to_m16_couplers_WREADY <= M_AXI_wready;
  m16_couplers_to_m16_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m16_couplers_to_m16_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m17_couplers_imp_17AR8IM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m17_couplers_imp_17AR8IM;

architecture STRUCTURE of m17_couplers_imp_17AR8IM is
  signal m17_couplers_to_m17_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m17_couplers_to_m17_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m17_couplers_to_m17_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m17_couplers_to_m17_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m17_couplers_to_m17_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m17_couplers_to_m17_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m17_couplers_to_m17_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_m17_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m17_couplers_to_m17_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m17_couplers_to_m17_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m17_couplers_to_m17_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m17_couplers_to_m17_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m17_couplers_to_m17_couplers_AWVALID(0);
  M_AXI_bready(0) <= m17_couplers_to_m17_couplers_BREADY(0);
  M_AXI_rready(0) <= m17_couplers_to_m17_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m17_couplers_to_m17_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m17_couplers_to_m17_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m17_couplers_to_m17_couplers_WVALID(0);
  S_AXI_arready(0) <= m17_couplers_to_m17_couplers_ARREADY(0);
  S_AXI_awready(0) <= m17_couplers_to_m17_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m17_couplers_to_m17_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m17_couplers_to_m17_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m17_couplers_to_m17_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m17_couplers_to_m17_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m17_couplers_to_m17_couplers_RVALID(0);
  S_AXI_wready(0) <= m17_couplers_to_m17_couplers_WREADY(0);
  m17_couplers_to_m17_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m17_couplers_to_m17_couplers_ARREADY(0) <= M_AXI_arready(0);
  m17_couplers_to_m17_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m17_couplers_to_m17_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m17_couplers_to_m17_couplers_AWREADY(0) <= M_AXI_awready(0);
  m17_couplers_to_m17_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m17_couplers_to_m17_couplers_BREADY(0) <= S_AXI_bready(0);
  m17_couplers_to_m17_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m17_couplers_to_m17_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m17_couplers_to_m17_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m17_couplers_to_m17_couplers_RREADY(0) <= S_AXI_rready(0);
  m17_couplers_to_m17_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m17_couplers_to_m17_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m17_couplers_to_m17_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m17_couplers_to_m17_couplers_WREADY(0) <= M_AXI_wready(0);
  m17_couplers_to_m17_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m17_couplers_to_m17_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m18_couplers_imp_HX6AVY is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m18_couplers_imp_HX6AVY;

architecture STRUCTURE of m18_couplers_imp_HX6AVY is
  signal m18_couplers_to_m18_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m18_couplers_to_m18_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m18_couplers_to_m18_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m18_couplers_to_m18_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m18_couplers_to_m18_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m18_couplers_to_m18_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m18_couplers_to_m18_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_m18_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m18_couplers_to_m18_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m18_couplers_to_m18_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m18_couplers_to_m18_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m18_couplers_to_m18_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m18_couplers_to_m18_couplers_AWVALID(0);
  M_AXI_bready(0) <= m18_couplers_to_m18_couplers_BREADY(0);
  M_AXI_rready(0) <= m18_couplers_to_m18_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m18_couplers_to_m18_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m18_couplers_to_m18_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m18_couplers_to_m18_couplers_WVALID(0);
  S_AXI_arready(0) <= m18_couplers_to_m18_couplers_ARREADY(0);
  S_AXI_awready(0) <= m18_couplers_to_m18_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m18_couplers_to_m18_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m18_couplers_to_m18_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m18_couplers_to_m18_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m18_couplers_to_m18_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m18_couplers_to_m18_couplers_RVALID(0);
  S_AXI_wready(0) <= m18_couplers_to_m18_couplers_WREADY(0);
  m18_couplers_to_m18_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m18_couplers_to_m18_couplers_ARREADY(0) <= M_AXI_arready(0);
  m18_couplers_to_m18_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m18_couplers_to_m18_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m18_couplers_to_m18_couplers_AWREADY(0) <= M_AXI_awready(0);
  m18_couplers_to_m18_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m18_couplers_to_m18_couplers_BREADY(0) <= S_AXI_bready(0);
  m18_couplers_to_m18_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m18_couplers_to_m18_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m18_couplers_to_m18_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m18_couplers_to_m18_couplers_RREADY(0) <= S_AXI_rready(0);
  m18_couplers_to_m18_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m18_couplers_to_m18_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m18_couplers_to_m18_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m18_couplers_to_m18_couplers_WREADY(0) <= M_AXI_wready(0);
  m18_couplers_to_m18_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m18_couplers_to_m18_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_0_local_memory_imp_14Y43Z9 is
  port (
    Clk : in STD_LOGIC;
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end microblaze_0_local_memory_imp_14Y43Z9;

architecture STRUCTURE of microblaze_0_local_memory_imp_14Y43Z9 is
  component mb_subsystem_dlmb_bram_if_cntlr_7 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component mb_subsystem_dlmb_bram_if_cntlr_7;
  component mb_subsystem_dlmb_v10_7 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component mb_subsystem_dlmb_v10_7;
  component mb_subsystem_ilmb_bram_if_cntlr_7 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component mb_subsystem_ilmb_bram_if_cntlr_7;
  component mb_subsystem_ilmb_v10_7 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component mb_subsystem_ilmb_v10_7;
  component mb_subsystem_lmb_bram_7 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component mb_subsystem_lmb_bram_7;
  signal SYS_Rst_1 : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_dlmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_CE : STD_LOGIC;
  signal microblaze_0_dlmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_READY : STD_LOGIC;
  signal microblaze_0_dlmb_UE : STD_LOGIC;
  signal microblaze_0_dlmb_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_CE : STD_LOGIC;
  signal microblaze_0_ilmb_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_READY : STD_LOGIC;
  signal microblaze_0_ilmb_UE : STD_LOGIC;
  signal microblaze_0_ilmb_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
  attribute bmm_info_address_space : string;
  attribute bmm_info_address_space of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > mb_subsystem microblaze_0_local_memory/lmb_bram";
begin
  DLMB_ce <= microblaze_0_dlmb_CE;
  DLMB_readdbus(0 to 31) <= microblaze_0_dlmb_READDBUS(0 to 31);
  DLMB_ready <= microblaze_0_dlmb_READY;
  DLMB_ue <= microblaze_0_dlmb_UE;
  DLMB_wait <= microblaze_0_dlmb_WAIT;
  ILMB_ce <= microblaze_0_ilmb_CE;
  ILMB_readdbus(0 to 31) <= microblaze_0_ilmb_READDBUS(0 to 31);
  ILMB_ready <= microblaze_0_ilmb_READY;
  ILMB_ue <= microblaze_0_ilmb_UE;
  ILMB_wait <= microblaze_0_ilmb_WAIT;
  SYS_Rst_1 <= SYS_Rst;
  microblaze_0_Clk <= Clk;
  microblaze_0_dlmb_ABUS(0 to 31) <= DLMB_abus(0 to 31);
  microblaze_0_dlmb_ADDRSTROBE <= DLMB_addrstrobe;
  microblaze_0_dlmb_BE(0 to 3) <= DLMB_be(0 to 3);
  microblaze_0_dlmb_READSTROBE <= DLMB_readstrobe;
  microblaze_0_dlmb_WRITEDBUS(0 to 31) <= DLMB_writedbus(0 to 31);
  microblaze_0_dlmb_WRITESTROBE <= DLMB_writestrobe;
  microblaze_0_ilmb_ABUS(0 to 31) <= ILMB_abus(0 to 31);
  microblaze_0_ilmb_ADDRSTROBE <= ILMB_addrstrobe;
  microblaze_0_ilmb_READSTROBE <= ILMB_readstrobe;
dlmb_bram_if_cntlr: component mb_subsystem_dlmb_bram_if_cntlr_7
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_dlmb_bus_READY,
      Sl_UE => microblaze_0_dlmb_bus_UE,
      Sl_Wait => microblaze_0_dlmb_bus_WAIT
    );
dlmb_v10: component mb_subsystem_dlmb_v10_7
     port map (
      LMB_ABus(0 to 31) => microblaze_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_dlmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_dlmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_dlmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_dlmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_dlmb_READY,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_dlmb_UE,
      LMB_Wait => microblaze_0_dlmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_dlmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_dlmb_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_dlmb_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_dlmb_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_dlmb_READSTROBE,
      M_WriteStrobe => microblaze_0_dlmb_WRITESTROBE,
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component mb_subsystem_ilmb_bram_if_cntlr_7
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst_1,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_0_ilmb_bus_READY,
      Sl_UE => microblaze_0_ilmb_bus_UE,
      Sl_Wait => microblaze_0_ilmb_bus_WAIT
    );
ilmb_v10: component mb_subsystem_ilmb_v10_7
     port map (
      LMB_ABus(0 to 31) => microblaze_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_0_ilmb_bus_BE(0 to 3),
      LMB_CE => microblaze_0_ilmb_CE,
      LMB_Clk => microblaze_0_Clk,
      LMB_ReadDBus(0 to 31) => microblaze_0_ilmb_READDBUS(0 to 31),
      LMB_ReadStrobe => microblaze_0_ilmb_bus_READSTROBE,
      LMB_Ready => microblaze_0_ilmb_READY,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ilmb_UE,
      LMB_Wait => microblaze_0_ilmb_WAIT,
      LMB_WriteDBus(0 to 31) => microblaze_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ilmb_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ilmb_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => microblaze_0_ilmb_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst_1,
      Sl_CE(0) => microblaze_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_0_ilmb_bus_WAIT
    );
lmb_bram: component mb_subsystem_lmb_bram_7
     port map (
      addra(31) => microblaze_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_0_dlmb_cntlr_CLK,
      clkb => microblaze_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_0_dlmb_cntlr_EN,
      enb => microblaze_0_ilmb_cntlr_EN,
      rsta => microblaze_0_dlmb_cntlr_RST,
      rsta_busy => NLW_lmb_bram_rsta_busy_UNCONNECTED,
      rstb => microblaze_0_ilmb_cntlr_RST,
      rstb_busy => NLW_lmb_bram_rstb_busy_UNCONNECTED,
      wea(3) => microblaze_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_ZIFSM1 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s00_couplers_imp_ZIFSM1;

architecture STRUCTURE of s00_couplers_imp_ZIFSM1 is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s00_couplers_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= s00_couplers_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= s00_couplers_to_s00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s00_couplers_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= s00_couplers_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= s00_couplers_to_s00_couplers_AWVALID(0);
  M_AXI_bready(0) <= s00_couplers_to_s00_couplers_BREADY(0);
  M_AXI_rready(0) <= s00_couplers_to_s00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s00_couplers_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= s00_couplers_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s00_couplers_to_s00_couplers_WVALID(0);
  S_AXI_arready(0) <= s00_couplers_to_s00_couplers_ARREADY(0);
  S_AXI_awready(0) <= s00_couplers_to_s00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_s00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s00_couplers_to_s00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_s00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_s00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s00_couplers_to_s00_couplers_RVALID(0);
  S_AXI_wready(0) <= s00_couplers_to_s00_couplers_WREADY(0);
  s00_couplers_to_s00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_s00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_s00_couplers_ARREADY(0) <= M_AXI_arready(0);
  s00_couplers_to_s00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s00_couplers_to_s00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_s00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_s00_couplers_AWREADY(0) <= M_AXI_awready(0);
  s00_couplers_to_s00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s00_couplers_to_s00_couplers_BREADY(0) <= S_AXI_bready(0);
  s00_couplers_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s00_couplers_to_s00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s00_couplers_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s00_couplers_to_s00_couplers_RREADY(0) <= S_AXI_rready(0);
  s00_couplers_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s00_couplers_to_s00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s00_couplers_to_s00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_s00_couplers_WREADY(0) <= M_AXI_wready(0);
  s00_couplers_to_s00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_s00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_microblaze_0_axi_periph_5 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_ACLK : in STD_LOGIC;
    M07_ARESETN : in STD_LOGIC;
    M07_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M07_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M07_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M07_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M07_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_ACLK : in STD_LOGIC;
    M08_ARESETN : in STD_LOGIC;
    M08_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M08_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M08_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M08_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M08_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_ACLK : in STD_LOGIC;
    M09_ARESETN : in STD_LOGIC;
    M09_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M09_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M09_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M09_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M09_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_ACLK : in STD_LOGIC;
    M10_ARESETN : in STD_LOGIC;
    M10_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M10_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M10_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M10_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M10_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_ACLK : in STD_LOGIC;
    M11_ARESETN : in STD_LOGIC;
    M11_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M11_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M11_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M11_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M11_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_ACLK : in STD_LOGIC;
    M12_ARESETN : in STD_LOGIC;
    M12_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M12_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M12_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M12_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M12_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M12_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M12_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_ACLK : in STD_LOGIC;
    M13_ARESETN : in STD_LOGIC;
    M13_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M13_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M13_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M13_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M13_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_ACLK : in STD_LOGIC;
    M14_ARESETN : in STD_LOGIC;
    M14_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M14_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M14_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M14_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M14_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M14_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M15_ACLK : in STD_LOGIC;
    M15_ARESETN : in STD_LOGIC;
    M15_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M15_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M15_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M15_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M15_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M15_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M15_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M15_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M15_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M16_ACLK : in STD_LOGIC;
    M16_ARESETN : in STD_LOGIC;
    M16_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M16_AXI_arready : in STD_LOGIC;
    M16_AXI_arvalid : out STD_LOGIC;
    M16_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M16_AXI_awready : in STD_LOGIC;
    M16_AXI_awvalid : out STD_LOGIC;
    M16_AXI_bready : out STD_LOGIC;
    M16_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M16_AXI_bvalid : in STD_LOGIC;
    M16_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M16_AXI_rready : out STD_LOGIC;
    M16_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M16_AXI_rvalid : in STD_LOGIC;
    M16_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M16_AXI_wready : in STD_LOGIC;
    M16_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M16_AXI_wvalid : out STD_LOGIC;
    M17_ACLK : in STD_LOGIC;
    M17_ARESETN : in STD_LOGIC;
    M17_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M17_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M17_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M17_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M17_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M17_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M17_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M17_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M17_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M18_ACLK : in STD_LOGIC;
    M18_ARESETN : in STD_LOGIC;
    M18_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M18_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M18_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M18_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M18_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M18_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M18_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M18_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M18_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end mb_subsystem_microblaze_0_axi_periph_5;

architecture STRUCTURE of mb_subsystem_microblaze_0_axi_periph_5 is
  component mb_subsystem_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component mb_subsystem_xbar_0;
  component mb_subsystem_tier2_xbar_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component mb_subsystem_tier2_xbar_0_0;
  component mb_subsystem_tier2_xbar_1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component mb_subsystem_tier2_xbar_1_0;
  component mb_subsystem_tier2_xbar_2_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component mb_subsystem_tier2_xbar_2_0;
  signal i00_couplers_to_tier2_xbar_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i00_couplers_to_tier2_xbar_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i00_couplers_to_tier2_xbar_0_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i01_couplers_to_tier2_xbar_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i01_couplers_to_tier2_xbar_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i02_couplers_to_tier2_xbar_2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i02_couplers_to_tier2_xbar_2_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m07_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m08_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m09_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m10_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m11_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m12_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m13_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m14_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m15_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m16_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m16_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m16_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m16_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m16_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m16_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m16_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC;
  signal m16_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m16_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC;
  signal m17_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m17_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m18_couplers_to_microblaze_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_ACLK_net : STD_LOGIC;
  signal microblaze_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal microblaze_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tier2_xbar_0_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_0_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_0_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_0_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal tier2_xbar_0_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_0_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_0_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_0_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_0_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal tier2_xbar_0_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_0_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_0_to_m03_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_0_to_m03_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m03_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m03_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_0_to_m03_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal tier2_xbar_0_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_0_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_0_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal tier2_xbar_0_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_0_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal tier2_xbar_0_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_0_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal tier2_xbar_0_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_0_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_0_to_m05_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_0_to_m05_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m05_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m05_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_0_to_m05_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal tier2_xbar_0_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_0_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_0_to_m06_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_0_to_m06_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m06_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m06_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_0_to_m06_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal tier2_xbar_0_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_0_to_m07_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_0_to_m07_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m07_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_0_to_m07_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_0_to_m07_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m07_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_0_to_m07_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_0_to_m07_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m07_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m07_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_0_to_m07_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_0_to_m07_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_0_to_m07_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m07_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_0_to_m07_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_0_to_m07_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal tier2_xbar_0_to_m07_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_1_to_m08_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m08_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tier2_xbar_1_to_m08_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m09_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_1_to_m09_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m09_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m09_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_1_to_m09_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m09_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m09_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m09_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m09_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m09_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m09_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m09_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m09_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m09_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_1_to_m09_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m09_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal tier2_xbar_1_to_m09_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_1_to_m10_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_1_to_m10_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m10_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m10_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_1_to_m10_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m10_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m10_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m10_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m10_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m10_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m10_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m10_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m10_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m10_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_1_to_m10_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m10_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal tier2_xbar_1_to_m10_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_1_to_m11_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_1_to_m11_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m11_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m11_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_1_to_m11_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m11_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m11_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m11_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m11_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m11_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m11_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m11_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m11_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m11_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal tier2_xbar_1_to_m11_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m11_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal tier2_xbar_1_to_m11_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal tier2_xbar_1_to_m12_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_1_to_m12_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal tier2_xbar_1_to_m12_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m12_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m12_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_1_to_m12_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal tier2_xbar_1_to_m12_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m12_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m12_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m12_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m12_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m12_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m12_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m12_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m12_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m12_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal tier2_xbar_1_to_m12_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m12_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal tier2_xbar_1_to_m12_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal tier2_xbar_1_to_m13_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_1_to_m13_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m13_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m13_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_1_to_m13_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m13_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m13_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m13_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m13_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m13_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m13_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m13_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m13_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m13_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal tier2_xbar_1_to_m13_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m13_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal tier2_xbar_1_to_m13_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal tier2_xbar_1_to_m14_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_1_to_m14_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m14_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m14_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_1_to_m14_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m14_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m14_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m14_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m14_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m14_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m14_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m14_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m14_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m14_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal tier2_xbar_1_to_m14_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m14_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal tier2_xbar_1_to_m14_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal tier2_xbar_1_to_m15_couplers_ARADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_1_to_m15_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m15_couplers_ARVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_1_to_m15_couplers_AWADDR : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_1_to_m15_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m15_couplers_AWVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_1_to_m15_couplers_BREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_1_to_m15_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m15_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m15_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_1_to_m15_couplers_RREADY : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_1_to_m15_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_1_to_m15_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m15_couplers_WDATA : STD_LOGIC_VECTOR ( 255 downto 224 );
  signal tier2_xbar_1_to_m15_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_1_to_m15_couplers_WSTRB : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal tier2_xbar_1_to_m15_couplers_WVALID : STD_LOGIC_VECTOR ( 7 to 7 );
  signal tier2_xbar_2_to_m16_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_ARREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m16_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_AWREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m16_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m16_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_BVALID : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m16_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_RVALID : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_WREADY : STD_LOGIC;
  signal tier2_xbar_2_to_m16_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tier2_xbar_2_to_m16_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m17_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_2_to_m17_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m17_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m17_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_2_to_m17_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m17_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m17_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m17_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m17_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m17_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m17_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m17_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m17_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m17_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal tier2_xbar_2_to_m17_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m17_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal tier2_xbar_2_to_m17_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tier2_xbar_2_to_m18_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_2_to_m18_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m18_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_2_to_m18_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_2_to_m18_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m18_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_2_to_m18_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_2_to_m18_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m18_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m18_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tier2_xbar_2_to_m18_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal tier2_xbar_2_to_m18_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tier2_xbar_2_to_m18_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m18_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal tier2_xbar_2_to_m18_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tier2_xbar_2_to_m18_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal tier2_xbar_2_to_m18_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_i00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_i00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_i00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_i01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_i01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_i01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_i01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_i01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_i01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_i02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_i02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_i02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_i02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_i02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_i02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_i02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_i02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_i02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_i02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_i02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_tier2_xbar_0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_tier2_xbar_0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_tier2_xbar_2_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_tier2_xbar_2_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M03_AXI_bready(0) <= m03_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M03_AXI_rready(0) <= m03_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid(0) <= m03_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M05_AXI_bready(0) <= m05_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M05_AXI_rready(0) <= m05_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid(0) <= m05_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M06_AXI_arvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M06_AXI_awvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M06_AXI_bready(0) <= m06_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M06_AXI_rready(0) <= m06_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M06_AXI_wvalid(0) <= m06_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M07_AXI_araddr(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M07_AXI_arvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M07_AXI_awaddr(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M07_AXI_awvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M07_AXI_bready(0) <= m07_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M07_AXI_rready(0) <= m07_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M07_AXI_wdata(31 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M07_AXI_wstrb(3 downto 0) <= m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M07_AXI_wvalid(0) <= m07_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M08_AXI_araddr(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M08_AXI_arvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M08_AXI_awaddr(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M08_AXI_awvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M08_AXI_bready(0) <= m08_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M08_AXI_rready(0) <= m08_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M08_AXI_wdata(31 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M08_AXI_wstrb(3 downto 0) <= m08_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M08_AXI_wvalid(0) <= m08_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M09_AXI_araddr(31 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M09_AXI_arvalid(0) <= m09_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M09_AXI_awaddr(31 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M09_AXI_awvalid(0) <= m09_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M09_AXI_bready(0) <= m09_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M09_AXI_rready(0) <= m09_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M09_AXI_wdata(31 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M09_AXI_wstrb(3 downto 0) <= m09_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M09_AXI_wvalid(0) <= m09_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M10_AXI_araddr(31 downto 0) <= m10_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M10_AXI_arvalid(0) <= m10_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M10_AXI_awaddr(31 downto 0) <= m10_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M10_AXI_awvalid(0) <= m10_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M10_AXI_bready(0) <= m10_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M10_AXI_rready(0) <= m10_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M10_AXI_wdata(31 downto 0) <= m10_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M10_AXI_wstrb(3 downto 0) <= m10_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M10_AXI_wvalid(0) <= m10_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M11_AXI_araddr(31 downto 0) <= m11_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M11_AXI_arvalid(0) <= m11_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M11_AXI_awaddr(31 downto 0) <= m11_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M11_AXI_awvalid(0) <= m11_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M11_AXI_bready(0) <= m11_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M11_AXI_rready(0) <= m11_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M11_AXI_wdata(31 downto 0) <= m11_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M11_AXI_wstrb(3 downto 0) <= m11_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M11_AXI_wvalid(0) <= m11_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M12_AXI_araddr(31 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M12_AXI_arprot(2 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0);
  M12_AXI_arvalid(0) <= m12_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M12_AXI_awaddr(31 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M12_AXI_awprot(2 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0);
  M12_AXI_awvalid(0) <= m12_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M12_AXI_bready(0) <= m12_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M12_AXI_rready(0) <= m12_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M12_AXI_wdata(31 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M12_AXI_wstrb(3 downto 0) <= m12_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M12_AXI_wvalid(0) <= m12_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M13_AXI_araddr(31 downto 0) <= m13_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M13_AXI_arvalid(0) <= m13_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M13_AXI_awaddr(31 downto 0) <= m13_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M13_AXI_awvalid(0) <= m13_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M13_AXI_bready(0) <= m13_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M13_AXI_rready(0) <= m13_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M13_AXI_wdata(31 downto 0) <= m13_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M13_AXI_wstrb(3 downto 0) <= m13_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M13_AXI_wvalid(0) <= m13_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M14_AXI_araddr(31 downto 0) <= m14_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M14_AXI_arvalid(0) <= m14_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M14_AXI_awaddr(31 downto 0) <= m14_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M14_AXI_awvalid(0) <= m14_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M14_AXI_bready(0) <= m14_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M14_AXI_rready(0) <= m14_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M14_AXI_wdata(31 downto 0) <= m14_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M14_AXI_wstrb(3 downto 0) <= m14_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M14_AXI_wvalid(0) <= m14_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M15_AXI_araddr(31 downto 0) <= m15_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M15_AXI_arvalid(0) <= m15_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M15_AXI_awaddr(31 downto 0) <= m15_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M15_AXI_awvalid(0) <= m15_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M15_AXI_bready(0) <= m15_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M15_AXI_rready(0) <= m15_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M15_AXI_wdata(31 downto 0) <= m15_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M15_AXI_wstrb(3 downto 0) <= m15_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M15_AXI_wvalid(0) <= m15_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M16_AXI_araddr(31 downto 0) <= m16_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M16_AXI_arvalid <= m16_couplers_to_microblaze_0_axi_periph_ARVALID;
  M16_AXI_awaddr(31 downto 0) <= m16_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M16_AXI_awvalid <= m16_couplers_to_microblaze_0_axi_periph_AWVALID;
  M16_AXI_bready <= m16_couplers_to_microblaze_0_axi_periph_BREADY;
  M16_AXI_rready <= m16_couplers_to_microblaze_0_axi_periph_RREADY;
  M16_AXI_wdata(31 downto 0) <= m16_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M16_AXI_wstrb(3 downto 0) <= m16_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M16_AXI_wvalid <= m16_couplers_to_microblaze_0_axi_periph_WVALID;
  M17_AXI_araddr(31 downto 0) <= m17_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M17_AXI_arvalid(0) <= m17_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M17_AXI_awaddr(31 downto 0) <= m17_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M17_AXI_awvalid(0) <= m17_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M17_AXI_bready(0) <= m17_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M17_AXI_rready(0) <= m17_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M17_AXI_wdata(31 downto 0) <= m17_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M17_AXI_wstrb(3 downto 0) <= m17_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M17_AXI_wvalid(0) <= m17_couplers_to_microblaze_0_axi_periph_WVALID(0);
  M18_AXI_araddr(31 downto 0) <= m18_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0);
  M18_AXI_arvalid(0) <= m18_couplers_to_microblaze_0_axi_periph_ARVALID(0);
  M18_AXI_awaddr(31 downto 0) <= m18_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0);
  M18_AXI_awvalid(0) <= m18_couplers_to_microblaze_0_axi_periph_AWVALID(0);
  M18_AXI_bready(0) <= m18_couplers_to_microblaze_0_axi_periph_BREADY(0);
  M18_AXI_rready(0) <= m18_couplers_to_microblaze_0_axi_periph_RREADY(0);
  M18_AXI_wdata(31 downto 0) <= m18_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0);
  M18_AXI_wstrb(3 downto 0) <= m18_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0);
  M18_AXI_wvalid(0) <= m18_couplers_to_microblaze_0_axi_periph_WVALID(0);
  S00_AXI_arready(0) <= microblaze_0_axi_periph_to_s00_couplers_ARREADY(0);
  S00_AXI_awready(0) <= microblaze_0_axi_periph_to_s00_couplers_AWREADY(0);
  S00_AXI_bresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_BVALID(0);
  S00_AXI_rdata(31 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rresp(1 downto 0) <= microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid(0) <= microblaze_0_axi_periph_to_s00_couplers_RVALID(0);
  S00_AXI_wready(0) <= microblaze_0_axi_periph_to_s00_couplers_WREADY(0);
  m00_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  m03_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M03_AXI_arready(0);
  m03_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M03_AXI_awready(0);
  m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M03_AXI_bvalid(0);
  m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M03_AXI_rvalid(0);
  m03_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M03_AXI_wready(0);
  m04_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M04_AXI_wready(0);
  m05_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M05_AXI_arready(0);
  m05_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M05_AXI_awready(0);
  m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M05_AXI_bvalid(0);
  m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M05_AXI_rvalid(0);
  m05_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M05_AXI_wready(0);
  m06_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M06_AXI_arready(0);
  m06_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M06_AXI_awready(0);
  m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M06_AXI_bvalid(0);
  m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M06_AXI_rvalid(0);
  m06_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M06_AXI_wready(0);
  m07_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M07_AXI_arready(0);
  m07_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M07_AXI_awready(0);
  m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M07_AXI_bresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M07_AXI_bvalid(0);
  m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M07_AXI_rdata(31 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M07_AXI_rresp(1 downto 0);
  m07_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M07_AXI_rvalid(0);
  m07_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M07_AXI_wready(0);
  m08_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M08_AXI_arready(0);
  m08_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M08_AXI_awready(0);
  m08_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M08_AXI_bresp(1 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M08_AXI_bvalid(0);
  m08_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M08_AXI_rdata(31 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M08_AXI_rresp(1 downto 0);
  m08_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M08_AXI_rvalid(0);
  m08_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M08_AXI_wready(0);
  m09_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M09_AXI_arready(0);
  m09_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M09_AXI_awready(0);
  m09_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M09_AXI_bresp(1 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M09_AXI_bvalid(0);
  m09_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M09_AXI_rdata(31 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M09_AXI_rresp(1 downto 0);
  m09_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M09_AXI_rvalid(0);
  m09_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M09_AXI_wready(0);
  m10_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M10_AXI_arready(0);
  m10_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M10_AXI_awready(0);
  m10_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M10_AXI_bresp(1 downto 0);
  m10_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M10_AXI_bvalid(0);
  m10_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M10_AXI_rdata(31 downto 0);
  m10_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M10_AXI_rresp(1 downto 0);
  m10_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M10_AXI_rvalid(0);
  m10_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M10_AXI_wready(0);
  m11_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M11_AXI_arready(0);
  m11_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M11_AXI_awready(0);
  m11_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M11_AXI_bresp(1 downto 0);
  m11_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M11_AXI_bvalid(0);
  m11_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M11_AXI_rdata(31 downto 0);
  m11_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M11_AXI_rresp(1 downto 0);
  m11_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M11_AXI_rvalid(0);
  m11_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M11_AXI_wready(0);
  m12_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M12_AXI_arready(0);
  m12_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M12_AXI_awready(0);
  m12_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M12_AXI_bresp(1 downto 0);
  m12_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M12_AXI_bvalid(0);
  m12_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M12_AXI_rdata(31 downto 0);
  m12_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M12_AXI_rresp(1 downto 0);
  m12_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M12_AXI_rvalid(0);
  m12_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M12_AXI_wready(0);
  m13_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M13_AXI_arready(0);
  m13_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M13_AXI_awready(0);
  m13_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M13_AXI_bresp(1 downto 0);
  m13_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M13_AXI_bvalid(0);
  m13_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M13_AXI_rdata(31 downto 0);
  m13_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M13_AXI_rresp(1 downto 0);
  m13_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M13_AXI_rvalid(0);
  m13_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M13_AXI_wready(0);
  m14_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M14_AXI_arready(0);
  m14_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M14_AXI_awready(0);
  m14_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M14_AXI_bresp(1 downto 0);
  m14_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M14_AXI_bvalid(0);
  m14_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M14_AXI_rdata(31 downto 0);
  m14_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M14_AXI_rresp(1 downto 0);
  m14_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M14_AXI_rvalid(0);
  m14_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M14_AXI_wready(0);
  m15_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M15_AXI_arready(0);
  m15_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M15_AXI_awready(0);
  m15_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M15_AXI_bresp(1 downto 0);
  m15_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M15_AXI_bvalid(0);
  m15_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M15_AXI_rdata(31 downto 0);
  m15_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M15_AXI_rresp(1 downto 0);
  m15_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M15_AXI_rvalid(0);
  m15_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M15_AXI_wready(0);
  m16_couplers_to_microblaze_0_axi_periph_ARREADY <= M16_AXI_arready;
  m16_couplers_to_microblaze_0_axi_periph_AWREADY <= M16_AXI_awready;
  m16_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M16_AXI_bresp(1 downto 0);
  m16_couplers_to_microblaze_0_axi_periph_BVALID <= M16_AXI_bvalid;
  m16_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M16_AXI_rdata(31 downto 0);
  m16_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M16_AXI_rresp(1 downto 0);
  m16_couplers_to_microblaze_0_axi_periph_RVALID <= M16_AXI_rvalid;
  m16_couplers_to_microblaze_0_axi_periph_WREADY <= M16_AXI_wready;
  m17_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M17_AXI_arready(0);
  m17_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M17_AXI_awready(0);
  m17_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M17_AXI_bresp(1 downto 0);
  m17_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M17_AXI_bvalid(0);
  m17_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M17_AXI_rdata(31 downto 0);
  m17_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M17_AXI_rresp(1 downto 0);
  m17_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M17_AXI_rvalid(0);
  m17_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M17_AXI_wready(0);
  m18_couplers_to_microblaze_0_axi_periph_ARREADY(0) <= M18_AXI_arready(0);
  m18_couplers_to_microblaze_0_axi_periph_AWREADY(0) <= M18_AXI_awready(0);
  m18_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0) <= M18_AXI_bresp(1 downto 0);
  m18_couplers_to_microblaze_0_axi_periph_BVALID(0) <= M18_AXI_bvalid(0);
  m18_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0) <= M18_AXI_rdata(31 downto 0);
  m18_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0) <= M18_AXI_rresp(1 downto 0);
  m18_couplers_to_microblaze_0_axi_periph_RVALID(0) <= M18_AXI_rvalid(0);
  m18_couplers_to_microblaze_0_axi_periph_WREADY(0) <= M18_AXI_wready(0);
  microblaze_0_axi_periph_ACLK_net <= ACLK;
  microblaze_0_axi_periph_ARESETN_net <= ARESETN;
  microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_ARVALID(0) <= S00_AXI_arvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_AWVALID(0) <= S00_AXI_awvalid(0);
  microblaze_0_axi_periph_to_s00_couplers_BREADY(0) <= S00_AXI_bready(0);
  microblaze_0_axi_periph_to_s00_couplers_RREADY(0) <= S00_AXI_rready(0);
  microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  microblaze_0_axi_periph_to_s00_couplers_WVALID(0) <= S00_AXI_wvalid(0);
i00_couplers: entity work.i00_couplers_imp_386BDH
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => i00_couplers_to_tier2_xbar_0_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => i00_couplers_to_tier2_xbar_0_ARPROT(2 downto 0),
      M_AXI_arready(0) => i00_couplers_to_tier2_xbar_0_ARREADY(0),
      M_AXI_arvalid(0) => i00_couplers_to_tier2_xbar_0_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => i00_couplers_to_tier2_xbar_0_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => i00_couplers_to_tier2_xbar_0_AWPROT(2 downto 0),
      M_AXI_awready(0) => i00_couplers_to_tier2_xbar_0_AWREADY(0),
      M_AXI_awvalid(0) => i00_couplers_to_tier2_xbar_0_AWVALID(0),
      M_AXI_bready(0) => i00_couplers_to_tier2_xbar_0_BREADY(0),
      M_AXI_bresp(1 downto 0) => i00_couplers_to_tier2_xbar_0_BRESP(1 downto 0),
      M_AXI_bvalid(0) => i00_couplers_to_tier2_xbar_0_BVALID(0),
      M_AXI_rdata(31 downto 0) => i00_couplers_to_tier2_xbar_0_RDATA(31 downto 0),
      M_AXI_rready(0) => i00_couplers_to_tier2_xbar_0_RREADY(0),
      M_AXI_rresp(1 downto 0) => i00_couplers_to_tier2_xbar_0_RRESP(1 downto 0),
      M_AXI_rvalid(0) => i00_couplers_to_tier2_xbar_0_RVALID(0),
      M_AXI_wdata(31 downto 0) => i00_couplers_to_tier2_xbar_0_WDATA(31 downto 0),
      M_AXI_wready(0) => i00_couplers_to_tier2_xbar_0_WREADY(0),
      M_AXI_wstrb(3 downto 0) => i00_couplers_to_tier2_xbar_0_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => i00_couplers_to_tier2_xbar_0_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_i00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_i00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_i00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_i00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_i00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_i00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_i00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_i00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_i00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_i00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_i00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_i00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_i00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_i00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_i00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_i00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_i00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_i00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_i00_couplers_WVALID(0)
    );
i01_couplers: entity work.i01_couplers_imp_7X1785
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => i01_couplers_to_tier2_xbar_1_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => i01_couplers_to_tier2_xbar_1_ARPROT(2 downto 0),
      M_AXI_arready(0) => i01_couplers_to_tier2_xbar_1_ARREADY(0),
      M_AXI_arvalid(0) => i01_couplers_to_tier2_xbar_1_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => i01_couplers_to_tier2_xbar_1_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => i01_couplers_to_tier2_xbar_1_AWPROT(2 downto 0),
      M_AXI_awready(0) => i01_couplers_to_tier2_xbar_1_AWREADY(0),
      M_AXI_awvalid(0) => i01_couplers_to_tier2_xbar_1_AWVALID(0),
      M_AXI_bready(0) => i01_couplers_to_tier2_xbar_1_BREADY(0),
      M_AXI_bresp(1 downto 0) => i01_couplers_to_tier2_xbar_1_BRESP(1 downto 0),
      M_AXI_bvalid(0) => i01_couplers_to_tier2_xbar_1_BVALID(0),
      M_AXI_rdata(31 downto 0) => i01_couplers_to_tier2_xbar_1_RDATA(31 downto 0),
      M_AXI_rready(0) => i01_couplers_to_tier2_xbar_1_RREADY(0),
      M_AXI_rresp(1 downto 0) => i01_couplers_to_tier2_xbar_1_RRESP(1 downto 0),
      M_AXI_rvalid(0) => i01_couplers_to_tier2_xbar_1_RVALID(0),
      M_AXI_wdata(31 downto 0) => i01_couplers_to_tier2_xbar_1_WDATA(31 downto 0),
      M_AXI_wready(0) => i01_couplers_to_tier2_xbar_1_WREADY(0),
      M_AXI_wstrb(3 downto 0) => i01_couplers_to_tier2_xbar_1_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => i01_couplers_to_tier2_xbar_1_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_i01_couplers_ARADDR(63 downto 32),
      S_AXI_arprot(2 downto 0) => xbar_to_i01_couplers_ARPROT(5 downto 3),
      S_AXI_arready(0) => xbar_to_i01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_i01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_i01_couplers_AWADDR(63 downto 32),
      S_AXI_awprot(2 downto 0) => xbar_to_i01_couplers_AWPROT(5 downto 3),
      S_AXI_awready(0) => xbar_to_i01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_i01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_i01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_i01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_i01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_i01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_i01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_i01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_i01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_i01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_i01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_i01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => xbar_to_i01_couplers_WVALID(1)
    );
i02_couplers: entity work.i02_couplers_imp_AJ0IVP
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => i02_couplers_to_tier2_xbar_2_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => i02_couplers_to_tier2_xbar_2_ARPROT(2 downto 0),
      M_AXI_arready(0) => i02_couplers_to_tier2_xbar_2_ARREADY(0),
      M_AXI_arvalid(0) => i02_couplers_to_tier2_xbar_2_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => i02_couplers_to_tier2_xbar_2_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => i02_couplers_to_tier2_xbar_2_AWPROT(2 downto 0),
      M_AXI_awready(0) => i02_couplers_to_tier2_xbar_2_AWREADY(0),
      M_AXI_awvalid(0) => i02_couplers_to_tier2_xbar_2_AWVALID(0),
      M_AXI_bready(0) => i02_couplers_to_tier2_xbar_2_BREADY(0),
      M_AXI_bresp(1 downto 0) => i02_couplers_to_tier2_xbar_2_BRESP(1 downto 0),
      M_AXI_bvalid(0) => i02_couplers_to_tier2_xbar_2_BVALID(0),
      M_AXI_rdata(31 downto 0) => i02_couplers_to_tier2_xbar_2_RDATA(31 downto 0),
      M_AXI_rready(0) => i02_couplers_to_tier2_xbar_2_RREADY(0),
      M_AXI_rresp(1 downto 0) => i02_couplers_to_tier2_xbar_2_RRESP(1 downto 0),
      M_AXI_rvalid(0) => i02_couplers_to_tier2_xbar_2_RVALID(0),
      M_AXI_wdata(31 downto 0) => i02_couplers_to_tier2_xbar_2_WDATA(31 downto 0),
      M_AXI_wready(0) => i02_couplers_to_tier2_xbar_2_WREADY(0),
      M_AXI_wstrb(3 downto 0) => i02_couplers_to_tier2_xbar_2_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => i02_couplers_to_tier2_xbar_2_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_i02_couplers_ARADDR(95 downto 64),
      S_AXI_arprot(2 downto 0) => xbar_to_i02_couplers_ARPROT(8 downto 6),
      S_AXI_arready(0) => xbar_to_i02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_i02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_i02_couplers_AWADDR(95 downto 64),
      S_AXI_awprot(2 downto 0) => xbar_to_i02_couplers_AWPROT(8 downto 6),
      S_AXI_awready(0) => xbar_to_i02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_i02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_i02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_i02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_i02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_i02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_i02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_i02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_i02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_i02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_i02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_i02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_i02_couplers_WVALID(2)
    );
m00_couplers: entity work.m00_couplers_imp_RDG37U
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => tier2_xbar_0_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_0_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => tier2_xbar_0_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_0_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => tier2_xbar_0_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_0_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_0_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_0_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => tier2_xbar_0_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => tier2_xbar_0_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_WMA45M
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m01_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => tier2_xbar_0_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_0_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => tier2_xbar_0_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_0_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => tier2_xbar_0_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_0_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_0_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_0_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => tier2_xbar_0_to_m01_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => tier2_xbar_0_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_LCSAMI
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m02_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m02_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready(0) => tier2_xbar_0_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_0_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready(0) => tier2_xbar_0_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_0_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => tier2_xbar_0_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_0_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_0_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_0_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => tier2_xbar_0_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => tier2_xbar_0_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_PHON4A
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m03_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m03_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m03_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m03_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m03_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m03_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m03_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m03_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m03_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m03_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m03_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready(0) => tier2_xbar_0_to_m03_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_0_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready(0) => tier2_xbar_0_to_m03_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_0_to_m03_couplers_AWVALID(3),
      S_AXI_bready(0) => tier2_xbar_0_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_0_to_m03_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_0_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_0_to_m03_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready(0) => tier2_xbar_0_to_m03_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid(0) => tier2_xbar_0_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_H7JY2Y
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m04_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m04_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arprot(2 downto 0) => tier2_xbar_0_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arready(0) => tier2_xbar_0_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_0_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awprot(2 downto 0) => tier2_xbar_0_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awready(0) => tier2_xbar_0_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_0_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => tier2_xbar_0_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_0_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_0_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_0_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => tier2_xbar_0_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => tier2_xbar_0_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_BFC422
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m05_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m05_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m05_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m05_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m05_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m05_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m05_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m05_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m05_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m05_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m05_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arready(0) => tier2_xbar_0_to_m05_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_0_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awready(0) => tier2_xbar_0_to_m05_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_0_to_m05_couplers_AWVALID(5),
      S_AXI_bready(0) => tier2_xbar_0_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_0_to_m05_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_0_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_0_to_m05_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => tier2_xbar_0_to_m05_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid(0) => tier2_xbar_0_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_4J7B9M
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m06_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m06_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m06_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m06_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m06_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m06_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m06_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m06_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m06_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m06_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m06_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arready(0) => tier2_xbar_0_to_m06_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_0_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awready(0) => tier2_xbar_0_to_m06_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_0_to_m06_couplers_AWVALID(6),
      S_AXI_bready(0) => tier2_xbar_0_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_0_to_m06_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_0_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_0_to_m06_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wready(0) => tier2_xbar_0_to_m06_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid(0) => tier2_xbar_0_to_m06_couplers_WVALID(6)
    );
m07_couplers: entity work.m07_couplers_imp_22VAX6
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m07_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m07_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m07_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m07_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m07_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m07_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m07_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m07_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m07_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m07_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m07_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m07_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_0_to_m07_couplers_ARADDR(255 downto 224),
      S_AXI_arready(0) => tier2_xbar_0_to_m07_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_0_to_m07_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_0_to_m07_couplers_AWADDR(255 downto 224),
      S_AXI_awready(0) => tier2_xbar_0_to_m07_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_0_to_m07_couplers_AWVALID(7),
      S_AXI_bready(0) => tier2_xbar_0_to_m07_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => tier2_xbar_0_to_m07_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_0_to_m07_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_0_to_m07_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_0_to_m07_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => tier2_xbar_0_to_m07_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_0_to_m07_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_0_to_m07_couplers_WDATA(255 downto 224),
      S_AXI_wready(0) => tier2_xbar_0_to_m07_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_0_to_m07_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid(0) => tier2_xbar_0_to_m07_couplers_WVALID(7)
    );
m08_couplers: entity work.m08_couplers_imp_1P0GGGA
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m08_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m08_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m08_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m08_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m08_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m08_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m08_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m08_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m08_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m08_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m08_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m08_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m08_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m08_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m08_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => tier2_xbar_1_to_m08_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_1_to_m08_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m08_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => tier2_xbar_1_to_m08_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_1_to_m08_couplers_AWVALID(0),
      S_AXI_bready(0) => tier2_xbar_1_to_m08_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m08_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_1_to_m08_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m08_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_1_to_m08_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m08_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_1_to_m08_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m08_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => tier2_xbar_1_to_m08_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m08_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => tier2_xbar_1_to_m08_couplers_WVALID(0)
    );
m09_couplers: entity work.m09_couplers_imp_1KTOOLM
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m09_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m09_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m09_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m09_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m09_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m09_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m09_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m09_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m09_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m09_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m09_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m09_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m09_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m09_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m09_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => tier2_xbar_1_to_m09_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_1_to_m09_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m09_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => tier2_xbar_1_to_m09_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_1_to_m09_couplers_AWVALID(1),
      S_AXI_bready(0) => tier2_xbar_1_to_m09_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m09_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_1_to_m09_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m09_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_1_to_m09_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m09_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_1_to_m09_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m09_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => tier2_xbar_1_to_m09_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m09_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => tier2_xbar_1_to_m09_couplers_WVALID(1)
    );
m10_couplers: entity work.m10_couplers_imp_1XBGQ72
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m10_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m10_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m10_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m10_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m10_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m10_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m10_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m10_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m10_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m10_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m10_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m10_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m10_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m10_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m10_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m10_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m10_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m10_couplers_ARADDR(95 downto 64),
      S_AXI_arready(0) => tier2_xbar_1_to_m10_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_1_to_m10_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m10_couplers_AWADDR(95 downto 64),
      S_AXI_awready(0) => tier2_xbar_1_to_m10_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_1_to_m10_couplers_AWVALID(2),
      S_AXI_bready(0) => tier2_xbar_1_to_m10_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m10_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_1_to_m10_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m10_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_1_to_m10_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m10_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_1_to_m10_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m10_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => tier2_xbar_1_to_m10_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m10_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => tier2_xbar_1_to_m10_couplers_WVALID(2)
    );
m11_couplers: entity work.m11_couplers_imp_1UB5VTQ
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m11_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m11_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m11_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m11_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m11_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m11_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m11_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m11_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m11_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m11_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m11_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m11_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m11_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m11_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m11_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m11_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m11_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m11_couplers_ARADDR(127 downto 96),
      S_AXI_arready(0) => tier2_xbar_1_to_m11_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_1_to_m11_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m11_couplers_AWADDR(127 downto 96),
      S_AXI_awready(0) => tier2_xbar_1_to_m11_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_1_to_m11_couplers_AWVALID(3),
      S_AXI_bready(0) => tier2_xbar_1_to_m11_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m11_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_1_to_m11_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m11_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_1_to_m11_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m11_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_1_to_m11_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m11_couplers_WDATA(127 downto 96),
      S_AXI_wready(0) => tier2_xbar_1_to_m11_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m11_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid(0) => tier2_xbar_1_to_m11_couplers_WVALID(3)
    );
m12_couplers: entity work.m12_couplers_imp_1NSR8YM
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m12_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m12_couplers_to_microblaze_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m12_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m12_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m12_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m12_couplers_to_microblaze_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m12_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m12_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m12_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m12_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m12_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m12_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m12_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m12_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m12_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m12_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m12_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m12_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m12_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m12_couplers_ARADDR(159 downto 128),
      S_AXI_arprot(2 downto 0) => tier2_xbar_1_to_m12_couplers_ARPROT(14 downto 12),
      S_AXI_arready(0) => tier2_xbar_1_to_m12_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_1_to_m12_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m12_couplers_AWADDR(159 downto 128),
      S_AXI_awprot(2 downto 0) => tier2_xbar_1_to_m12_couplers_AWPROT(14 downto 12),
      S_AXI_awready(0) => tier2_xbar_1_to_m12_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_1_to_m12_couplers_AWVALID(4),
      S_AXI_bready(0) => tier2_xbar_1_to_m12_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m12_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_1_to_m12_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m12_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_1_to_m12_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m12_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_1_to_m12_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m12_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => tier2_xbar_1_to_m12_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m12_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => tier2_xbar_1_to_m12_couplers_WVALID(4)
    );
m13_couplers: entity work.m13_couplers_imp_1HGKKWU
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m13_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m13_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m13_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m13_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m13_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m13_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m13_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m13_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m13_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m13_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m13_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m13_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m13_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m13_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m13_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m13_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m13_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m13_couplers_ARADDR(191 downto 160),
      S_AXI_arready(0) => tier2_xbar_1_to_m13_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_1_to_m13_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m13_couplers_AWADDR(191 downto 160),
      S_AXI_awready(0) => tier2_xbar_1_to_m13_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_1_to_m13_couplers_AWVALID(5),
      S_AXI_bready(0) => tier2_xbar_1_to_m13_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m13_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_1_to_m13_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m13_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_1_to_m13_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m13_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_1_to_m13_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m13_couplers_WDATA(191 downto 160),
      S_AXI_wready(0) => tier2_xbar_1_to_m13_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m13_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid(0) => tier2_xbar_1_to_m13_couplers_WVALID(5)
    );
m14_couplers: entity work.m14_couplers_imp_19WQ5Y6
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m14_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m14_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m14_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m14_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m14_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m14_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m14_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m14_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m14_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m14_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m14_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m14_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m14_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m14_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m14_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m14_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m14_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m14_couplers_ARADDR(223 downto 192),
      S_AXI_arready(0) => tier2_xbar_1_to_m14_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_1_to_m14_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m14_couplers_AWADDR(223 downto 192),
      S_AXI_awready(0) => tier2_xbar_1_to_m14_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_1_to_m14_couplers_AWVALID(6),
      S_AXI_bready(0) => tier2_xbar_1_to_m14_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m14_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_1_to_m14_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m14_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_1_to_m14_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m14_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_1_to_m14_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m14_couplers_WDATA(223 downto 192),
      S_AXI_wready(0) => tier2_xbar_1_to_m14_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m14_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid(0) => tier2_xbar_1_to_m14_couplers_WVALID(6)
    );
m15_couplers: entity work.m15_couplers_imp_1DHNOF2
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m15_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m15_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m15_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m15_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m15_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m15_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m15_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m15_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m15_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m15_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m15_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m15_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m15_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m15_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m15_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m15_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m15_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_1_to_m15_couplers_ARADDR(255 downto 224),
      S_AXI_arready(0) => tier2_xbar_1_to_m15_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_1_to_m15_couplers_ARVALID(7),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_1_to_m15_couplers_AWADDR(255 downto 224),
      S_AXI_awready(0) => tier2_xbar_1_to_m15_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_1_to_m15_couplers_AWVALID(7),
      S_AXI_bready(0) => tier2_xbar_1_to_m15_couplers_BREADY(7),
      S_AXI_bresp(1 downto 0) => tier2_xbar_1_to_m15_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_1_to_m15_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_1_to_m15_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_1_to_m15_couplers_RREADY(7),
      S_AXI_rresp(1 downto 0) => tier2_xbar_1_to_m15_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_1_to_m15_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_1_to_m15_couplers_WDATA(255 downto 224),
      S_AXI_wready(0) => tier2_xbar_1_to_m15_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_1_to_m15_couplers_WSTRB(31 downto 28),
      S_AXI_wvalid(0) => tier2_xbar_1_to_m15_couplers_WVALID(7)
    );
m16_couplers: entity work.m16_couplers_imp_12LW1LQ
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m16_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m16_couplers_to_microblaze_0_axi_periph_ARREADY,
      M_AXI_arvalid => m16_couplers_to_microblaze_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m16_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m16_couplers_to_microblaze_0_axi_periph_AWREADY,
      M_AXI_awvalid => m16_couplers_to_microblaze_0_axi_periph_AWVALID,
      M_AXI_bready => m16_couplers_to_microblaze_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m16_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m16_couplers_to_microblaze_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m16_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m16_couplers_to_microblaze_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m16_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m16_couplers_to_microblaze_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m16_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m16_couplers_to_microblaze_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m16_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m16_couplers_to_microblaze_0_axi_periph_WVALID,
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_2_to_m16_couplers_ARADDR(31 downto 0),
      S_AXI_arready => tier2_xbar_2_to_m16_couplers_ARREADY,
      S_AXI_arvalid => tier2_xbar_2_to_m16_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_2_to_m16_couplers_AWADDR(31 downto 0),
      S_AXI_awready => tier2_xbar_2_to_m16_couplers_AWREADY,
      S_AXI_awvalid => tier2_xbar_2_to_m16_couplers_AWVALID(0),
      S_AXI_bready => tier2_xbar_2_to_m16_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => tier2_xbar_2_to_m16_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => tier2_xbar_2_to_m16_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => tier2_xbar_2_to_m16_couplers_RDATA(31 downto 0),
      S_AXI_rready => tier2_xbar_2_to_m16_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => tier2_xbar_2_to_m16_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => tier2_xbar_2_to_m16_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => tier2_xbar_2_to_m16_couplers_WDATA(31 downto 0),
      S_AXI_wready => tier2_xbar_2_to_m16_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => tier2_xbar_2_to_m16_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => tier2_xbar_2_to_m16_couplers_WVALID(0)
    );
m17_couplers: entity work.m17_couplers_imp_17AR8IM
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m17_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m17_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m17_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m17_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m17_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m17_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m17_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m17_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m17_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m17_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m17_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m17_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m17_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m17_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m17_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m17_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m17_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_2_to_m17_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => tier2_xbar_2_to_m17_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_2_to_m17_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_2_to_m17_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => tier2_xbar_2_to_m17_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_2_to_m17_couplers_AWVALID(1),
      S_AXI_bready(0) => tier2_xbar_2_to_m17_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => tier2_xbar_2_to_m17_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_2_to_m17_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_2_to_m17_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_2_to_m17_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => tier2_xbar_2_to_m17_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_2_to_m17_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_2_to_m17_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => tier2_xbar_2_to_m17_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_2_to_m17_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid(0) => tier2_xbar_2_to_m17_couplers_WVALID(1)
    );
m18_couplers: entity work.m18_couplers_imp_HX6AVY
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m18_couplers_to_microblaze_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m18_couplers_to_microblaze_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m18_couplers_to_microblaze_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m18_couplers_to_microblaze_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m18_couplers_to_microblaze_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m18_couplers_to_microblaze_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m18_couplers_to_microblaze_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m18_couplers_to_microblaze_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m18_couplers_to_microblaze_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m18_couplers_to_microblaze_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m18_couplers_to_microblaze_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m18_couplers_to_microblaze_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m18_couplers_to_microblaze_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m18_couplers_to_microblaze_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m18_couplers_to_microblaze_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m18_couplers_to_microblaze_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m18_couplers_to_microblaze_0_axi_periph_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => tier2_xbar_2_to_m18_couplers_ARADDR(95 downto 64),
      S_AXI_arready(0) => tier2_xbar_2_to_m18_couplers_ARREADY(0),
      S_AXI_arvalid(0) => tier2_xbar_2_to_m18_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => tier2_xbar_2_to_m18_couplers_AWADDR(95 downto 64),
      S_AXI_awready(0) => tier2_xbar_2_to_m18_couplers_AWREADY(0),
      S_AXI_awvalid(0) => tier2_xbar_2_to_m18_couplers_AWVALID(2),
      S_AXI_bready(0) => tier2_xbar_2_to_m18_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => tier2_xbar_2_to_m18_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => tier2_xbar_2_to_m18_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => tier2_xbar_2_to_m18_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => tier2_xbar_2_to_m18_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => tier2_xbar_2_to_m18_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => tier2_xbar_2_to_m18_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => tier2_xbar_2_to_m18_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => tier2_xbar_2_to_m18_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => tier2_xbar_2_to_m18_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => tier2_xbar_2_to_m18_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_ZIFSM1
     port map (
      M_ACLK => microblaze_0_axi_periph_ACLK_net,
      M_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      M_AXI_bready(0) => s00_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready(0) => s00_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready(0) => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s00_couplers_to_xbar_WVALID(0),
      S_ACLK => microblaze_0_axi_periph_ACLK_net,
      S_ARESETN => microblaze_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => microblaze_0_axi_periph_to_s00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => microblaze_0_axi_periph_to_s00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => microblaze_0_axi_periph_to_s00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => microblaze_0_axi_periph_to_s00_couplers_AWVALID(0),
      S_AXI_bready(0) => microblaze_0_axi_periph_to_s00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => microblaze_0_axi_periph_to_s00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => microblaze_0_axi_periph_to_s00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => microblaze_0_axi_periph_to_s00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => microblaze_0_axi_periph_to_s00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => microblaze_0_axi_periph_to_s00_couplers_WVALID(0)
    );
tier2_xbar_0: component mb_subsystem_tier2_xbar_0_0
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(255 downto 224) => tier2_xbar_0_to_m07_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => tier2_xbar_0_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => tier2_xbar_0_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => tier2_xbar_0_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => tier2_xbar_0_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => tier2_xbar_0_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => tier2_xbar_0_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => tier2_xbar_0_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(23 downto 15) => NLW_tier2_xbar_0_m_axi_arprot_UNCONNECTED(23 downto 15),
      m_axi_arprot(14 downto 12) => tier2_xbar_0_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 0) => NLW_tier2_xbar_0_m_axi_arprot_UNCONNECTED(11 downto 0),
      m_axi_arready(7) => tier2_xbar_0_to_m07_couplers_ARREADY(0),
      m_axi_arready(6) => tier2_xbar_0_to_m06_couplers_ARREADY(0),
      m_axi_arready(5) => tier2_xbar_0_to_m05_couplers_ARREADY(0),
      m_axi_arready(4) => tier2_xbar_0_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => tier2_xbar_0_to_m03_couplers_ARREADY(0),
      m_axi_arready(2) => tier2_xbar_0_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => tier2_xbar_0_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => tier2_xbar_0_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(7) => tier2_xbar_0_to_m07_couplers_ARVALID(7),
      m_axi_arvalid(6) => tier2_xbar_0_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => tier2_xbar_0_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => tier2_xbar_0_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => tier2_xbar_0_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => tier2_xbar_0_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => tier2_xbar_0_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => tier2_xbar_0_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(255 downto 224) => tier2_xbar_0_to_m07_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => tier2_xbar_0_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => tier2_xbar_0_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => tier2_xbar_0_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => tier2_xbar_0_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => tier2_xbar_0_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => tier2_xbar_0_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => tier2_xbar_0_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(23 downto 15) => NLW_tier2_xbar_0_m_axi_awprot_UNCONNECTED(23 downto 15),
      m_axi_awprot(14 downto 12) => tier2_xbar_0_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 0) => NLW_tier2_xbar_0_m_axi_awprot_UNCONNECTED(11 downto 0),
      m_axi_awready(7) => tier2_xbar_0_to_m07_couplers_AWREADY(0),
      m_axi_awready(6) => tier2_xbar_0_to_m06_couplers_AWREADY(0),
      m_axi_awready(5) => tier2_xbar_0_to_m05_couplers_AWREADY(0),
      m_axi_awready(4) => tier2_xbar_0_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => tier2_xbar_0_to_m03_couplers_AWREADY(0),
      m_axi_awready(2) => tier2_xbar_0_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => tier2_xbar_0_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => tier2_xbar_0_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(7) => tier2_xbar_0_to_m07_couplers_AWVALID(7),
      m_axi_awvalid(6) => tier2_xbar_0_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => tier2_xbar_0_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => tier2_xbar_0_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => tier2_xbar_0_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => tier2_xbar_0_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => tier2_xbar_0_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => tier2_xbar_0_to_m00_couplers_AWVALID(0),
      m_axi_bready(7) => tier2_xbar_0_to_m07_couplers_BREADY(7),
      m_axi_bready(6) => tier2_xbar_0_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => tier2_xbar_0_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => tier2_xbar_0_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => tier2_xbar_0_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => tier2_xbar_0_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => tier2_xbar_0_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => tier2_xbar_0_to_m00_couplers_BREADY(0),
      m_axi_bresp(15 downto 14) => tier2_xbar_0_to_m07_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => tier2_xbar_0_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => tier2_xbar_0_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => tier2_xbar_0_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => tier2_xbar_0_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => tier2_xbar_0_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => tier2_xbar_0_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => tier2_xbar_0_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(7) => tier2_xbar_0_to_m07_couplers_BVALID(0),
      m_axi_bvalid(6) => tier2_xbar_0_to_m06_couplers_BVALID(0),
      m_axi_bvalid(5) => tier2_xbar_0_to_m05_couplers_BVALID(0),
      m_axi_bvalid(4) => tier2_xbar_0_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => tier2_xbar_0_to_m03_couplers_BVALID(0),
      m_axi_bvalid(2) => tier2_xbar_0_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => tier2_xbar_0_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => tier2_xbar_0_to_m00_couplers_BVALID(0),
      m_axi_rdata(255 downto 224) => tier2_xbar_0_to_m07_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => tier2_xbar_0_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => tier2_xbar_0_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => tier2_xbar_0_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => tier2_xbar_0_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => tier2_xbar_0_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => tier2_xbar_0_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => tier2_xbar_0_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(7) => tier2_xbar_0_to_m07_couplers_RREADY(7),
      m_axi_rready(6) => tier2_xbar_0_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => tier2_xbar_0_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => tier2_xbar_0_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => tier2_xbar_0_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => tier2_xbar_0_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => tier2_xbar_0_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => tier2_xbar_0_to_m00_couplers_RREADY(0),
      m_axi_rresp(15 downto 14) => tier2_xbar_0_to_m07_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => tier2_xbar_0_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => tier2_xbar_0_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => tier2_xbar_0_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => tier2_xbar_0_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => tier2_xbar_0_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => tier2_xbar_0_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => tier2_xbar_0_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(7) => tier2_xbar_0_to_m07_couplers_RVALID(0),
      m_axi_rvalid(6) => tier2_xbar_0_to_m06_couplers_RVALID(0),
      m_axi_rvalid(5) => tier2_xbar_0_to_m05_couplers_RVALID(0),
      m_axi_rvalid(4) => tier2_xbar_0_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => tier2_xbar_0_to_m03_couplers_RVALID(0),
      m_axi_rvalid(2) => tier2_xbar_0_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => tier2_xbar_0_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => tier2_xbar_0_to_m00_couplers_RVALID(0),
      m_axi_wdata(255 downto 224) => tier2_xbar_0_to_m07_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => tier2_xbar_0_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => tier2_xbar_0_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => tier2_xbar_0_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => tier2_xbar_0_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => tier2_xbar_0_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => tier2_xbar_0_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => tier2_xbar_0_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(7) => tier2_xbar_0_to_m07_couplers_WREADY(0),
      m_axi_wready(6) => tier2_xbar_0_to_m06_couplers_WREADY(0),
      m_axi_wready(5) => tier2_xbar_0_to_m05_couplers_WREADY(0),
      m_axi_wready(4) => tier2_xbar_0_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => tier2_xbar_0_to_m03_couplers_WREADY(0),
      m_axi_wready(2) => tier2_xbar_0_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => tier2_xbar_0_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => tier2_xbar_0_to_m00_couplers_WREADY(0),
      m_axi_wstrb(31 downto 28) => tier2_xbar_0_to_m07_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => tier2_xbar_0_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => tier2_xbar_0_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => tier2_xbar_0_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => tier2_xbar_0_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => tier2_xbar_0_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => tier2_xbar_0_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => tier2_xbar_0_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(7) => tier2_xbar_0_to_m07_couplers_WVALID(7),
      m_axi_wvalid(6) => tier2_xbar_0_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => tier2_xbar_0_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => tier2_xbar_0_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => tier2_xbar_0_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => tier2_xbar_0_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => tier2_xbar_0_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => tier2_xbar_0_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => i00_couplers_to_tier2_xbar_0_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => i00_couplers_to_tier2_xbar_0_ARPROT(2 downto 0),
      s_axi_arready(0) => i00_couplers_to_tier2_xbar_0_ARREADY(0),
      s_axi_arvalid(0) => i00_couplers_to_tier2_xbar_0_ARVALID(0),
      s_axi_awaddr(31 downto 0) => i00_couplers_to_tier2_xbar_0_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => i00_couplers_to_tier2_xbar_0_AWPROT(2 downto 0),
      s_axi_awready(0) => i00_couplers_to_tier2_xbar_0_AWREADY(0),
      s_axi_awvalid(0) => i00_couplers_to_tier2_xbar_0_AWVALID(0),
      s_axi_bready(0) => i00_couplers_to_tier2_xbar_0_BREADY(0),
      s_axi_bresp(1 downto 0) => i00_couplers_to_tier2_xbar_0_BRESP(1 downto 0),
      s_axi_bvalid(0) => i00_couplers_to_tier2_xbar_0_BVALID(0),
      s_axi_rdata(31 downto 0) => i00_couplers_to_tier2_xbar_0_RDATA(31 downto 0),
      s_axi_rready(0) => i00_couplers_to_tier2_xbar_0_RREADY(0),
      s_axi_rresp(1 downto 0) => i00_couplers_to_tier2_xbar_0_RRESP(1 downto 0),
      s_axi_rvalid(0) => i00_couplers_to_tier2_xbar_0_RVALID(0),
      s_axi_wdata(31 downto 0) => i00_couplers_to_tier2_xbar_0_WDATA(31 downto 0),
      s_axi_wready(0) => i00_couplers_to_tier2_xbar_0_WREADY(0),
      s_axi_wstrb(3 downto 0) => i00_couplers_to_tier2_xbar_0_WSTRB(3 downto 0),
      s_axi_wvalid(0) => i00_couplers_to_tier2_xbar_0_WVALID(0)
    );
tier2_xbar_1: component mb_subsystem_tier2_xbar_1_0
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(255 downto 224) => tier2_xbar_1_to_m15_couplers_ARADDR(255 downto 224),
      m_axi_araddr(223 downto 192) => tier2_xbar_1_to_m14_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => tier2_xbar_1_to_m13_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => tier2_xbar_1_to_m12_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => tier2_xbar_1_to_m11_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => tier2_xbar_1_to_m10_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => tier2_xbar_1_to_m09_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => tier2_xbar_1_to_m08_couplers_ARADDR(31 downto 0),
      m_axi_arprot(23 downto 15) => NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED(23 downto 15),
      m_axi_arprot(14 downto 12) => tier2_xbar_1_to_m12_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 0) => NLW_tier2_xbar_1_m_axi_arprot_UNCONNECTED(11 downto 0),
      m_axi_arready(7) => tier2_xbar_1_to_m15_couplers_ARREADY(0),
      m_axi_arready(6) => tier2_xbar_1_to_m14_couplers_ARREADY(0),
      m_axi_arready(5) => tier2_xbar_1_to_m13_couplers_ARREADY(0),
      m_axi_arready(4) => tier2_xbar_1_to_m12_couplers_ARREADY(0),
      m_axi_arready(3) => tier2_xbar_1_to_m11_couplers_ARREADY(0),
      m_axi_arready(2) => tier2_xbar_1_to_m10_couplers_ARREADY(0),
      m_axi_arready(1) => tier2_xbar_1_to_m09_couplers_ARREADY(0),
      m_axi_arready(0) => tier2_xbar_1_to_m08_couplers_ARREADY(0),
      m_axi_arvalid(7) => tier2_xbar_1_to_m15_couplers_ARVALID(7),
      m_axi_arvalid(6) => tier2_xbar_1_to_m14_couplers_ARVALID(6),
      m_axi_arvalid(5) => tier2_xbar_1_to_m13_couplers_ARVALID(5),
      m_axi_arvalid(4) => tier2_xbar_1_to_m12_couplers_ARVALID(4),
      m_axi_arvalid(3) => tier2_xbar_1_to_m11_couplers_ARVALID(3),
      m_axi_arvalid(2) => tier2_xbar_1_to_m10_couplers_ARVALID(2),
      m_axi_arvalid(1) => tier2_xbar_1_to_m09_couplers_ARVALID(1),
      m_axi_arvalid(0) => tier2_xbar_1_to_m08_couplers_ARVALID(0),
      m_axi_awaddr(255 downto 224) => tier2_xbar_1_to_m15_couplers_AWADDR(255 downto 224),
      m_axi_awaddr(223 downto 192) => tier2_xbar_1_to_m14_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => tier2_xbar_1_to_m13_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => tier2_xbar_1_to_m12_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => tier2_xbar_1_to_m11_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => tier2_xbar_1_to_m10_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => tier2_xbar_1_to_m09_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => tier2_xbar_1_to_m08_couplers_AWADDR(31 downto 0),
      m_axi_awprot(23 downto 15) => NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED(23 downto 15),
      m_axi_awprot(14 downto 12) => tier2_xbar_1_to_m12_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 0) => NLW_tier2_xbar_1_m_axi_awprot_UNCONNECTED(11 downto 0),
      m_axi_awready(7) => tier2_xbar_1_to_m15_couplers_AWREADY(0),
      m_axi_awready(6) => tier2_xbar_1_to_m14_couplers_AWREADY(0),
      m_axi_awready(5) => tier2_xbar_1_to_m13_couplers_AWREADY(0),
      m_axi_awready(4) => tier2_xbar_1_to_m12_couplers_AWREADY(0),
      m_axi_awready(3) => tier2_xbar_1_to_m11_couplers_AWREADY(0),
      m_axi_awready(2) => tier2_xbar_1_to_m10_couplers_AWREADY(0),
      m_axi_awready(1) => tier2_xbar_1_to_m09_couplers_AWREADY(0),
      m_axi_awready(0) => tier2_xbar_1_to_m08_couplers_AWREADY(0),
      m_axi_awvalid(7) => tier2_xbar_1_to_m15_couplers_AWVALID(7),
      m_axi_awvalid(6) => tier2_xbar_1_to_m14_couplers_AWVALID(6),
      m_axi_awvalid(5) => tier2_xbar_1_to_m13_couplers_AWVALID(5),
      m_axi_awvalid(4) => tier2_xbar_1_to_m12_couplers_AWVALID(4),
      m_axi_awvalid(3) => tier2_xbar_1_to_m11_couplers_AWVALID(3),
      m_axi_awvalid(2) => tier2_xbar_1_to_m10_couplers_AWVALID(2),
      m_axi_awvalid(1) => tier2_xbar_1_to_m09_couplers_AWVALID(1),
      m_axi_awvalid(0) => tier2_xbar_1_to_m08_couplers_AWVALID(0),
      m_axi_bready(7) => tier2_xbar_1_to_m15_couplers_BREADY(7),
      m_axi_bready(6) => tier2_xbar_1_to_m14_couplers_BREADY(6),
      m_axi_bready(5) => tier2_xbar_1_to_m13_couplers_BREADY(5),
      m_axi_bready(4) => tier2_xbar_1_to_m12_couplers_BREADY(4),
      m_axi_bready(3) => tier2_xbar_1_to_m11_couplers_BREADY(3),
      m_axi_bready(2) => tier2_xbar_1_to_m10_couplers_BREADY(2),
      m_axi_bready(1) => tier2_xbar_1_to_m09_couplers_BREADY(1),
      m_axi_bready(0) => tier2_xbar_1_to_m08_couplers_BREADY(0),
      m_axi_bresp(15 downto 14) => tier2_xbar_1_to_m15_couplers_BRESP(1 downto 0),
      m_axi_bresp(13 downto 12) => tier2_xbar_1_to_m14_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => tier2_xbar_1_to_m13_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => tier2_xbar_1_to_m12_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => tier2_xbar_1_to_m11_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => tier2_xbar_1_to_m10_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => tier2_xbar_1_to_m09_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => tier2_xbar_1_to_m08_couplers_BRESP(1 downto 0),
      m_axi_bvalid(7) => tier2_xbar_1_to_m15_couplers_BVALID(0),
      m_axi_bvalid(6) => tier2_xbar_1_to_m14_couplers_BVALID(0),
      m_axi_bvalid(5) => tier2_xbar_1_to_m13_couplers_BVALID(0),
      m_axi_bvalid(4) => tier2_xbar_1_to_m12_couplers_BVALID(0),
      m_axi_bvalid(3) => tier2_xbar_1_to_m11_couplers_BVALID(0),
      m_axi_bvalid(2) => tier2_xbar_1_to_m10_couplers_BVALID(0),
      m_axi_bvalid(1) => tier2_xbar_1_to_m09_couplers_BVALID(0),
      m_axi_bvalid(0) => tier2_xbar_1_to_m08_couplers_BVALID(0),
      m_axi_rdata(255 downto 224) => tier2_xbar_1_to_m15_couplers_RDATA(31 downto 0),
      m_axi_rdata(223 downto 192) => tier2_xbar_1_to_m14_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => tier2_xbar_1_to_m13_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => tier2_xbar_1_to_m12_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => tier2_xbar_1_to_m11_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => tier2_xbar_1_to_m10_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => tier2_xbar_1_to_m09_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => tier2_xbar_1_to_m08_couplers_RDATA(31 downto 0),
      m_axi_rready(7) => tier2_xbar_1_to_m15_couplers_RREADY(7),
      m_axi_rready(6) => tier2_xbar_1_to_m14_couplers_RREADY(6),
      m_axi_rready(5) => tier2_xbar_1_to_m13_couplers_RREADY(5),
      m_axi_rready(4) => tier2_xbar_1_to_m12_couplers_RREADY(4),
      m_axi_rready(3) => tier2_xbar_1_to_m11_couplers_RREADY(3),
      m_axi_rready(2) => tier2_xbar_1_to_m10_couplers_RREADY(2),
      m_axi_rready(1) => tier2_xbar_1_to_m09_couplers_RREADY(1),
      m_axi_rready(0) => tier2_xbar_1_to_m08_couplers_RREADY(0),
      m_axi_rresp(15 downto 14) => tier2_xbar_1_to_m15_couplers_RRESP(1 downto 0),
      m_axi_rresp(13 downto 12) => tier2_xbar_1_to_m14_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => tier2_xbar_1_to_m13_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => tier2_xbar_1_to_m12_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => tier2_xbar_1_to_m11_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => tier2_xbar_1_to_m10_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => tier2_xbar_1_to_m09_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => tier2_xbar_1_to_m08_couplers_RRESP(1 downto 0),
      m_axi_rvalid(7) => tier2_xbar_1_to_m15_couplers_RVALID(0),
      m_axi_rvalid(6) => tier2_xbar_1_to_m14_couplers_RVALID(0),
      m_axi_rvalid(5) => tier2_xbar_1_to_m13_couplers_RVALID(0),
      m_axi_rvalid(4) => tier2_xbar_1_to_m12_couplers_RVALID(0),
      m_axi_rvalid(3) => tier2_xbar_1_to_m11_couplers_RVALID(0),
      m_axi_rvalid(2) => tier2_xbar_1_to_m10_couplers_RVALID(0),
      m_axi_rvalid(1) => tier2_xbar_1_to_m09_couplers_RVALID(0),
      m_axi_rvalid(0) => tier2_xbar_1_to_m08_couplers_RVALID(0),
      m_axi_wdata(255 downto 224) => tier2_xbar_1_to_m15_couplers_WDATA(255 downto 224),
      m_axi_wdata(223 downto 192) => tier2_xbar_1_to_m14_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => tier2_xbar_1_to_m13_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => tier2_xbar_1_to_m12_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => tier2_xbar_1_to_m11_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => tier2_xbar_1_to_m10_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => tier2_xbar_1_to_m09_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => tier2_xbar_1_to_m08_couplers_WDATA(31 downto 0),
      m_axi_wready(7) => tier2_xbar_1_to_m15_couplers_WREADY(0),
      m_axi_wready(6) => tier2_xbar_1_to_m14_couplers_WREADY(0),
      m_axi_wready(5) => tier2_xbar_1_to_m13_couplers_WREADY(0),
      m_axi_wready(4) => tier2_xbar_1_to_m12_couplers_WREADY(0),
      m_axi_wready(3) => tier2_xbar_1_to_m11_couplers_WREADY(0),
      m_axi_wready(2) => tier2_xbar_1_to_m10_couplers_WREADY(0),
      m_axi_wready(1) => tier2_xbar_1_to_m09_couplers_WREADY(0),
      m_axi_wready(0) => tier2_xbar_1_to_m08_couplers_WREADY(0),
      m_axi_wstrb(31 downto 28) => tier2_xbar_1_to_m15_couplers_WSTRB(31 downto 28),
      m_axi_wstrb(27 downto 24) => tier2_xbar_1_to_m14_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => tier2_xbar_1_to_m13_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => tier2_xbar_1_to_m12_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => tier2_xbar_1_to_m11_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => tier2_xbar_1_to_m10_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => tier2_xbar_1_to_m09_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => tier2_xbar_1_to_m08_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(7) => tier2_xbar_1_to_m15_couplers_WVALID(7),
      m_axi_wvalid(6) => tier2_xbar_1_to_m14_couplers_WVALID(6),
      m_axi_wvalid(5) => tier2_xbar_1_to_m13_couplers_WVALID(5),
      m_axi_wvalid(4) => tier2_xbar_1_to_m12_couplers_WVALID(4),
      m_axi_wvalid(3) => tier2_xbar_1_to_m11_couplers_WVALID(3),
      m_axi_wvalid(2) => tier2_xbar_1_to_m10_couplers_WVALID(2),
      m_axi_wvalid(1) => tier2_xbar_1_to_m09_couplers_WVALID(1),
      m_axi_wvalid(0) => tier2_xbar_1_to_m08_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => i01_couplers_to_tier2_xbar_1_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => i01_couplers_to_tier2_xbar_1_ARPROT(2 downto 0),
      s_axi_arready(0) => i01_couplers_to_tier2_xbar_1_ARREADY(0),
      s_axi_arvalid(0) => i01_couplers_to_tier2_xbar_1_ARVALID(0),
      s_axi_awaddr(31 downto 0) => i01_couplers_to_tier2_xbar_1_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => i01_couplers_to_tier2_xbar_1_AWPROT(2 downto 0),
      s_axi_awready(0) => i01_couplers_to_tier2_xbar_1_AWREADY(0),
      s_axi_awvalid(0) => i01_couplers_to_tier2_xbar_1_AWVALID(0),
      s_axi_bready(0) => i01_couplers_to_tier2_xbar_1_BREADY(0),
      s_axi_bresp(1 downto 0) => i01_couplers_to_tier2_xbar_1_BRESP(1 downto 0),
      s_axi_bvalid(0) => i01_couplers_to_tier2_xbar_1_BVALID(0),
      s_axi_rdata(31 downto 0) => i01_couplers_to_tier2_xbar_1_RDATA(31 downto 0),
      s_axi_rready(0) => i01_couplers_to_tier2_xbar_1_RREADY(0),
      s_axi_rresp(1 downto 0) => i01_couplers_to_tier2_xbar_1_RRESP(1 downto 0),
      s_axi_rvalid(0) => i01_couplers_to_tier2_xbar_1_RVALID(0),
      s_axi_wdata(31 downto 0) => i01_couplers_to_tier2_xbar_1_WDATA(31 downto 0),
      s_axi_wready(0) => i01_couplers_to_tier2_xbar_1_WREADY(0),
      s_axi_wstrb(3 downto 0) => i01_couplers_to_tier2_xbar_1_WSTRB(3 downto 0),
      s_axi_wvalid(0) => i01_couplers_to_tier2_xbar_1_WVALID(0)
    );
tier2_xbar_2: component mb_subsystem_tier2_xbar_2_0
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(95 downto 64) => tier2_xbar_2_to_m18_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => tier2_xbar_2_to_m17_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => tier2_xbar_2_to_m16_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 0) => NLW_tier2_xbar_2_m_axi_arprot_UNCONNECTED(8 downto 0),
      m_axi_arready(2) => tier2_xbar_2_to_m18_couplers_ARREADY(0),
      m_axi_arready(1) => tier2_xbar_2_to_m17_couplers_ARREADY(0),
      m_axi_arready(0) => tier2_xbar_2_to_m16_couplers_ARREADY,
      m_axi_arvalid(2) => tier2_xbar_2_to_m18_couplers_ARVALID(2),
      m_axi_arvalid(1) => tier2_xbar_2_to_m17_couplers_ARVALID(1),
      m_axi_arvalid(0) => tier2_xbar_2_to_m16_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => tier2_xbar_2_to_m18_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => tier2_xbar_2_to_m17_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => tier2_xbar_2_to_m16_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 0) => NLW_tier2_xbar_2_m_axi_awprot_UNCONNECTED(8 downto 0),
      m_axi_awready(2) => tier2_xbar_2_to_m18_couplers_AWREADY(0),
      m_axi_awready(1) => tier2_xbar_2_to_m17_couplers_AWREADY(0),
      m_axi_awready(0) => tier2_xbar_2_to_m16_couplers_AWREADY,
      m_axi_awvalid(2) => tier2_xbar_2_to_m18_couplers_AWVALID(2),
      m_axi_awvalid(1) => tier2_xbar_2_to_m17_couplers_AWVALID(1),
      m_axi_awvalid(0) => tier2_xbar_2_to_m16_couplers_AWVALID(0),
      m_axi_bready(2) => tier2_xbar_2_to_m18_couplers_BREADY(2),
      m_axi_bready(1) => tier2_xbar_2_to_m17_couplers_BREADY(1),
      m_axi_bready(0) => tier2_xbar_2_to_m16_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => tier2_xbar_2_to_m18_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => tier2_xbar_2_to_m17_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => tier2_xbar_2_to_m16_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => tier2_xbar_2_to_m18_couplers_BVALID(0),
      m_axi_bvalid(1) => tier2_xbar_2_to_m17_couplers_BVALID(0),
      m_axi_bvalid(0) => tier2_xbar_2_to_m16_couplers_BVALID,
      m_axi_rdata(95 downto 64) => tier2_xbar_2_to_m18_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => tier2_xbar_2_to_m17_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => tier2_xbar_2_to_m16_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => tier2_xbar_2_to_m18_couplers_RREADY(2),
      m_axi_rready(1) => tier2_xbar_2_to_m17_couplers_RREADY(1),
      m_axi_rready(0) => tier2_xbar_2_to_m16_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => tier2_xbar_2_to_m18_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => tier2_xbar_2_to_m17_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => tier2_xbar_2_to_m16_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => tier2_xbar_2_to_m18_couplers_RVALID(0),
      m_axi_rvalid(1) => tier2_xbar_2_to_m17_couplers_RVALID(0),
      m_axi_rvalid(0) => tier2_xbar_2_to_m16_couplers_RVALID,
      m_axi_wdata(95 downto 64) => tier2_xbar_2_to_m18_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => tier2_xbar_2_to_m17_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => tier2_xbar_2_to_m16_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => tier2_xbar_2_to_m18_couplers_WREADY(0),
      m_axi_wready(1) => tier2_xbar_2_to_m17_couplers_WREADY(0),
      m_axi_wready(0) => tier2_xbar_2_to_m16_couplers_WREADY,
      m_axi_wstrb(11 downto 8) => tier2_xbar_2_to_m18_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => tier2_xbar_2_to_m17_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => tier2_xbar_2_to_m16_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => tier2_xbar_2_to_m18_couplers_WVALID(2),
      m_axi_wvalid(1) => tier2_xbar_2_to_m17_couplers_WVALID(1),
      m_axi_wvalid(0) => tier2_xbar_2_to_m16_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => i02_couplers_to_tier2_xbar_2_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => i02_couplers_to_tier2_xbar_2_ARPROT(2 downto 0),
      s_axi_arready(0) => i02_couplers_to_tier2_xbar_2_ARREADY(0),
      s_axi_arvalid(0) => i02_couplers_to_tier2_xbar_2_ARVALID(0),
      s_axi_awaddr(31 downto 0) => i02_couplers_to_tier2_xbar_2_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => i02_couplers_to_tier2_xbar_2_AWPROT(2 downto 0),
      s_axi_awready(0) => i02_couplers_to_tier2_xbar_2_AWREADY(0),
      s_axi_awvalid(0) => i02_couplers_to_tier2_xbar_2_AWVALID(0),
      s_axi_bready(0) => i02_couplers_to_tier2_xbar_2_BREADY(0),
      s_axi_bresp(1 downto 0) => i02_couplers_to_tier2_xbar_2_BRESP(1 downto 0),
      s_axi_bvalid(0) => i02_couplers_to_tier2_xbar_2_BVALID(0),
      s_axi_rdata(31 downto 0) => i02_couplers_to_tier2_xbar_2_RDATA(31 downto 0),
      s_axi_rready(0) => i02_couplers_to_tier2_xbar_2_RREADY(0),
      s_axi_rresp(1 downto 0) => i02_couplers_to_tier2_xbar_2_RRESP(1 downto 0),
      s_axi_rvalid(0) => i02_couplers_to_tier2_xbar_2_RVALID(0),
      s_axi_wdata(31 downto 0) => i02_couplers_to_tier2_xbar_2_WDATA(31 downto 0),
      s_axi_wready(0) => i02_couplers_to_tier2_xbar_2_WREADY(0),
      s_axi_wstrb(3 downto 0) => i02_couplers_to_tier2_xbar_2_WSTRB(3 downto 0),
      s_axi_wvalid(0) => i02_couplers_to_tier2_xbar_2_WVALID(0)
    );
xbar: component mb_subsystem_xbar_0
     port map (
      aclk => microblaze_0_axi_periph_ACLK_net,
      aresetn => microblaze_0_axi_periph_ARESETN_net,
      m_axi_araddr(95 downto 64) => xbar_to_i02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_i01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_i00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(8 downto 6) => xbar_to_i02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_i01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_i00_couplers_ARPROT(2 downto 0),
      m_axi_arready(2) => xbar_to_i02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_i01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_i00_couplers_ARREADY(0),
      m_axi_arvalid(2) => xbar_to_i02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_i01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_i00_couplers_ARVALID(0),
      m_axi_awaddr(95 downto 64) => xbar_to_i02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_i01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_i00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(8 downto 6) => xbar_to_i02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_i01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_i00_couplers_AWPROT(2 downto 0),
      m_axi_awready(2) => xbar_to_i02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_i01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_i00_couplers_AWREADY(0),
      m_axi_awvalid(2) => xbar_to_i02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_i01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_i00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_i02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_i01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_i00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_i02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_i01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_i00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_i02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_i01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_i00_couplers_BVALID(0),
      m_axi_rdata(95 downto 64) => xbar_to_i02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_i01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_i00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_i02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_i01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_i00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_i02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_i01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_i00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_i02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_i01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_i00_couplers_RVALID(0),
      m_axi_wdata(95 downto 64) => xbar_to_i02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_i01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_i00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_i02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_i01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_i00_couplers_WREADY(0),
      m_axi_wstrb(11 downto 8) => xbar_to_i02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_i01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_i00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(2) => xbar_to_i02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_i01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_i00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID(0),
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY(0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem is
  port (
    Clk : in STD_LOGIC;
    avmm_m0_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avmm_m0_read : out STD_LOGIC;
    avmm_m0_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avmm_m0_readdatavalid : in STD_LOGIC;
    avmm_m0_waitrequest : in STD_LOGIC;
    avmm_m0_write : out STD_LOGIC;
    avmm_m0_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    extm_0_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    extm_0_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    extm_0_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    extm_0_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_sel_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    extm_0_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    extm_0_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_axi_resetn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_read_0_almost_empty : in STD_LOGIC;
    fifo_read_0_empty : in STD_LOGIC;
    fifo_read_0_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read_0_rd_en : out STD_LOGIC;
    fifo_write_0_aclr : out STD_LOGIC;
    fifo_write_0_almost_full : in STD_LOGIC;
    fifo_write_0_full : in STD_LOGIC;
    fifo_write_0_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_0_wr_en : out STD_LOGIC;
    gpio_0_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iic_0_scl_i : in STD_LOGIC;
    iic_0_scl_o : out STD_LOGIC;
    iic_0_scl_t : out STD_LOGIC;
    iic_0_sda_i : in STD_LOGIC;
    iic_0_sda_o : out STD_LOGIC;
    iic_0_sda_t : out STD_LOGIC;
    pll_c0 : out STD_LOGIC;
    pll_c1 : out STD_LOGIC;
    pll_locked : out STD_LOGIC;
    pll_rst_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pllcfg_cmd_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pllcfg_stat_tri_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset_n : in STD_LOGIC;
    smpl_cmp_en_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    smpl_cmp_sel_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    smpl_cmp_status_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_0_io0_i : in STD_LOGIC;
    spi_0_io0_o : out STD_LOGIC;
    spi_0_io0_t : out STD_LOGIC;
    spi_0_io1_i : in STD_LOGIC;
    spi_0_io1_o : out STD_LOGIC;
    spi_0_io1_t : out STD_LOGIC;
    spi_0_sck_i : in STD_LOGIC;
    spi_0_sck_o : out STD_LOGIC;
    spi_0_sck_t : out STD_LOGIC;
    spi_0_ss_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_0_ss_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_0_ss_t : out STD_LOGIC;
    spi_1_io0_i : in STD_LOGIC;
    spi_1_io0_o : out STD_LOGIC;
    spi_1_io0_t : out STD_LOGIC;
    spi_1_io1_i : in STD_LOGIC;
    spi_1_io1_o : out STD_LOGIC;
    spi_1_io1_t : out STD_LOGIC;
    spi_1_sck_i : in STD_LOGIC;
    spi_1_sck_o : out STD_LOGIC;
    spi_1_sck_t : out STD_LOGIC;
    spi_1_ss_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_1_ss_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_1_ss_t : out STD_LOGIC;
    spi_2_io0_i : in STD_LOGIC;
    spi_2_io0_o : out STD_LOGIC;
    spi_2_io0_t : out STD_LOGIC;
    spi_2_io1_i : in STD_LOGIC;
    spi_2_io1_o : out STD_LOGIC;
    spi_2_io1_t : out STD_LOGIC;
    spi_2_sck_i : in STD_LOGIC;
    spi_2_sck_o : out STD_LOGIC;
    spi_2_sck_t : out STD_LOGIC;
    spi_2_ss_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_2_ss_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_2_ss_t : out STD_LOGIC;
    uart_0_rxd : in STD_LOGIC;
    uart_0_txd : out STD_LOGIC;
    vctcxo_tamer_0_ctrl_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute core_generation_info : string;
  attribute core_generation_info of mb_subsystem : entity is "mb_subsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mb_subsystem,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=56,numReposBlks=31,numNonXlnxBlks=0,numHierBlks=25,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=20,da_board_cnt=21,da_clkrst_cnt=3,da_mb_cnt=8,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of mb_subsystem : entity is "mb_subsystem.hwdef";
end mb_subsystem;

architecture STRUCTURE of mb_subsystem is
  component mb_subsystem_AXI_to_native_FIFO_0_0 is
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
  end component mb_subsystem_AXI_to_native_FIFO_0_0;
  component mb_subsystem_axi_amm_bridge_0_0 is
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
  end component mb_subsystem_axi_amm_bridge_0_0;
  component mb_subsystem_axi_gpio_0_4 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component mb_subsystem_axi_gpio_0_4;
  component mb_subsystem_axi_gpio_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component mb_subsystem_axi_gpio_1_0;
  component mb_subsystem_axi_gpio_1_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component mb_subsystem_axi_gpio_1_1;
  component mb_subsystem_axi_gpio_1_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component mb_subsystem_axi_gpio_1_2;
  component mb_subsystem_axi_gpio_1_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component mb_subsystem_axi_gpio_1_3;
  component mb_subsystem_axi_gpio_1_4 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component mb_subsystem_axi_gpio_1_4;
  component mb_subsystem_axi_gpio_1_5 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component mb_subsystem_axi_gpio_1_5;
  component mb_subsystem_axi_gpio_2_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mb_subsystem_axi_gpio_2_0;
  component mb_subsystem_axi_iic_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mb_subsystem_axi_iic_0_1;
  component mb_subsystem_axi_quad_spi_0_1 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ss_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component mb_subsystem_axi_quad_spi_0_1;
  component mb_subsystem_axi_quad_spi_1_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component mb_subsystem_axi_quad_spi_1_0;
  component mb_subsystem_axi_quad_spi_2_0 is
  port (
    ext_spi_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    io0_i : in STD_LOGIC;
    io0_o : out STD_LOGIC;
    io0_t : out STD_LOGIC;
    io1_i : in STD_LOGIC;
    io1_o : out STD_LOGIC;
    io1_t : out STD_LOGIC;
    sck_i : in STD_LOGIC;
    sck_o : out STD_LOGIC;
    sck_t : out STD_LOGIC;
    ss_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ss_t : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component mb_subsystem_axi_quad_spi_2_0;
  component mb_subsystem_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component mb_subsystem_axi_uartlite_0_0;
  component mb_subsystem_clk_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component mb_subsystem_clk_wiz_0_0;
  component mb_subsystem_mdm_1_6 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component mb_subsystem_mdm_1_6;
  component mb_subsystem_microblaze_0_7 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component mb_subsystem_microblaze_0_7;
  component mb_subsystem_microblaze_0_axi_intc_3 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mb_subsystem_microblaze_0_axi_intc_3;
  component mb_subsystem_microblaze_0_xlconcat_3 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component mb_subsystem_microblaze_0_xlconcat_3;
  component mb_subsystem_rst_Clk_100M_4 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mb_subsystem_rst_Clk_100M_4;
  component mb_subsystem_smpl_cmp_stat_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component mb_subsystem_smpl_cmp_stat_0;
  signal AXI_to_native_FIFO_0_M00_NATIVE_READ_ALMOST_EMPTY : STD_LOGIC;
  signal AXI_to_native_FIFO_0_M00_NATIVE_READ_EMPTY : STD_LOGIC;
  signal AXI_to_native_FIFO_0_M00_NATIVE_READ_RD_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI_to_native_FIFO_0_M00_NATIVE_READ_RD_EN : STD_LOGIC;
  signal AXI_to_native_FIFO_0_M00_NATIVE_WRITE_ALMOST_FULL : STD_LOGIC;
  signal AXI_to_native_FIFO_0_M00_NATIVE_WRITE_FULL : STD_LOGIC;
  signal AXI_to_native_FIFO_0_M00_NATIVE_WRITE_WR_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI_to_native_FIFO_0_M00_NATIVE_WRITE_WR_EN : STD_LOGIC;
  signal AXI_to_native_FIFO_0_M_NATIVE_WRITE_ACLR : STD_LOGIC;
  signal PLLCFG_Command_GPIO_TRI_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PLLCFG_Status_GPIO_TRI_O : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal PLL_RST_GPIO_TRI_O : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_amm_bridge_0_M_AVALON_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_amm_bridge_0_M_AVALON_READ : STD_LOGIC;
  signal axi_amm_bridge_0_M_AVALON_READDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_amm_bridge_0_M_AVALON_READDATAVALID : STD_LOGIC;
  signal axi_amm_bridge_0_M_AVALON_WAITREQUEST : STD_LOGIC;
  signal axi_amm_bridge_0_M_AVALON_WRITE : STD_LOGIC;
  signal axi_amm_bridge_0_M_AVALON_WRITEDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_gpio_0_GPIO2_TRI_O : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_gpio_0_GPIO_TRI_I : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_gpio_1_GPIO_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_iic_0_IIC_SCL_I : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_O : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_T : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_I : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_O : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_T : STD_LOGIC;
  signal axi_iic_0_iic2intc_irpt : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_I : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_O : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SCK_T : STD_LOGIC;
  signal axi_quad_spi_0_SPI_0_SS_I : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_quad_spi_0_SPI_0_SS_O : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_quad_spi_0_SPI_0_SS_T : STD_LOGIC;
  signal axi_quad_spi_0_ip2intc_irpt : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_SCK_I : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_SCK_O : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_SCK_T : STD_LOGIC;
  signal axi_quad_spi_1_SPI_0_SS_I : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_quad_spi_1_SPI_0_SS_O : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_quad_spi_1_SPI_0_SS_T : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_IO0_I : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_IO0_O : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_IO0_T : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_IO1_I : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_IO1_O : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_IO1_T : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_SCK_I : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_SCK_O : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_SCK_T : STD_LOGIC;
  signal axi_quad_spi_2_SPI_0_SS_I : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_quad_spi_2_SPI_0_SS_O : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_quad_spi_2_SPI_0_SS_T : STD_LOGIC;
  signal axi_uartlite_0_UART_RxD : STD_LOGIC;
  signal axi_uartlite_0_UART_TxD : STD_LOGIC;
  signal axi_uartlite_0_interrupt : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal mdm_1_debug_sys_rst : STD_LOGIC;
  signal microblaze_0_Clk : STD_LOGIC;
  signal microblaze_0_axi_dp_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_dp_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_dp_BREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_RREADY : STD_LOGIC;
  signal microblaze_0_axi_dp_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_dp_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_dp_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_dp_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_dp_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M05_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M06_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M07_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M07_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M07_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M08_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M08_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M08_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M09_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M09_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M09_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M10_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M10_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M10_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M11_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M11_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M11_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M12_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M12_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M13_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M13_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M13_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M14_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M14_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M14_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M14_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M14_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M14_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M14_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M15_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M15_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M15_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M15_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M15_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M15_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M15_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M16_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_ARVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_AWVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_BREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_RREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M16_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M16_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M17_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M17_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M17_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M17_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M17_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M17_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M17_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M17_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M17_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M17_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M17_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M17_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M17_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M17_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M17_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M17_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M17_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M18_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M18_AXI_ARREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M18_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M18_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M18_AXI_AWREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M18_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M18_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M18_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M18_AXI_BVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M18_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M18_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_axi_periph_M18_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_axi_periph_M18_AXI_RVALID : STD_LOGIC;
  signal microblaze_0_axi_periph_M18_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_axi_periph_M18_AXI_WREADY : STD_LOGIC;
  signal microblaze_0_axi_periph_M18_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_axi_periph_M18_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_debug_CAPTURE : STD_LOGIC;
  signal microblaze_0_debug_CLK : STD_LOGIC;
  signal microblaze_0_debug_DISABLE : STD_LOGIC;
  signal microblaze_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_0_debug_RST : STD_LOGIC;
  signal microblaze_0_debug_SHIFT : STD_LOGIC;
  signal microblaze_0_debug_TDI : STD_LOGIC;
  signal microblaze_0_debug_TDO : STD_LOGIC;
  signal microblaze_0_debug_UPDATE : STD_LOGIC;
  signal microblaze_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_dlmb_1_CE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_dlmb_1_READY : STD_LOGIC;
  signal microblaze_0_dlmb_1_UE : STD_LOGIC;
  signal microblaze_0_dlmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_CE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_0_ilmb_1_READY : STD_LOGIC;
  signal microblaze_0_ilmb_1_UE : STD_LOGIC;
  signal microblaze_0_ilmb_1_WAIT : STD_LOGIC;
  signal microblaze_0_intc_axi_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_ARREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_AWREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_BVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_intc_axi_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_intc_axi_RVALID : STD_LOGIC;
  signal microblaze_0_intc_axi_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_intc_axi_WREADY : STD_LOGIC;
  signal microblaze_0_intc_axi_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_intc_axi_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal microblaze_0_interrupt_ACK : STD_LOGIC_VECTOR ( 0 to 1 );
  signal microblaze_0_interrupt_ADDRESS : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_interrupt_INTERRUPT : STD_LOGIC;
  signal microblaze_0_intr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reset_rtl_0_1 : STD_LOGIC;
  signal rst_Clk_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_Clk_100M_mb_reset : STD_LOGIC;
  signal rst_Clk_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smpl_cmp_cmd_GPIO_TRI_O : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smpl_cmp_sel_GPIO_TRI_O : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smpl_cmp_stat_GPIO_TRI_I : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal vctcxo_tamer_ctrl_GPIO_TRI_I : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_iic_0_gpo_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_quad_spi_1_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_quad_spi_2_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_Clk_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_Clk_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
  attribute bmm_info_processor : string;
  attribute bmm_info_processor of microblaze_0 : label is "microblaze-le > mb_subsystem microblaze_0_local_memory/dlmb_bram_if_cntlr";
  attribute x_interface_info : string;
  attribute x_interface_info of Clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF extm_0_axi, CLK_DOMAIN mb_subsystem_Clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of avmm_m0_read : signal is "xilinx.com:interface:avalon:1.0 avmm_m0 READ";
  attribute x_interface_info of avmm_m0_readdatavalid : signal is "xilinx.com:interface:avalon:1.0 avmm_m0 READDATAVALID";
  attribute x_interface_info of avmm_m0_waitrequest : signal is "xilinx.com:interface:avalon:1.0 avmm_m0 WAITREQUEST";
  attribute x_interface_info of avmm_m0_write : signal is "xilinx.com:interface:avalon:1.0 avmm_m0 WRITE";
  attribute x_interface_info of fifo_read_0_almost_empty : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read_0 ALMOST_EMPTY";
  attribute x_interface_info of fifo_read_0_empty : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read_0 EMPTY";
  attribute x_interface_info of fifo_read_0_rd_en : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read_0 RD_EN";
  attribute x_interface_info of fifo_write_0_aclr : signal is "xilinx.com:signal:reset:1.0 RST.FIFO_WRITE_0_ACLR RST";
  attribute x_interface_parameter of fifo_write_0_aclr : signal is "XIL_INTERFACENAME RST.FIFO_WRITE_0_ACLR, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of fifo_write_0_almost_full : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write_0 ALMOST_FULL";
  attribute x_interface_info of fifo_write_0_full : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write_0 FULL";
  attribute x_interface_info of fifo_write_0_wr_en : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write_0 WR_EN";
  attribute x_interface_info of iic_0_scl_i : signal is "xilinx.com:interface:iic:1.0 iic_0 SCL_I";
  attribute x_interface_info of iic_0_scl_o : signal is "xilinx.com:interface:iic:1.0 iic_0 SCL_O";
  attribute x_interface_info of iic_0_scl_t : signal is "xilinx.com:interface:iic:1.0 iic_0 SCL_T";
  attribute x_interface_info of iic_0_sda_i : signal is "xilinx.com:interface:iic:1.0 iic_0 SDA_I";
  attribute x_interface_info of iic_0_sda_o : signal is "xilinx.com:interface:iic:1.0 iic_0 SDA_O";
  attribute x_interface_info of iic_0_sda_t : signal is "xilinx.com:interface:iic:1.0 iic_0 SDA_T";
  attribute x_interface_info of pll_c0 : signal is "xilinx.com:signal:clock:1.0 CLK.PLL_C0 CLK";
  attribute x_interface_parameter of pll_c0 : signal is "XIL_INTERFACENAME CLK.PLL_C0, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of pll_c1 : signal is "xilinx.com:signal:clock:1.0 CLK.PLL_C1 CLK";
  attribute x_interface_parameter of pll_c1 : signal is "XIL_INTERFACENAME CLK.PLL_C1, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 RST.RESET_N RST";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME RST.RESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of spi_0_io0_i : signal is "xilinx.com:interface:spi:1.0 spi_0 IO0_I";
  attribute x_interface_info of spi_0_io0_o : signal is "xilinx.com:interface:spi:1.0 spi_0 IO0_O";
  attribute x_interface_info of spi_0_io0_t : signal is "xilinx.com:interface:spi:1.0 spi_0 IO0_T";
  attribute x_interface_info of spi_0_io1_i : signal is "xilinx.com:interface:spi:1.0 spi_0 IO1_I";
  attribute x_interface_info of spi_0_io1_o : signal is "xilinx.com:interface:spi:1.0 spi_0 IO1_O";
  attribute x_interface_info of spi_0_io1_t : signal is "xilinx.com:interface:spi:1.0 spi_0 IO1_T";
  attribute x_interface_info of spi_0_sck_i : signal is "xilinx.com:interface:spi:1.0 spi_0 SCK_I";
  attribute x_interface_info of spi_0_sck_o : signal is "xilinx.com:interface:spi:1.0 spi_0 SCK_O";
  attribute x_interface_info of spi_0_sck_t : signal is "xilinx.com:interface:spi:1.0 spi_0 SCK_T";
  attribute x_interface_info of spi_0_ss_t : signal is "xilinx.com:interface:spi:1.0 spi_0 SS_T";
  attribute x_interface_info of spi_1_io0_i : signal is "xilinx.com:interface:spi:1.0 spi_1 IO0_I";
  attribute x_interface_info of spi_1_io0_o : signal is "xilinx.com:interface:spi:1.0 spi_1 IO0_O";
  attribute x_interface_info of spi_1_io0_t : signal is "xilinx.com:interface:spi:1.0 spi_1 IO0_T";
  attribute x_interface_info of spi_1_io1_i : signal is "xilinx.com:interface:spi:1.0 spi_1 IO1_I";
  attribute x_interface_info of spi_1_io1_o : signal is "xilinx.com:interface:spi:1.0 spi_1 IO1_O";
  attribute x_interface_info of spi_1_io1_t : signal is "xilinx.com:interface:spi:1.0 spi_1 IO1_T";
  attribute x_interface_info of spi_1_sck_i : signal is "xilinx.com:interface:spi:1.0 spi_1 SCK_I";
  attribute x_interface_info of spi_1_sck_o : signal is "xilinx.com:interface:spi:1.0 spi_1 SCK_O";
  attribute x_interface_info of spi_1_sck_t : signal is "xilinx.com:interface:spi:1.0 spi_1 SCK_T";
  attribute x_interface_info of spi_1_ss_t : signal is "xilinx.com:interface:spi:1.0 spi_1 SS_T";
  attribute x_interface_info of spi_2_io0_i : signal is "xilinx.com:interface:spi:1.0 spi_2 IO0_I";
  attribute x_interface_info of spi_2_io0_o : signal is "xilinx.com:interface:spi:1.0 spi_2 IO0_O";
  attribute x_interface_info of spi_2_io0_t : signal is "xilinx.com:interface:spi:1.0 spi_2 IO0_T";
  attribute x_interface_info of spi_2_io1_i : signal is "xilinx.com:interface:spi:1.0 spi_2 IO1_I";
  attribute x_interface_info of spi_2_io1_o : signal is "xilinx.com:interface:spi:1.0 spi_2 IO1_O";
  attribute x_interface_info of spi_2_io1_t : signal is "xilinx.com:interface:spi:1.0 spi_2 IO1_T";
  attribute x_interface_info of spi_2_sck_i : signal is "xilinx.com:interface:spi:1.0 spi_2 SCK_I";
  attribute x_interface_info of spi_2_sck_o : signal is "xilinx.com:interface:spi:1.0 spi_2 SCK_O";
  attribute x_interface_info of spi_2_sck_t : signal is "xilinx.com:interface:spi:1.0 spi_2 SCK_T";
  attribute x_interface_info of spi_2_ss_t : signal is "xilinx.com:interface:spi:1.0 spi_2 SS_T";
  attribute x_interface_info of uart_0_rxd : signal is "xilinx.com:interface:uart:1.0 uart_0 RxD";
  attribute x_interface_info of uart_0_txd : signal is "xilinx.com:interface:uart:1.0 uart_0 TxD";
  attribute x_interface_info of avmm_m0_address : signal is "xilinx.com:interface:avalon:1.0 avmm_m0 ADDRESS";
  attribute x_interface_info of avmm_m0_readdata : signal is "xilinx.com:interface:avalon:1.0 avmm_m0 READDATA";
  attribute x_interface_info of avmm_m0_writedata : signal is "xilinx.com:interface:avalon:1.0 avmm_m0 WRITEDATA";
  attribute x_interface_info of extm_0_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi ARADDR";
  attribute x_interface_parameter of extm_0_axi_araddr : signal is "XIL_INTERFACENAME extm_0_axi, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN mb_subsystem_Clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute x_interface_info of extm_0_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi ARPROT";
  attribute x_interface_info of extm_0_axi_arready : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi ARREADY";
  attribute x_interface_info of extm_0_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi ARVALID";
  attribute x_interface_info of extm_0_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi AWADDR";
  attribute x_interface_info of extm_0_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi AWPROT";
  attribute x_interface_info of extm_0_axi_awready : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi AWREADY";
  attribute x_interface_info of extm_0_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi AWVALID";
  attribute x_interface_info of extm_0_axi_bready : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi BREADY";
  attribute x_interface_info of extm_0_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi BRESP";
  attribute x_interface_info of extm_0_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi BVALID";
  attribute x_interface_info of extm_0_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi RDATA";
  attribute x_interface_info of extm_0_axi_rready : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi RREADY";
  attribute x_interface_info of extm_0_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi RRESP";
  attribute x_interface_info of extm_0_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi RVALID";
  attribute x_interface_info of extm_0_axi_sel_tri_o : signal is "xilinx.com:interface:gpio:1.0 extm_0_axi_sel TRI_O";
  attribute x_interface_info of extm_0_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi WDATA";
  attribute x_interface_info of extm_0_axi_wready : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi WREADY";
  attribute x_interface_info of extm_0_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi WSTRB";
  attribute x_interface_info of extm_0_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 extm_0_axi WVALID";
  attribute x_interface_info of extm_axi_resetn_out : signal is "xilinx.com:signal:reset:1.0 RST.EXTM_AXI_RESETN_OUT RST";
  attribute x_interface_parameter of extm_axi_resetn_out : signal is "XIL_INTERFACENAME RST.EXTM_AXI_RESETN_OUT, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of fifo_read_0_rd_data : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read_0 RD_DATA";
  attribute x_interface_info of fifo_write_0_wr_data : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write_0 WR_DATA";
  attribute x_interface_info of gpio_0_tri_i : signal is "xilinx.com:interface:gpio:1.0 gpio_0 TRI_I";
  attribute x_interface_info of gpio_1_tri_o : signal is "xilinx.com:interface:gpio:1.0 gpio_1 TRI_O";
  attribute x_interface_info of pll_rst_tri_o : signal is "xilinx.com:interface:gpio:1.0 pll_rst TRI_O";
  attribute x_interface_info of pllcfg_cmd_tri_i : signal is "xilinx.com:interface:gpio:1.0 pllcfg_cmd TRI_I";
  attribute x_interface_info of pllcfg_stat_tri_o : signal is "xilinx.com:interface:gpio:1.0 pllcfg_stat TRI_O";
  attribute x_interface_info of smpl_cmp_en_tri_o : signal is "xilinx.com:interface:gpio:1.0 smpl_cmp_en TRI_O";
  attribute x_interface_info of smpl_cmp_sel_tri_o : signal is "xilinx.com:interface:gpio:1.0 smpl_cmp_sel TRI_O";
  attribute x_interface_info of smpl_cmp_status_tri_i : signal is "xilinx.com:interface:gpio:1.0 smpl_cmp_status TRI_I";
  attribute x_interface_info of spi_0_ss_i : signal is "xilinx.com:interface:spi:1.0 spi_0 SS_I";
  attribute x_interface_info of spi_0_ss_o : signal is "xilinx.com:interface:spi:1.0 spi_0 SS_O";
  attribute x_interface_info of spi_1_ss_i : signal is "xilinx.com:interface:spi:1.0 spi_1 SS_I";
  attribute x_interface_info of spi_1_ss_o : signal is "xilinx.com:interface:spi:1.0 spi_1 SS_O";
  attribute x_interface_info of spi_2_ss_i : signal is "xilinx.com:interface:spi:1.0 spi_2 SS_I";
  attribute x_interface_info of spi_2_ss_o : signal is "xilinx.com:interface:spi:1.0 spi_2 SS_O";
  attribute x_interface_info of vctcxo_tamer_0_ctrl_tri_i : signal is "xilinx.com:interface:gpio:1.0 vctcxo_tamer_0_ctrl TRI_I";
begin
  AXI_to_native_FIFO_0_M00_NATIVE_READ_ALMOST_EMPTY <= fifo_read_0_almost_empty;
  AXI_to_native_FIFO_0_M00_NATIVE_READ_EMPTY <= fifo_read_0_empty;
  AXI_to_native_FIFO_0_M00_NATIVE_READ_RD_DATA(31 downto 0) <= fifo_read_0_rd_data(31 downto 0);
  AXI_to_native_FIFO_0_M00_NATIVE_WRITE_ALMOST_FULL <= fifo_write_0_almost_full;
  AXI_to_native_FIFO_0_M00_NATIVE_WRITE_FULL <= fifo_write_0_full;
  PLLCFG_Command_GPIO_TRI_I(3 downto 0) <= pllcfg_cmd_tri_i(3 downto 0);
  avmm_m0_address(31 downto 0) <= axi_amm_bridge_0_M_AVALON_ADDRESS(31 downto 0);
  avmm_m0_read <= axi_amm_bridge_0_M_AVALON_READ;
  avmm_m0_write <= axi_amm_bridge_0_M_AVALON_WRITE;
  avmm_m0_writedata(31 downto 0) <= axi_amm_bridge_0_M_AVALON_WRITEDATA(31 downto 0);
  axi_amm_bridge_0_M_AVALON_READDATA(31 downto 0) <= avmm_m0_readdata(31 downto 0);
  axi_amm_bridge_0_M_AVALON_READDATAVALID <= avmm_m0_readdatavalid;
  axi_amm_bridge_0_M_AVALON_WAITREQUEST <= avmm_m0_waitrequest;
  axi_gpio_0_GPIO_TRI_I(7 downto 0) <= gpio_0_tri_i(7 downto 0);
  axi_iic_0_IIC_SCL_I <= iic_0_scl_i;
  axi_iic_0_IIC_SDA_I <= iic_0_sda_i;
  axi_quad_spi_0_SPI_0_IO0_I <= spi_0_io0_i;
  axi_quad_spi_0_SPI_0_IO1_I <= spi_0_io1_i;
  axi_quad_spi_0_SPI_0_SCK_I <= spi_0_sck_i;
  axi_quad_spi_0_SPI_0_SS_I(8 downto 0) <= spi_0_ss_i(8 downto 0);
  axi_quad_spi_1_SPI_0_IO0_I <= spi_1_io0_i;
  axi_quad_spi_1_SPI_0_IO1_I <= spi_1_io1_i;
  axi_quad_spi_1_SPI_0_SCK_I <= spi_1_sck_i;
  axi_quad_spi_1_SPI_0_SS_I(1 downto 0) <= spi_1_ss_i(1 downto 0);
  axi_quad_spi_2_SPI_0_IO0_I <= spi_2_io0_i;
  axi_quad_spi_2_SPI_0_IO1_I <= spi_2_io1_i;
  axi_quad_spi_2_SPI_0_SCK_I <= spi_2_sck_i;
  axi_quad_spi_2_SPI_0_SS_I(1 downto 0) <= spi_2_ss_i(1 downto 0);
  axi_uartlite_0_UART_RxD <= uart_0_rxd;
  extm_0_axi_araddr(31 downto 0) <= microblaze_0_axi_periph_M12_AXI_ARADDR(31 downto 0);
  extm_0_axi_arprot(2 downto 0) <= microblaze_0_axi_periph_M12_AXI_ARPROT(2 downto 0);
  extm_0_axi_arvalid(0) <= microblaze_0_axi_periph_M12_AXI_ARVALID(0);
  extm_0_axi_awaddr(31 downto 0) <= microblaze_0_axi_periph_M12_AXI_AWADDR(31 downto 0);
  extm_0_axi_awprot(2 downto 0) <= microblaze_0_axi_periph_M12_AXI_AWPROT(2 downto 0);
  extm_0_axi_awvalid(0) <= microblaze_0_axi_periph_M12_AXI_AWVALID(0);
  extm_0_axi_bready(0) <= microblaze_0_axi_periph_M12_AXI_BREADY(0);
  extm_0_axi_rready(0) <= microblaze_0_axi_periph_M12_AXI_RREADY(0);
  extm_0_axi_sel_tri_o(3 downto 0) <= axi_gpio_1_GPIO_TRI_O(3 downto 0);
  extm_0_axi_wdata(31 downto 0) <= microblaze_0_axi_periph_M12_AXI_WDATA(31 downto 0);
  extm_0_axi_wstrb(3 downto 0) <= microblaze_0_axi_periph_M12_AXI_WSTRB(3 downto 0);
  extm_0_axi_wvalid(0) <= microblaze_0_axi_periph_M12_AXI_WVALID(0);
  extm_axi_resetn_out(0) <= rst_Clk_100M_peripheral_aresetn(0);
  fifo_read_0_rd_en <= AXI_to_native_FIFO_0_M00_NATIVE_READ_RD_EN;
  fifo_write_0_aclr <= AXI_to_native_FIFO_0_M_NATIVE_WRITE_ACLR;
  fifo_write_0_wr_data(31 downto 0) <= AXI_to_native_FIFO_0_M00_NATIVE_WRITE_WR_DATA(31 downto 0);
  fifo_write_0_wr_en <= AXI_to_native_FIFO_0_M00_NATIVE_WRITE_WR_EN;
  gpio_1_tri_o(7 downto 0) <= axi_gpio_0_GPIO2_TRI_O(7 downto 0);
  iic_0_scl_o <= axi_iic_0_IIC_SCL_O;
  iic_0_scl_t <= axi_iic_0_IIC_SCL_T;
  iic_0_sda_o <= axi_iic_0_IIC_SDA_O;
  iic_0_sda_t <= axi_iic_0_IIC_SDA_T;
  microblaze_0_Clk <= Clk;
  microblaze_0_axi_periph_M12_AXI_ARREADY(0) <= extm_0_axi_arready(0);
  microblaze_0_axi_periph_M12_AXI_AWREADY(0) <= extm_0_axi_awready(0);
  microblaze_0_axi_periph_M12_AXI_BRESP(1 downto 0) <= extm_0_axi_bresp(1 downto 0);
  microblaze_0_axi_periph_M12_AXI_BVALID(0) <= extm_0_axi_bvalid(0);
  microblaze_0_axi_periph_M12_AXI_RDATA(31 downto 0) <= extm_0_axi_rdata(31 downto 0);
  microblaze_0_axi_periph_M12_AXI_RRESP(1 downto 0) <= extm_0_axi_rresp(1 downto 0);
  microblaze_0_axi_periph_M12_AXI_RVALID(0) <= extm_0_axi_rvalid(0);
  microblaze_0_axi_periph_M12_AXI_WREADY(0) <= extm_0_axi_wready(0);
  pll_c0 <= clk_wiz_0_clk_out1;
  pll_c1 <= clk_wiz_0_clk_out2;
  pll_locked <= clk_wiz_0_locked;
  pll_rst_tri_o(31 downto 0) <= PLL_RST_GPIO_TRI_O(31 downto 0);
  pllcfg_stat_tri_o(11 downto 0) <= PLLCFG_Status_GPIO_TRI_O(11 downto 0);
  reset_rtl_0_1 <= reset_n;
  smpl_cmp_en_tri_o(3 downto 0) <= smpl_cmp_cmd_GPIO_TRI_O(3 downto 0);
  smpl_cmp_sel_tri_o(0) <= smpl_cmp_sel_GPIO_TRI_O(0);
  smpl_cmp_stat_GPIO_TRI_I(1 downto 0) <= smpl_cmp_status_tri_i(1 downto 0);
  spi_0_io0_o <= axi_quad_spi_0_SPI_0_IO0_O;
  spi_0_io0_t <= axi_quad_spi_0_SPI_0_IO0_T;
  spi_0_io1_o <= axi_quad_spi_0_SPI_0_IO1_O;
  spi_0_io1_t <= axi_quad_spi_0_SPI_0_IO1_T;
  spi_0_sck_o <= axi_quad_spi_0_SPI_0_SCK_O;
  spi_0_sck_t <= axi_quad_spi_0_SPI_0_SCK_T;
  spi_0_ss_o(8 downto 0) <= axi_quad_spi_0_SPI_0_SS_O(8 downto 0);
  spi_0_ss_t <= axi_quad_spi_0_SPI_0_SS_T;
  spi_1_io0_o <= axi_quad_spi_1_SPI_0_IO0_O;
  spi_1_io0_t <= axi_quad_spi_1_SPI_0_IO0_T;
  spi_1_io1_o <= axi_quad_spi_1_SPI_0_IO1_O;
  spi_1_io1_t <= axi_quad_spi_1_SPI_0_IO1_T;
  spi_1_sck_o <= axi_quad_spi_1_SPI_0_SCK_O;
  spi_1_sck_t <= axi_quad_spi_1_SPI_0_SCK_T;
  spi_1_ss_o(1 downto 0) <= axi_quad_spi_1_SPI_0_SS_O(1 downto 0);
  spi_1_ss_t <= axi_quad_spi_1_SPI_0_SS_T;
  spi_2_io0_o <= axi_quad_spi_2_SPI_0_IO0_O;
  spi_2_io0_t <= axi_quad_spi_2_SPI_0_IO0_T;
  spi_2_io1_o <= axi_quad_spi_2_SPI_0_IO1_O;
  spi_2_io1_t <= axi_quad_spi_2_SPI_0_IO1_T;
  spi_2_sck_o <= axi_quad_spi_2_SPI_0_SCK_O;
  spi_2_sck_t <= axi_quad_spi_2_SPI_0_SCK_T;
  spi_2_ss_o(1 downto 0) <= axi_quad_spi_2_SPI_0_SS_O(1 downto 0);
  spi_2_ss_t <= axi_quad_spi_2_SPI_0_SS_T;
  uart_0_txd <= axi_uartlite_0_UART_TxD;
  vctcxo_tamer_ctrl_GPIO_TRI_I(3 downto 0) <= vctcxo_tamer_0_ctrl_tri_i(3 downto 0);
AXI_to_native_FIFO_0: component mb_subsystem_AXI_to_native_FIFO_0_0
     port map (
      M_NATIVE_READ_AEMPTY => AXI_to_native_FIFO_0_M00_NATIVE_READ_ALMOST_EMPTY,
      M_NATIVE_READ_DOUT(31 downto 0) => AXI_to_native_FIFO_0_M00_NATIVE_READ_RD_DATA(31 downto 0),
      M_NATIVE_READ_EMPTY => AXI_to_native_FIFO_0_M00_NATIVE_READ_EMPTY,
      M_NATIVE_READ_RD_EN => AXI_to_native_FIFO_0_M00_NATIVE_READ_RD_EN,
      M_NATIVE_WRITE_ACLR => AXI_to_native_FIFO_0_M_NATIVE_WRITE_ACLR,
      M_NATIVE_WRITE_AFULL => AXI_to_native_FIFO_0_M00_NATIVE_WRITE_ALMOST_FULL,
      M_NATIVE_WRITE_DIN(31 downto 0) => AXI_to_native_FIFO_0_M00_NATIVE_WRITE_WR_DATA(31 downto 0),
      M_NATIVE_WRITE_FULL => AXI_to_native_FIFO_0_M00_NATIVE_WRITE_FULL,
      M_NATIVE_WRITE_WR_EN => AXI_to_native_FIFO_0_M00_NATIVE_WRITE_WR_EN,
      s00_axi_aclk => microblaze_0_Clk,
      s00_axi_araddr(3 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_ARPROT(2 downto 0),
      s00_axi_arready => microblaze_0_axi_periph_M04_AXI_ARREADY,
      s00_axi_arvalid => microblaze_0_axi_periph_M04_AXI_ARVALID(0),
      s00_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_AWPROT(2 downto 0),
      s00_axi_awready => microblaze_0_axi_periph_M04_AXI_AWREADY,
      s00_axi_awvalid => microblaze_0_axi_periph_M04_AXI_AWVALID(0),
      s00_axi_bready => microblaze_0_axi_periph_M04_AXI_BREADY(0),
      s00_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => microblaze_0_axi_periph_M04_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s00_axi_rready => microblaze_0_axi_periph_M04_AXI_RREADY(0),
      s00_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => microblaze_0_axi_periph_M04_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s00_axi_wready => microblaze_0_axi_periph_M04_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => microblaze_0_axi_periph_M04_AXI_WVALID(0)
    );
PLLCFG_Command: component mb_subsystem_axi_gpio_1_1
     port map (
      gpio_io_i(3 downto 0) => PLLCFG_Command_GPIO_TRI_I(3 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M09_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M09_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M09_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M09_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M09_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M09_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M09_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M09_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M09_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M09_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M09_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M09_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M09_AXI_WVALID(0)
    );
PLLCFG_Status: component mb_subsystem_axi_gpio_1_0
     port map (
      gpio_io_o(11 downto 0) => PLLCFG_Status_GPIO_TRI_O(11 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M08_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M08_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M08_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M08_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M08_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M08_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M08_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M08_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M08_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M08_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M08_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M08_AXI_WVALID(0)
    );
PLL_RST: component mb_subsystem_axi_gpio_2_0
     port map (
      gpio_io_o(31 downto 0) => PLL_RST_GPIO_TRI_O(31 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M10_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M10_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M10_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M10_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M10_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M10_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M10_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M10_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M10_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M10_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M10_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M10_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M10_AXI_WVALID(0)
    );
axi_amm_bridge_0: component mb_subsystem_axi_amm_bridge_0_0
     port map (
      avm_address(31 downto 0) => axi_amm_bridge_0_M_AVALON_ADDRESS(31 downto 0),
      avm_read => axi_amm_bridge_0_M_AVALON_READ,
      avm_readdata(31 downto 0) => axi_amm_bridge_0_M_AVALON_READDATA(31 downto 0),
      avm_readdatavalid => axi_amm_bridge_0_M_AVALON_READDATAVALID,
      avm_waitrequest => axi_amm_bridge_0_M_AVALON_WAITREQUEST,
      avm_write => axi_amm_bridge_0_M_AVALON_WRITE,
      avm_writedata(31 downto 0) => axi_amm_bridge_0_M_AVALON_WRITEDATA(31 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(31 downto 0) => microblaze_0_axi_periph_M17_AXI_ARADDR(31 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M17_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M17_AXI_ARVALID(0),
      s_axi_awaddr(31 downto 0) => microblaze_0_axi_periph_M17_AXI_AWADDR(31 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M17_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M17_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M17_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M17_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M17_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M17_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M17_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M17_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M17_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M17_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M17_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M17_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M17_AXI_WVALID(0)
    );
axi_gpio_0: component mb_subsystem_axi_gpio_0_4
     port map (
      gpio2_io_o(7 downto 0) => axi_gpio_0_GPIO2_TRI_O(7 downto 0),
      gpio_io_i(7 downto 0) => axi_gpio_0_GPIO_TRI_I(7 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M03_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M03_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M03_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M03_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M03_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M03_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M03_AXI_WVALID(0)
    );
axi_iic_0: component mb_subsystem_axi_iic_0_1
     port map (
      gpo(0) => NLW_axi_iic_0_gpo_UNCONNECTED(0),
      iic2intc_irpt => axi_iic_0_iic2intc_irpt,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M01_AXI_WVALID(0),
      scl_i => axi_iic_0_IIC_SCL_I,
      scl_o => axi_iic_0_IIC_SCL_O,
      scl_t => axi_iic_0_IIC_SCL_T,
      sda_i => axi_iic_0_IIC_SDA_I,
      sda_o => axi_iic_0_IIC_SDA_O,
      sda_t => axi_iic_0_IIC_SDA_T
    );
axi_quad_spi_0: component mb_subsystem_axi_quad_spi_0_1
     port map (
      ext_spi_clk => microblaze_0_Clk,
      io0_i => axi_quad_spi_0_SPI_0_IO0_I,
      io0_o => axi_quad_spi_0_SPI_0_IO0_O,
      io0_t => axi_quad_spi_0_SPI_0_IO0_T,
      io1_i => axi_quad_spi_0_SPI_0_IO1_I,
      io1_o => axi_quad_spi_0_SPI_0_IO1_O,
      io1_t => axi_quad_spi_0_SPI_0_IO1_T,
      ip2intc_irpt => axi_quad_spi_0_ip2intc_irpt,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(6 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M02_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      s_axi_awaddr(6 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(6 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M02_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M02_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M02_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M02_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M02_AXI_WVALID(0),
      sck_i => axi_quad_spi_0_SPI_0_SCK_I,
      sck_o => axi_quad_spi_0_SPI_0_SCK_O,
      sck_t => axi_quad_spi_0_SPI_0_SCK_T,
      ss_i(8 downto 0) => axi_quad_spi_0_SPI_0_SS_I(8 downto 0),
      ss_o(8 downto 0) => axi_quad_spi_0_SPI_0_SS_O(8 downto 0),
      ss_t => axi_quad_spi_0_SPI_0_SS_T
    );
axi_quad_spi_1: component mb_subsystem_axi_quad_spi_1_0
     port map (
      ext_spi_clk => microblaze_0_Clk,
      io0_i => axi_quad_spi_1_SPI_0_IO0_I,
      io0_o => axi_quad_spi_1_SPI_0_IO0_O,
      io0_t => axi_quad_spi_1_SPI_0_IO0_T,
      io1_i => axi_quad_spi_1_SPI_0_IO1_I,
      io1_o => axi_quad_spi_1_SPI_0_IO1_O,
      io1_t => axi_quad_spi_1_SPI_0_IO1_T,
      ip2intc_irpt => NLW_axi_quad_spi_1_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(6 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M05_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M05_AXI_ARVALID(0),
      s_axi_awaddr(6 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(6 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M05_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M05_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M05_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M05_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M05_AXI_WVALID(0),
      sck_i => axi_quad_spi_1_SPI_0_SCK_I,
      sck_o => axi_quad_spi_1_SPI_0_SCK_O,
      sck_t => axi_quad_spi_1_SPI_0_SCK_T,
      ss_i(1 downto 0) => axi_quad_spi_1_SPI_0_SS_I(1 downto 0),
      ss_o(1 downto 0) => axi_quad_spi_1_SPI_0_SS_O(1 downto 0),
      ss_t => axi_quad_spi_1_SPI_0_SS_T
    );
axi_quad_spi_2: component mb_subsystem_axi_quad_spi_2_0
     port map (
      ext_spi_clk => microblaze_0_Clk,
      io0_i => axi_quad_spi_2_SPI_0_IO0_I,
      io0_o => axi_quad_spi_2_SPI_0_IO0_O,
      io0_t => axi_quad_spi_2_SPI_0_IO0_T,
      io1_i => axi_quad_spi_2_SPI_0_IO1_I,
      io1_o => axi_quad_spi_2_SPI_0_IO1_O,
      io1_t => axi_quad_spi_2_SPI_0_IO1_T,
      ip2intc_irpt => NLW_axi_quad_spi_2_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(6 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(6 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M06_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M06_AXI_ARVALID(0),
      s_axi_awaddr(6 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(6 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M06_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M06_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M06_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M06_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M06_AXI_WVALID(0),
      sck_i => axi_quad_spi_2_SPI_0_SCK_I,
      sck_o => axi_quad_spi_2_SPI_0_SCK_O,
      sck_t => axi_quad_spi_2_SPI_0_SCK_T,
      ss_i(1 downto 0) => axi_quad_spi_2_SPI_0_SS_I(1 downto 0),
      ss_o(1 downto 0) => axi_quad_spi_2_SPI_0_SS_O(1 downto 0),
      ss_t => axi_quad_spi_2_SPI_0_SS_T
    );
axi_uartlite_0: component mb_subsystem_axi_uartlite_0_0
     port map (
      interrupt => axi_uartlite_0_interrupt,
      rx => axi_uartlite_0_UART_RxD,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(3 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M07_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M07_AXI_ARVALID(0),
      s_axi_awaddr(3 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(3 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M07_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M07_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M07_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M07_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M07_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M07_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M07_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M07_AXI_WVALID(0),
      tx => axi_uartlite_0_UART_TxD
    );
clk_wiz_0: component mb_subsystem_clk_wiz_0_0
     port map (
      clk_in1 => microblaze_0_Clk,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      locked => clk_wiz_0_locked,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(10 downto 0) => microblaze_0_axi_periph_M11_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M11_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M11_AXI_ARVALID(0),
      s_axi_awaddr(10 downto 0) => microblaze_0_axi_periph_M11_AXI_AWADDR(10 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M11_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M11_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M11_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M11_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M11_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M11_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M11_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M11_AXI_WVALID(0)
    );
extm_0_axi_sel: component mb_subsystem_axi_gpio_1_2
     port map (
      gpio_io_o(3 downto 0) => axi_gpio_1_GPIO_TRI_O(3 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M13_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M13_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M13_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M13_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M13_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M13_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M13_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M13_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M13_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M13_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M13_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M13_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M13_AXI_WVALID(0)
    );
mdm_1: component mb_subsystem_mdm_1_6
     port map (
      Dbg_Capture_0 => microblaze_0_debug_CAPTURE,
      Dbg_Clk_0 => microblaze_0_debug_CLK,
      Dbg_Disable_0 => microblaze_0_debug_DISABLE,
      Dbg_Reg_En_0(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Rst_0 => microblaze_0_debug_RST,
      Dbg_Shift_0 => microblaze_0_debug_SHIFT,
      Dbg_TDI_0 => microblaze_0_debug_TDI,
      Dbg_TDO_0 => microblaze_0_debug_TDO,
      Dbg_Update_0 => microblaze_0_debug_UPDATE,
      Debug_SYS_Rst => mdm_1_debug_sys_rst
    );
microblaze_0: component mb_subsystem_microblaze_0_7
     port map (
      Byte_Enable(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      Clk => microblaze_0_Clk,
      DCE => microblaze_0_dlmb_1_CE,
      DReady => microblaze_0_dlmb_1_READY,
      DUE => microblaze_0_dlmb_1_UE,
      DWait => microblaze_0_dlmb_1_WAIT,
      D_AS => microblaze_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => microblaze_0_debug_CAPTURE,
      Dbg_Clk => microblaze_0_debug_CLK,
      Dbg_Disable => microblaze_0_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => microblaze_0_debug_REG_EN(0 to 7),
      Dbg_Shift => microblaze_0_debug_SHIFT,
      Dbg_TDI => microblaze_0_debug_TDI,
      Dbg_TDO => microblaze_0_debug_TDO,
      Dbg_Update => microblaze_0_debug_UPDATE,
      Debug_Rst => microblaze_0_debug_RST,
      ICE => microblaze_0_ilmb_1_CE,
      IFetch => microblaze_0_ilmb_1_READSTROBE,
      IReady => microblaze_0_ilmb_1_READY,
      IUE => microblaze_0_ilmb_1_UE,
      IWAIT => microblaze_0_ilmb_1_WAIT,
      I_AS => microblaze_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      Interrupt => microblaze_0_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => microblaze_0_interrupt_ACK(0 to 1),
      Interrupt_Address(0) => microblaze_0_interrupt_ADDRESS(31),
      Interrupt_Address(1) => microblaze_0_interrupt_ADDRESS(30),
      Interrupt_Address(2) => microblaze_0_interrupt_ADDRESS(29),
      Interrupt_Address(3) => microblaze_0_interrupt_ADDRESS(28),
      Interrupt_Address(4) => microblaze_0_interrupt_ADDRESS(27),
      Interrupt_Address(5) => microblaze_0_interrupt_ADDRESS(26),
      Interrupt_Address(6) => microblaze_0_interrupt_ADDRESS(25),
      Interrupt_Address(7) => microblaze_0_interrupt_ADDRESS(24),
      Interrupt_Address(8) => microblaze_0_interrupt_ADDRESS(23),
      Interrupt_Address(9) => microblaze_0_interrupt_ADDRESS(22),
      Interrupt_Address(10) => microblaze_0_interrupt_ADDRESS(21),
      Interrupt_Address(11) => microblaze_0_interrupt_ADDRESS(20),
      Interrupt_Address(12) => microblaze_0_interrupt_ADDRESS(19),
      Interrupt_Address(13) => microblaze_0_interrupt_ADDRESS(18),
      Interrupt_Address(14) => microblaze_0_interrupt_ADDRESS(17),
      Interrupt_Address(15) => microblaze_0_interrupt_ADDRESS(16),
      Interrupt_Address(16) => microblaze_0_interrupt_ADDRESS(15),
      Interrupt_Address(17) => microblaze_0_interrupt_ADDRESS(14),
      Interrupt_Address(18) => microblaze_0_interrupt_ADDRESS(13),
      Interrupt_Address(19) => microblaze_0_interrupt_ADDRESS(12),
      Interrupt_Address(20) => microblaze_0_interrupt_ADDRESS(11),
      Interrupt_Address(21) => microblaze_0_interrupt_ADDRESS(10),
      Interrupt_Address(22) => microblaze_0_interrupt_ADDRESS(9),
      Interrupt_Address(23) => microblaze_0_interrupt_ADDRESS(8),
      Interrupt_Address(24) => microblaze_0_interrupt_ADDRESS(7),
      Interrupt_Address(25) => microblaze_0_interrupt_ADDRESS(6),
      Interrupt_Address(26) => microblaze_0_interrupt_ADDRESS(5),
      Interrupt_Address(27) => microblaze_0_interrupt_ADDRESS(4),
      Interrupt_Address(28) => microblaze_0_interrupt_ADDRESS(3),
      Interrupt_Address(29) => microblaze_0_interrupt_ADDRESS(2),
      Interrupt_Address(30) => microblaze_0_interrupt_ADDRESS(1),
      Interrupt_Address(31) => microblaze_0_interrupt_ADDRESS(0),
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_axi_dp_ARREADY(0),
      M_AXI_DP_ARVALID => microblaze_0_axi_dp_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_axi_dp_AWREADY(0),
      M_AXI_DP_AWVALID => microblaze_0_axi_dp_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_axi_dp_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_axi_dp_BVALID(0),
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_axi_dp_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_axi_dp_RVALID(0),
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_axi_dp_WREADY(0),
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_axi_dp_WVALID,
      Read_Strobe => microblaze_0_dlmb_1_READSTROBE,
      Reset => rst_Clk_100M_mb_reset,
      Write_Strobe => microblaze_0_dlmb_1_WRITESTROBE
    );
microblaze_0_axi_intc: component mb_subsystem_microblaze_0_axi_intc_3
     port map (
      interrupt_address(31 downto 0) => microblaze_0_interrupt_ADDRESS(31 downto 0),
      intr(2 downto 0) => microblaze_0_intr(2 downto 0),
      irq => microblaze_0_interrupt_INTERRUPT,
      processor_ack(1) => microblaze_0_interrupt_ACK(0),
      processor_ack(0) => microblaze_0_interrupt_ACK(1),
      processor_clk => microblaze_0_Clk,
      processor_rst => rst_Clk_100M_mb_reset,
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_intc_axi_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_intc_axi_ARREADY,
      s_axi_arvalid => microblaze_0_intc_axi_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_intc_axi_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_intc_axi_AWREADY,
      s_axi_awvalid => microblaze_0_intc_axi_AWVALID(0),
      s_axi_bready => microblaze_0_intc_axi_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_intc_axi_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_intc_axi_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_intc_axi_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_intc_axi_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_intc_axi_WVALID(0)
    );
microblaze_0_axi_periph: entity work.mb_subsystem_microblaze_0_axi_periph_5
     port map (
      ACLK => microblaze_0_Clk,
      ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M00_ACLK => microblaze_0_Clk,
      M00_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => microblaze_0_intc_axi_ARADDR(31 downto 0),
      M00_AXI_arready(0) => microblaze_0_intc_axi_ARREADY,
      M00_AXI_arvalid(0) => microblaze_0_intc_axi_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => microblaze_0_intc_axi_AWADDR(31 downto 0),
      M00_AXI_awready(0) => microblaze_0_intc_axi_AWREADY,
      M00_AXI_awvalid(0) => microblaze_0_intc_axi_AWVALID(0),
      M00_AXI_bready(0) => microblaze_0_intc_axi_BREADY(0),
      M00_AXI_bresp(1 downto 0) => microblaze_0_intc_axi_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => microblaze_0_intc_axi_BVALID,
      M00_AXI_rdata(31 downto 0) => microblaze_0_intc_axi_RDATA(31 downto 0),
      M00_AXI_rready(0) => microblaze_0_intc_axi_RREADY(0),
      M00_AXI_rresp(1 downto 0) => microblaze_0_intc_axi_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => microblaze_0_intc_axi_RVALID,
      M00_AXI_wdata(31 downto 0) => microblaze_0_intc_axi_WDATA(31 downto 0),
      M00_AXI_wready(0) => microblaze_0_intc_axi_WREADY,
      M00_AXI_wstrb(3 downto 0) => microblaze_0_intc_axi_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => microblaze_0_intc_axi_WVALID(0),
      M01_ACLK => microblaze_0_Clk,
      M01_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => microblaze_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => microblaze_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => microblaze_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => microblaze_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => microblaze_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => microblaze_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => microblaze_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => microblaze_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => microblaze_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid(0) => microblaze_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => microblaze_0_Clk,
      M02_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready(0) => microblaze_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid(0) => microblaze_0_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready(0) => microblaze_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid(0) => microblaze_0_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => microblaze_0_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => microblaze_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => microblaze_0_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => microblaze_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => microblaze_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => microblaze_0_axi_periph_M02_AXI_WVALID(0),
      M03_ACLK => microblaze_0_Clk,
      M03_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready(0) => microblaze_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid(0) => microblaze_0_axi_periph_M03_AXI_ARVALID(0),
      M03_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready(0) => microblaze_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid(0) => microblaze_0_axi_periph_M03_AXI_AWVALID(0),
      M03_AXI_bready(0) => microblaze_0_axi_periph_M03_AXI_BREADY(0),
      M03_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid(0) => microblaze_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready(0) => microblaze_0_axi_periph_M03_AXI_RREADY(0),
      M03_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid(0) => microblaze_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready(0) => microblaze_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid(0) => microblaze_0_axi_periph_M03_AXI_WVALID(0),
      M04_ACLK => microblaze_0_Clk,
      M04_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready(0) => microblaze_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid(0) => microblaze_0_axi_periph_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready(0) => microblaze_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid(0) => microblaze_0_axi_periph_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => microblaze_0_axi_periph_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => microblaze_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => microblaze_0_axi_periph_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => microblaze_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => microblaze_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => microblaze_0_axi_periph_M04_AXI_WVALID(0),
      M05_ACLK => microblaze_0_Clk,
      M05_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready(0) => microblaze_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid(0) => microblaze_0_axi_periph_M05_AXI_ARVALID(0),
      M05_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready(0) => microblaze_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid(0) => microblaze_0_axi_periph_M05_AXI_AWVALID(0),
      M05_AXI_bready(0) => microblaze_0_axi_periph_M05_AXI_BREADY(0),
      M05_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid(0) => microblaze_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready(0) => microblaze_0_axi_periph_M05_AXI_RREADY(0),
      M05_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid(0) => microblaze_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready(0) => microblaze_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid(0) => microblaze_0_axi_periph_M05_AXI_WVALID(0),
      M06_ACLK => microblaze_0_Clk,
      M06_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready(0) => microblaze_0_axi_periph_M06_AXI_ARREADY,
      M06_AXI_arvalid(0) => microblaze_0_axi_periph_M06_AXI_ARVALID(0),
      M06_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready(0) => microblaze_0_axi_periph_M06_AXI_AWREADY,
      M06_AXI_awvalid(0) => microblaze_0_axi_periph_M06_AXI_AWVALID(0),
      M06_AXI_bready(0) => microblaze_0_axi_periph_M06_AXI_BREADY(0),
      M06_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid(0) => microblaze_0_axi_periph_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready(0) => microblaze_0_axi_periph_M06_AXI_RREADY(0),
      M06_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid(0) => microblaze_0_axi_periph_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready(0) => microblaze_0_axi_periph_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid(0) => microblaze_0_axi_periph_M06_AXI_WVALID(0),
      M07_ACLK => microblaze_0_Clk,
      M07_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M07_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M07_AXI_ARADDR(31 downto 0),
      M07_AXI_arready(0) => microblaze_0_axi_periph_M07_AXI_ARREADY,
      M07_AXI_arvalid(0) => microblaze_0_axi_periph_M07_AXI_ARVALID(0),
      M07_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M07_AXI_AWADDR(31 downto 0),
      M07_AXI_awready(0) => microblaze_0_axi_periph_M07_AXI_AWREADY,
      M07_AXI_awvalid(0) => microblaze_0_axi_periph_M07_AXI_AWVALID(0),
      M07_AXI_bready(0) => microblaze_0_axi_periph_M07_AXI_BREADY(0),
      M07_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_BRESP(1 downto 0),
      M07_AXI_bvalid(0) => microblaze_0_axi_periph_M07_AXI_BVALID,
      M07_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_RDATA(31 downto 0),
      M07_AXI_rready(0) => microblaze_0_axi_periph_M07_AXI_RREADY(0),
      M07_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M07_AXI_RRESP(1 downto 0),
      M07_AXI_rvalid(0) => microblaze_0_axi_periph_M07_AXI_RVALID,
      M07_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M07_AXI_WDATA(31 downto 0),
      M07_AXI_wready(0) => microblaze_0_axi_periph_M07_AXI_WREADY,
      M07_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M07_AXI_WSTRB(3 downto 0),
      M07_AXI_wvalid(0) => microblaze_0_axi_periph_M07_AXI_WVALID(0),
      M08_ACLK => microblaze_0_Clk,
      M08_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M08_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M08_AXI_ARADDR(31 downto 0),
      M08_AXI_arready(0) => microblaze_0_axi_periph_M08_AXI_ARREADY,
      M08_AXI_arvalid(0) => microblaze_0_axi_periph_M08_AXI_ARVALID(0),
      M08_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M08_AXI_AWADDR(31 downto 0),
      M08_AXI_awready(0) => microblaze_0_axi_periph_M08_AXI_AWREADY,
      M08_AXI_awvalid(0) => microblaze_0_axi_periph_M08_AXI_AWVALID(0),
      M08_AXI_bready(0) => microblaze_0_axi_periph_M08_AXI_BREADY(0),
      M08_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_BRESP(1 downto 0),
      M08_AXI_bvalid(0) => microblaze_0_axi_periph_M08_AXI_BVALID,
      M08_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_RDATA(31 downto 0),
      M08_AXI_rready(0) => microblaze_0_axi_periph_M08_AXI_RREADY(0),
      M08_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M08_AXI_RRESP(1 downto 0),
      M08_AXI_rvalid(0) => microblaze_0_axi_periph_M08_AXI_RVALID,
      M08_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M08_AXI_WDATA(31 downto 0),
      M08_AXI_wready(0) => microblaze_0_axi_periph_M08_AXI_WREADY,
      M08_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M08_AXI_WSTRB(3 downto 0),
      M08_AXI_wvalid(0) => microblaze_0_axi_periph_M08_AXI_WVALID(0),
      M09_ACLK => microblaze_0_Clk,
      M09_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M09_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M09_AXI_ARADDR(31 downto 0),
      M09_AXI_arready(0) => microblaze_0_axi_periph_M09_AXI_ARREADY,
      M09_AXI_arvalid(0) => microblaze_0_axi_periph_M09_AXI_ARVALID(0),
      M09_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M09_AXI_AWADDR(31 downto 0),
      M09_AXI_awready(0) => microblaze_0_axi_periph_M09_AXI_AWREADY,
      M09_AXI_awvalid(0) => microblaze_0_axi_periph_M09_AXI_AWVALID(0),
      M09_AXI_bready(0) => microblaze_0_axi_periph_M09_AXI_BREADY(0),
      M09_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_BRESP(1 downto 0),
      M09_AXI_bvalid(0) => microblaze_0_axi_periph_M09_AXI_BVALID,
      M09_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_RDATA(31 downto 0),
      M09_AXI_rready(0) => microblaze_0_axi_periph_M09_AXI_RREADY(0),
      M09_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M09_AXI_RRESP(1 downto 0),
      M09_AXI_rvalid(0) => microblaze_0_axi_periph_M09_AXI_RVALID,
      M09_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M09_AXI_WDATA(31 downto 0),
      M09_AXI_wready(0) => microblaze_0_axi_periph_M09_AXI_WREADY,
      M09_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M09_AXI_WSTRB(3 downto 0),
      M09_AXI_wvalid(0) => microblaze_0_axi_periph_M09_AXI_WVALID(0),
      M10_ACLK => microblaze_0_Clk,
      M10_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M10_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M10_AXI_ARADDR(31 downto 0),
      M10_AXI_arready(0) => microblaze_0_axi_periph_M10_AXI_ARREADY,
      M10_AXI_arvalid(0) => microblaze_0_axi_periph_M10_AXI_ARVALID(0),
      M10_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M10_AXI_AWADDR(31 downto 0),
      M10_AXI_awready(0) => microblaze_0_axi_periph_M10_AXI_AWREADY,
      M10_AXI_awvalid(0) => microblaze_0_axi_periph_M10_AXI_AWVALID(0),
      M10_AXI_bready(0) => microblaze_0_axi_periph_M10_AXI_BREADY(0),
      M10_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_BRESP(1 downto 0),
      M10_AXI_bvalid(0) => microblaze_0_axi_periph_M10_AXI_BVALID,
      M10_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_RDATA(31 downto 0),
      M10_AXI_rready(0) => microblaze_0_axi_periph_M10_AXI_RREADY(0),
      M10_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M10_AXI_RRESP(1 downto 0),
      M10_AXI_rvalid(0) => microblaze_0_axi_periph_M10_AXI_RVALID,
      M10_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M10_AXI_WDATA(31 downto 0),
      M10_AXI_wready(0) => microblaze_0_axi_periph_M10_AXI_WREADY,
      M10_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M10_AXI_WSTRB(3 downto 0),
      M10_AXI_wvalid(0) => microblaze_0_axi_periph_M10_AXI_WVALID(0),
      M11_ACLK => microblaze_0_Clk,
      M11_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M11_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_ARADDR(31 downto 0),
      M11_AXI_arready(0) => microblaze_0_axi_periph_M11_AXI_ARREADY,
      M11_AXI_arvalid(0) => microblaze_0_axi_periph_M11_AXI_ARVALID(0),
      M11_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M11_AXI_AWADDR(31 downto 0),
      M11_AXI_awready(0) => microblaze_0_axi_periph_M11_AXI_AWREADY,
      M11_AXI_awvalid(0) => microblaze_0_axi_periph_M11_AXI_AWVALID(0),
      M11_AXI_bready(0) => microblaze_0_axi_periph_M11_AXI_BREADY(0),
      M11_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_BRESP(1 downto 0),
      M11_AXI_bvalid(0) => microblaze_0_axi_periph_M11_AXI_BVALID,
      M11_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_RDATA(31 downto 0),
      M11_AXI_rready(0) => microblaze_0_axi_periph_M11_AXI_RREADY(0),
      M11_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M11_AXI_RRESP(1 downto 0),
      M11_AXI_rvalid(0) => microblaze_0_axi_periph_M11_AXI_RVALID,
      M11_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M11_AXI_WDATA(31 downto 0),
      M11_AXI_wready(0) => microblaze_0_axi_periph_M11_AXI_WREADY,
      M11_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M11_AXI_WSTRB(3 downto 0),
      M11_AXI_wvalid(0) => microblaze_0_axi_periph_M11_AXI_WVALID(0),
      M12_ACLK => microblaze_0_Clk,
      M12_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M12_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M12_AXI_ARADDR(31 downto 0),
      M12_AXI_arprot(2 downto 0) => microblaze_0_axi_periph_M12_AXI_ARPROT(2 downto 0),
      M12_AXI_arready(0) => microblaze_0_axi_periph_M12_AXI_ARREADY(0),
      M12_AXI_arvalid(0) => microblaze_0_axi_periph_M12_AXI_ARVALID(0),
      M12_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M12_AXI_AWADDR(31 downto 0),
      M12_AXI_awprot(2 downto 0) => microblaze_0_axi_periph_M12_AXI_AWPROT(2 downto 0),
      M12_AXI_awready(0) => microblaze_0_axi_periph_M12_AXI_AWREADY(0),
      M12_AXI_awvalid(0) => microblaze_0_axi_periph_M12_AXI_AWVALID(0),
      M12_AXI_bready(0) => microblaze_0_axi_periph_M12_AXI_BREADY(0),
      M12_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_BRESP(1 downto 0),
      M12_AXI_bvalid(0) => microblaze_0_axi_periph_M12_AXI_BVALID(0),
      M12_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_RDATA(31 downto 0),
      M12_AXI_rready(0) => microblaze_0_axi_periph_M12_AXI_RREADY(0),
      M12_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M12_AXI_RRESP(1 downto 0),
      M12_AXI_rvalid(0) => microblaze_0_axi_periph_M12_AXI_RVALID(0),
      M12_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M12_AXI_WDATA(31 downto 0),
      M12_AXI_wready(0) => microblaze_0_axi_periph_M12_AXI_WREADY(0),
      M12_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M12_AXI_WSTRB(3 downto 0),
      M12_AXI_wvalid(0) => microblaze_0_axi_periph_M12_AXI_WVALID(0),
      M13_ACLK => microblaze_0_Clk,
      M13_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M13_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M13_AXI_ARADDR(31 downto 0),
      M13_AXI_arready(0) => microblaze_0_axi_periph_M13_AXI_ARREADY,
      M13_AXI_arvalid(0) => microblaze_0_axi_periph_M13_AXI_ARVALID(0),
      M13_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M13_AXI_AWADDR(31 downto 0),
      M13_AXI_awready(0) => microblaze_0_axi_periph_M13_AXI_AWREADY,
      M13_AXI_awvalid(0) => microblaze_0_axi_periph_M13_AXI_AWVALID(0),
      M13_AXI_bready(0) => microblaze_0_axi_periph_M13_AXI_BREADY(0),
      M13_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_BRESP(1 downto 0),
      M13_AXI_bvalid(0) => microblaze_0_axi_periph_M13_AXI_BVALID,
      M13_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_RDATA(31 downto 0),
      M13_AXI_rready(0) => microblaze_0_axi_periph_M13_AXI_RREADY(0),
      M13_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M13_AXI_RRESP(1 downto 0),
      M13_AXI_rvalid(0) => microblaze_0_axi_periph_M13_AXI_RVALID,
      M13_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M13_AXI_WDATA(31 downto 0),
      M13_AXI_wready(0) => microblaze_0_axi_periph_M13_AXI_WREADY,
      M13_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M13_AXI_WSTRB(3 downto 0),
      M13_AXI_wvalid(0) => microblaze_0_axi_periph_M13_AXI_WVALID(0),
      M14_ACLK => microblaze_0_Clk,
      M14_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M14_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M14_AXI_ARADDR(31 downto 0),
      M14_AXI_arready(0) => microblaze_0_axi_periph_M14_AXI_ARREADY,
      M14_AXI_arvalid(0) => microblaze_0_axi_periph_M14_AXI_ARVALID(0),
      M14_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M14_AXI_AWADDR(31 downto 0),
      M14_AXI_awready(0) => microblaze_0_axi_periph_M14_AXI_AWREADY,
      M14_AXI_awvalid(0) => microblaze_0_axi_periph_M14_AXI_AWVALID(0),
      M14_AXI_bready(0) => microblaze_0_axi_periph_M14_AXI_BREADY(0),
      M14_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M14_AXI_BRESP(1 downto 0),
      M14_AXI_bvalid(0) => microblaze_0_axi_periph_M14_AXI_BVALID,
      M14_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M14_AXI_RDATA(31 downto 0),
      M14_AXI_rready(0) => microblaze_0_axi_periph_M14_AXI_RREADY(0),
      M14_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M14_AXI_RRESP(1 downto 0),
      M14_AXI_rvalid(0) => microblaze_0_axi_periph_M14_AXI_RVALID,
      M14_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M14_AXI_WDATA(31 downto 0),
      M14_AXI_wready(0) => microblaze_0_axi_periph_M14_AXI_WREADY,
      M14_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M14_AXI_WSTRB(3 downto 0),
      M14_AXI_wvalid(0) => microblaze_0_axi_periph_M14_AXI_WVALID(0),
      M15_ACLK => microblaze_0_Clk,
      M15_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M15_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M15_AXI_ARADDR(31 downto 0),
      M15_AXI_arready(0) => microblaze_0_axi_periph_M15_AXI_ARREADY,
      M15_AXI_arvalid(0) => microblaze_0_axi_periph_M15_AXI_ARVALID(0),
      M15_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M15_AXI_AWADDR(31 downto 0),
      M15_AXI_awready(0) => microblaze_0_axi_periph_M15_AXI_AWREADY,
      M15_AXI_awvalid(0) => microblaze_0_axi_periph_M15_AXI_AWVALID(0),
      M15_AXI_bready(0) => microblaze_0_axi_periph_M15_AXI_BREADY(0),
      M15_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M15_AXI_BRESP(1 downto 0),
      M15_AXI_bvalid(0) => microblaze_0_axi_periph_M15_AXI_BVALID,
      M15_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M15_AXI_RDATA(31 downto 0),
      M15_AXI_rready(0) => microblaze_0_axi_periph_M15_AXI_RREADY(0),
      M15_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M15_AXI_RRESP(1 downto 0),
      M15_AXI_rvalid(0) => microblaze_0_axi_periph_M15_AXI_RVALID,
      M15_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M15_AXI_WDATA(31 downto 0),
      M15_AXI_wready(0) => microblaze_0_axi_periph_M15_AXI_WREADY,
      M15_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M15_AXI_WSTRB(3 downto 0),
      M15_AXI_wvalid(0) => microblaze_0_axi_periph_M15_AXI_WVALID(0),
      M16_ACLK => microblaze_0_Clk,
      M16_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M16_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M16_AXI_ARADDR(31 downto 0),
      M16_AXI_arready => microblaze_0_axi_periph_M16_AXI_ARREADY,
      M16_AXI_arvalid => microblaze_0_axi_periph_M16_AXI_ARVALID,
      M16_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M16_AXI_AWADDR(31 downto 0),
      M16_AXI_awready => microblaze_0_axi_periph_M16_AXI_AWREADY,
      M16_AXI_awvalid => microblaze_0_axi_periph_M16_AXI_AWVALID,
      M16_AXI_bready => microblaze_0_axi_periph_M16_AXI_BREADY,
      M16_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M16_AXI_BRESP(1 downto 0),
      M16_AXI_bvalid => microblaze_0_axi_periph_M16_AXI_BVALID,
      M16_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M16_AXI_RDATA(31 downto 0),
      M16_AXI_rready => microblaze_0_axi_periph_M16_AXI_RREADY,
      M16_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M16_AXI_RRESP(1 downto 0),
      M16_AXI_rvalid => microblaze_0_axi_periph_M16_AXI_RVALID,
      M16_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M16_AXI_WDATA(31 downto 0),
      M16_AXI_wready => microblaze_0_axi_periph_M16_AXI_WREADY,
      M16_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M16_AXI_WSTRB(3 downto 0),
      M16_AXI_wvalid => microblaze_0_axi_periph_M16_AXI_WVALID,
      M17_ACLK => microblaze_0_Clk,
      M17_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M17_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M17_AXI_ARADDR(31 downto 0),
      M17_AXI_arready(0) => microblaze_0_axi_periph_M17_AXI_ARREADY,
      M17_AXI_arvalid(0) => microblaze_0_axi_periph_M17_AXI_ARVALID(0),
      M17_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M17_AXI_AWADDR(31 downto 0),
      M17_AXI_awready(0) => microblaze_0_axi_periph_M17_AXI_AWREADY,
      M17_AXI_awvalid(0) => microblaze_0_axi_periph_M17_AXI_AWVALID(0),
      M17_AXI_bready(0) => microblaze_0_axi_periph_M17_AXI_BREADY(0),
      M17_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M17_AXI_BRESP(1 downto 0),
      M17_AXI_bvalid(0) => microblaze_0_axi_periph_M17_AXI_BVALID,
      M17_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M17_AXI_RDATA(31 downto 0),
      M17_AXI_rready(0) => microblaze_0_axi_periph_M17_AXI_RREADY(0),
      M17_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M17_AXI_RRESP(1 downto 0),
      M17_AXI_rvalid(0) => microblaze_0_axi_periph_M17_AXI_RVALID,
      M17_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M17_AXI_WDATA(31 downto 0),
      M17_AXI_wready(0) => microblaze_0_axi_periph_M17_AXI_WREADY,
      M17_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M17_AXI_WSTRB(3 downto 0),
      M17_AXI_wvalid(0) => microblaze_0_axi_periph_M17_AXI_WVALID(0),
      M18_ACLK => microblaze_0_Clk,
      M18_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      M18_AXI_araddr(31 downto 0) => microblaze_0_axi_periph_M18_AXI_ARADDR(31 downto 0),
      M18_AXI_arready(0) => microblaze_0_axi_periph_M18_AXI_ARREADY,
      M18_AXI_arvalid(0) => microblaze_0_axi_periph_M18_AXI_ARVALID(0),
      M18_AXI_awaddr(31 downto 0) => microblaze_0_axi_periph_M18_AXI_AWADDR(31 downto 0),
      M18_AXI_awready(0) => microblaze_0_axi_periph_M18_AXI_AWREADY,
      M18_AXI_awvalid(0) => microblaze_0_axi_periph_M18_AXI_AWVALID(0),
      M18_AXI_bready(0) => microblaze_0_axi_periph_M18_AXI_BREADY(0),
      M18_AXI_bresp(1 downto 0) => microblaze_0_axi_periph_M18_AXI_BRESP(1 downto 0),
      M18_AXI_bvalid(0) => microblaze_0_axi_periph_M18_AXI_BVALID,
      M18_AXI_rdata(31 downto 0) => microblaze_0_axi_periph_M18_AXI_RDATA(31 downto 0),
      M18_AXI_rready(0) => microblaze_0_axi_periph_M18_AXI_RREADY(0),
      M18_AXI_rresp(1 downto 0) => microblaze_0_axi_periph_M18_AXI_RRESP(1 downto 0),
      M18_AXI_rvalid(0) => microblaze_0_axi_periph_M18_AXI_RVALID,
      M18_AXI_wdata(31 downto 0) => microblaze_0_axi_periph_M18_AXI_WDATA(31 downto 0),
      M18_AXI_wready(0) => microblaze_0_axi_periph_M18_AXI_WREADY,
      M18_AXI_wstrb(3 downto 0) => microblaze_0_axi_periph_M18_AXI_WSTRB(3 downto 0),
      M18_AXI_wvalid(0) => microblaze_0_axi_periph_M18_AXI_WVALID(0),
      S00_ACLK => microblaze_0_Clk,
      S00_ARESETN => rst_Clk_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => microblaze_0_axi_dp_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_0_axi_dp_ARPROT(2 downto 0),
      S00_AXI_arready(0) => microblaze_0_axi_dp_ARREADY(0),
      S00_AXI_arvalid(0) => microblaze_0_axi_dp_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_0_axi_dp_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_0_axi_dp_AWPROT(2 downto 0),
      S00_AXI_awready(0) => microblaze_0_axi_dp_AWREADY(0),
      S00_AXI_awvalid(0) => microblaze_0_axi_dp_AWVALID,
      S00_AXI_bready(0) => microblaze_0_axi_dp_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_0_axi_dp_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => microblaze_0_axi_dp_BVALID(0),
      S00_AXI_rdata(31 downto 0) => microblaze_0_axi_dp_RDATA(31 downto 0),
      S00_AXI_rready(0) => microblaze_0_axi_dp_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_0_axi_dp_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => microblaze_0_axi_dp_RVALID(0),
      S00_AXI_wdata(31 downto 0) => microblaze_0_axi_dp_WDATA(31 downto 0),
      S00_AXI_wready(0) => microblaze_0_axi_dp_WREADY(0),
      S00_AXI_wstrb(3 downto 0) => microblaze_0_axi_dp_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => microblaze_0_axi_dp_WVALID
    );
microblaze_0_local_memory: entity work.microblaze_0_local_memory_imp_14Y43Z9
     port map (
      Clk => microblaze_0_Clk,
      DLMB_abus(0 to 31) => microblaze_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_0_dlmb_1_BE(0 to 3),
      DLMB_ce => microblaze_0_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => microblaze_0_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_0_dlmb_1_READSTROBE,
      DLMB_ready => microblaze_0_dlmb_1_READY,
      DLMB_ue => microblaze_0_dlmb_1_UE,
      DLMB_wait => microblaze_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_0_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => microblaze_0_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => microblaze_0_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_0_ilmb_1_READSTROBE,
      ILMB_ready => microblaze_0_ilmb_1_READY,
      ILMB_ue => microblaze_0_ilmb_1_UE,
      ILMB_wait => microblaze_0_ilmb_1_WAIT,
      SYS_Rst => rst_Clk_100M_bus_struct_reset(0)
    );
microblaze_0_xlconcat: component mb_subsystem_microblaze_0_xlconcat_3
     port map (
      In0(0) => axi_iic_0_iic2intc_irpt,
      In1(0) => axi_quad_spi_0_ip2intc_irpt,
      In2(0) => axi_uartlite_0_interrupt,
      dout(2 downto 0) => microblaze_0_intr(2 downto 0)
    );
rst_Clk_100M: component mb_subsystem_rst_Clk_100M_4
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_Clk_100M_bus_struct_reset(0),
      dcm_locked => '1',
      ext_reset_in => reset_rtl_0_1,
      interconnect_aresetn(0) => NLW_rst_Clk_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => mdm_1_debug_sys_rst,
      mb_reset => rst_Clk_100M_mb_reset,
      peripheral_aresetn(0) => rst_Clk_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_Clk_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => microblaze_0_Clk
    );
smpl_cmp_cmd: component mb_subsystem_axi_gpio_1_3
     port map (
      gpio_io_o(3 downto 0) => smpl_cmp_cmd_GPIO_TRI_O(3 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M14_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M14_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M14_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M14_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M14_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M14_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M14_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M14_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M14_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M14_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M14_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M14_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M14_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M14_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M14_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M14_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M14_AXI_WVALID(0)
    );
smpl_cmp_sel: component mb_subsystem_smpl_cmp_stat_0
     port map (
      gpio_io_o(0) => smpl_cmp_sel_GPIO_TRI_O(0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M16_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M16_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M16_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M16_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M16_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M16_AXI_AWVALID,
      s_axi_bready => microblaze_0_axi_periph_M16_AXI_BREADY,
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M16_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M16_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M16_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M16_AXI_RREADY,
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M16_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M16_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M16_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M16_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M16_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M16_AXI_WVALID
    );
smpl_cmp_stat: component mb_subsystem_axi_gpio_1_4
     port map (
      gpio_io_i(1 downto 0) => smpl_cmp_stat_GPIO_TRI_I(1 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M15_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M15_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M15_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M15_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M15_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M15_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M15_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M15_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M15_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M15_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M15_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M15_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M15_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M15_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M15_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M15_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M15_AXI_WVALID(0)
    );
vctcxo_tamer_ctrl: component mb_subsystem_axi_gpio_1_5
     port map (
      gpio_io_i(3 downto 0) => vctcxo_tamer_ctrl_GPIO_TRI_I(3 downto 0),
      s_axi_aclk => microblaze_0_Clk,
      s_axi_araddr(8 downto 0) => microblaze_0_axi_periph_M18_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_Clk_100M_peripheral_aresetn(0),
      s_axi_arready => microblaze_0_axi_periph_M18_AXI_ARREADY,
      s_axi_arvalid => microblaze_0_axi_periph_M18_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => microblaze_0_axi_periph_M18_AXI_AWADDR(8 downto 0),
      s_axi_awready => microblaze_0_axi_periph_M18_AXI_AWREADY,
      s_axi_awvalid => microblaze_0_axi_periph_M18_AXI_AWVALID(0),
      s_axi_bready => microblaze_0_axi_periph_M18_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => microblaze_0_axi_periph_M18_AXI_BRESP(1 downto 0),
      s_axi_bvalid => microblaze_0_axi_periph_M18_AXI_BVALID,
      s_axi_rdata(31 downto 0) => microblaze_0_axi_periph_M18_AXI_RDATA(31 downto 0),
      s_axi_rready => microblaze_0_axi_periph_M18_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => microblaze_0_axi_periph_M18_AXI_RRESP(1 downto 0),
      s_axi_rvalid => microblaze_0_axi_periph_M18_AXI_RVALID,
      s_axi_wdata(31 downto 0) => microblaze_0_axi_periph_M18_AXI_WDATA(31 downto 0),
      s_axi_wready => microblaze_0_axi_periph_M18_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => microblaze_0_axi_periph_M18_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => microblaze_0_axi_periph_M18_AXI_WVALID(0)
    );
end STRUCTURE;
