--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Wed Jul 24 16:53:54 2019
--Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
--Command     : generate_target mb_subsystem_wrapper.bd
--Design      : mb_subsystem_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_wrapper is
  port (
    Clk : in STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_rtl_0 : in STD_LOGIC
  );
end mb_subsystem_wrapper;

architecture STRUCTURE of mb_subsystem_wrapper is
  component mb_subsystem is
  port (
    Clk : in STD_LOGIC;
    gpio_rtl_0_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_rtl_0 : in STD_LOGIC
  );
  end component mb_subsystem;
begin
mb_subsystem_i: component mb_subsystem
     port map (
      Clk => Clk,
      gpio_rtl_0_tri_o(7 downto 0) => gpio_rtl_0_tri_o(7 downto 0),
      reset_rtl_0 => reset_rtl_0
    );
end STRUCTURE;
