-------------------------------------------------------------------------------
-- Title      : WRPC reference design for KM3NeT Central Logic Board (CLBv3)
--            : based on artix-7
-- Project    : WR PTP Core
-- URL        : http://www.ohwr.org/projects/wr-cores/wiki/Wrpc_core
-------------------------------------------------------------------------------
-- File       : clbv3_wr_ref_top.vhd
-- Author(s)  : Peter Jansweijer <peterj@nikhef.nl>
-- Company    : Nikhef
-- Created    : 2017-11-08
-- Last update: 2017-11-08
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: Top-level file for the WRPC reference design on the clbv3.
--
-- This is a reference top HDL that instanciates the WR PTP Core together with
-- its peripherals to be run on a CLB card.
--
-- There are two main usecases for this HDL file:
-- * let new users easily synthesize a WR PTP Core bitstream that can be run on
--   reference hardware
-- * provide a reference top HDL file showing how the WRPC can be instantiated
--   in HDL projects.
--
-------------------------------------------------------------------------------
-- Copyright (c) 2017 Nikhef
-------------------------------------------------------------------------------
-- GNU LESSER GENERAL PUBLIC LICENSE
--
-- This source file is free software; you can redistribute it
-- and/or modify it under the terms of the GNU Lesser General
-- Public License as published by the Free Software Foundation;
-- either version 2.1 of the License, or (at your option) any
-- later version.
--
-- This source is distributed in the hope that it will be
-- useful, but WITHOUT ANY WARRANTY; without even the implied
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
-- PURPOSE.  See the GNU Lesser General Public License for more
-- details.
--
-- You should have received a copy of the GNU Lesser General
-- Public License along with this source; if not, download it
-- from http://www.gnu.org/licenses/lgpl-2.1.html
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.gencores_pkg.all;
use work.wishbone_pkg.all;
use work.wr_board_pkg.all;
use work.wr_clbv3_pkg.all;
--use work.gn4124_core_pkg.all;

library unisim;
use unisim.vcomponents.all;

entity wrpc_top is
   generic (
      g_dpram_initf : string := "D:\work_dir\LimeSDR-X3\wrpc\wrpc-v4.2\bin\wrpc\wrc_phy16.bram";
      -- Simulation-mode enable parameter. Set by default (synthesis) to 0, and
      -- changed to non-zero in the instantiation of the top level DUT in the testbench.
      -- Its purpose is to reduce some internal counters/timeouts to speed up simulations.
      g_simulation : integer := 0
   );
   port (
   ---------------------------------------------------------------------------`
   -- Clocks/resets
   ---------------------------------------------------------------------------
   
   -- Local oscillators
   clk_125m_dmtd_p_i   : in std_logic;             -- 124.992 MHz PLL reference
   clk_125m_dmtd_n_i   : in std_logic;
   
   clk_125m_gtp_n_i    : in std_logic;              -- 125.000 MHz GTP reference
   clk_125m_gtp_p_i    : in std_logic;
   
   clk_20m_vcxo_i      : in std_logic;
   
   clk_ext_100m        : in std_logic;
   
   ---------------------------------------------------------------------------
   -- SPI interface to DACs
   ---------------------------------------------------------------------------
   
   dac_refclk_cs_n_o   : out std_logic;
   dac_refclk_sclk_o   : out std_logic;
   dac_refclk_din_o    : out std_logic;
   
   dac_dmtd_cs_n_o     : out std_logic;
   dac_dmtd_sclk_o     : out std_logic;
   dac_dmtd_din_o      : out std_logic;
   
   ---------------------------------------------------------------------------
   -- SFP I/O for transceiver
   ---------------------------------------------------------------------------
   
   sfp_txp_o           : out   std_logic;
   sfp_txn_o           : out   std_logic;
   sfp_rxp_i           : in    std_logic;
   sfp_rxn_i           : in    std_logic;
   sfp_mod_def0_i      : in    std_logic;          -- sfp detect
   sfp_mod_def1_b      : inout std_logic;          -- scl
   sfp_mod_def2_b      : inout std_logic;          -- sda
   sfp_rate_select_o   : out   std_logic;
   sfp_tx_fault_i      : in    std_logic;
   sfp_tx_disable_o    : out   std_logic;
   sfp_los_i           : in    std_logic;
   
   ---------------------------------------------------------------------------
   -- UART
   ---------------------------------------------------------------------------
   
   uart_rxd_i          : in  std_logic;
   uart_txd_o          : out std_logic;
   
   ---------------------------------------------------------------------------
   -- Miscellanous clbv3 pins
   ---------------------------------------------------------------------------
   -- Red LED next to the SFP: blinking indicates that packets are being
   -- transferred.
   led_act_o           : out std_logic;
   -- Green LED next to the SFP: indicates if the link is up.
   led_link_o          : out std_logic;
   
   reset_n             : in  std_logic;
   
   -- I2C interface for accessing FMC EEPROM. Deprecated, was used in
   -- pre-v3.0 releases to store WRPC configuration. Now we use Flash for this.
   eeprom_sda_i        : in     std_logic;
   eeprom_sda_o        : out    std_logic;
   eeprom_scl_i        : in     std_logic;
   eeprom_scl_o        : out    std_logic;
   
   --1-PPS from external reference (in GrandMaster mode).
   wrc_pps_in          : in     std_logic;
   --WR-aligned 1-PPS (in Slave mode)
   wrc_pps_out_ext     : out    std_logic;
   wrc_pps_out_int     : out    std_logic
   
   );
end entity wrpc_top;

architecture top of wrpc_top is

  -----------------------------------------------------------------------------
  -- Constants
  -----------------------------------------------------------------------------
    
  -----------------------------------------------------------------------------
  -- Signals
  -----------------------------------------------------------------------------

  -- clock and reset
  signal clk_sys_62m5   : std_logic;
  signal rst_sys_62m5_n : std_logic;
  signal rst_ref_62m5_n : std_logic;
  signal clk_ref_62m5   : std_logic;
  signal clk_dmtd_62m5  : std_logic;
  signal clk_ext_10m    : std_logic;

  -- SFP
  signal sfp_sda_in  : std_logic;
  signal sfp_sda_out : std_logic;
  signal sfp_scl_in  : std_logic;
  signal sfp_scl_out : std_logic;

  -- OneWire
  signal onewire_data : std_logic;
  signal onewire_oe   : std_logic;

  -- LEDs and GPIO
  signal wrc_abscal_txts_out : std_logic;
  signal wrc_abscal_rxts_out : std_logic;
  signal wrc_pps_led : std_logic;

  -- BullsEye connector outputs
  
  signal led_link           : std_logic;
  signal led_act            : std_logic;
  
  signal mmcm_10mhz_fbo     : std_logic;
  signal mmcm_10mhz_clk     : std_logic;
  signal mmcm_10mhz_fbi     : std_logic;
  
  signal pps_p_o            : std_logic;
  signal pps_oddr           : std_logic;
  

begin  -- architecture top

  -----------------------------------------------------------------------------
  -- The WR PTP core board package (WB Slave + WB Master)
  -----------------------------------------------------------------------------
  
   cmp_xwrc_board_clbv3 : xwrc_board_clbv3
   generic map (
      g_simulation                => g_simulation,
      g_with_external_clock_input => TRUE,
      g_dpram_initf               => g_dpram_initf,
      g_fabric_iface              => PLAIN)
   port map (
      areset_n_i          => reset_n,
      clk_125m_dmtd_n_i   => clk_125m_dmtd_n_i,
      clk_125m_dmtd_p_i   => clk_125m_dmtd_p_i,
      clk_125m_gtp_n_i    => clk_125m_gtp_n_i,
      clk_125m_gtp_p_i    => clk_125m_gtp_p_i,
      clk_20m_vcxo_i      => clk_20m_vcxo_i,
      clk_10m_ext_i       => clk_ext_10m,
      clk_sys_62m5_o      => clk_sys_62m5,
      clk_ref_62m5_o      => clk_ref_62m5,
      clk_dmtd_62m5_o     => clk_dmtd_62m5,
      rst_sys_62m5_n_o    => rst_sys_62m5_n,
      rst_ref_62m5_n_o    => rst_ref_62m5_n,

      dac_refclk_cs_n_o   => dac_refclk_cs_n_o,
      dac_refclk_sclk_o   => dac_refclk_sclk_o,
      dac_refclk_din_o    => dac_refclk_din_o,
      dac_dmtd_cs_n_o     => dac_dmtd_cs_n_o,
      dac_dmtd_sclk_o     => dac_dmtd_sclk_o, 
      dac_dmtd_din_o      => dac_dmtd_din_o, 

      sfp_txp_o           => sfp_txp_o,
      sfp_txn_o           => sfp_txn_o,
      sfp_rxp_i           => sfp_rxp_i,
      sfp_rxn_i           => sfp_rxn_i,
      sfp_det_i           => sfp_mod_def0_i,
      sfp_sda_i           => sfp_sda_in,
      sfp_sda_o           => sfp_sda_out,
      sfp_scl_i           => sfp_scl_in,
      sfp_scl_o           => sfp_scl_out,
      sfp_rate_select_o   => sfp_rate_select_o,
      sfp_tx_fault_i      => sfp_tx_fault_i,
      sfp_tx_disable_o    => sfp_tx_disable_o,
      sfp_los_i           => sfp_los_i,

      eeprom_sda_i        => eeprom_sda_i,
      eeprom_sda_o        => eeprom_sda_o,
      eeprom_scl_i        => eeprom_scl_i,
      eeprom_scl_o        => eeprom_scl_o,

      onewire_i           => onewire_data,
      onewire_oen_o       => onewire_oe,
      -- Uart
      uart_rxd_i          => uart_rxd_i,
      uart_txd_o          => uart_txd_o,
      
      abscal_txts_o       => wrc_abscal_txts_out,
      abscal_rxts_o       => wrc_abscal_rxts_out,

      pps_ext_i           => wrc_pps_in,
      pps_p_o             => pps_p_o, --wrc_pps_out,
      pps_led_o           => wrc_pps_led,
      led_link_o          => led_link,
      led_act_o           => led_act
   );

  led_link_o <= NOT led_link;
  led_act_o  <= NOT led_act;
  
  -- Tristates for SFP EEPROM
  sfp_mod_def1_b <= '0' when sfp_scl_out = '0' else 'Z';
  sfp_mod_def2_b <= '0' when sfp_sda_out = '0' else 'Z';
  sfp_scl_in     <= sfp_mod_def1_b;
  sfp_sda_in     <= sfp_mod_def2_b;

  -- onewire access
  onewire_data <= '0';  
  
  ------------------------------------------------------------------------------
  -- Digital I/O FMC Mezzanine connections
  ------------------------------------------------------------------------------
      
   --mmcm_10mhz_fb_bufg: BUFG
   --port map (
   --   O  => mmcm_10mhz_fbi,
   --   I  => mmcm_10mhz_fbo);
   
   mmcm_10mhz_fbi <= mmcm_10mhz_fbo;
      
   --mmcm_10mhz_clkout0_bufg: BUFG
   --port map (
   --   O  => clk_ext_10m,
   --   I  => mmcm_10mhz_clk);
      
   mmcm_10mhz : MMCME2_ADV
      generic map (
         BANDWIDTH            => "OPTIMIZED",
         CLKOUT4_CASCADE      => FALSE,
         COMPENSATION         => "INTERNAL",
         STARTUP_WAIT         => FALSE,
         DIVCLK_DIVIDE        => 2,
         CLKFBOUT_MULT_F      => 15.625,
         CLKFBOUT_PHASE       => 0.000,
         CLKFBOUT_USE_FINE_PS => FALSE,
         CLKOUT0_DIVIDE_F     => 78.125,
         CLKOUT0_PHASE        => 0.000,
         CLKOUT0_DUTY_CYCLE   => 0.500,
         CLKOUT0_USE_FINE_PS  => FALSE,
         CLKIN1_PERIOD        => 10.000)
      port map (
         -- Output clocks
         CLKFBOUT  => mmcm_10mhz_fbo,
         CLKOUT0   => clk_ext_10m, --mmcm_10mhz_clk,
         -- Input clock control
         CLKFBIN   => mmcm_10mhz_fbi,
         CLKIN1    => clk_ext_100m,
         CLKIN2    => '0',
         -- Tied to always select the primary input clock
         CLKINSEL  => '1',
         -- Ports for dynamic reconfiguration
         DADDR     => (others => '0'),
         DCLK      => '0',
         DEN       => '0',
         DI        => (others => '0'),
         DO        => open,
         DRDY      => open,
         DWE       => '0',
         -- Ports for dynamic phase shift
         PSCLK     => '0',
         PSEN      => '0',
         PSINCDEC  => '0',
         PSDONE    => open, -- Other control and status signals
         LOCKED    => open,
         CLKINSTOPPED => open,
         CLKFBSTOPPED => open,
         PWRDWN   => '0',
         RST      => NOT reset_n
   ); 


   oddr_pps: ODDR
   generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT         => '0',
      SRTYPE       => "SYNC")
   port map(
      Q  => wrc_pps_out_ext,
      C  => clk_ref_62m5,
      CE => '1',
      D1 => pps_p_o,
      D2 => pps_p_o,
      R  => '0',
      S  => '0'
   );
   
   wrc_pps_out_int <= pps_p_o;
   
   
end architecture top;
