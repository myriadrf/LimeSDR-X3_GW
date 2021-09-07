-- ----------------------------------------------------------------------------
-- FILE:          max5878.vhd
-- DESCRIPTION:   Data modules for max5878 DAC
-- DATE:          Feb 12, 2020
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- NOTES:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Library UNISIM;
use UNISIM.vcomponents.all;
-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity max5878 is
   port (
      -- Reference clock
      refclk_p    : in  std_logic;
      refclk_n    : in  std_logic;
      clk_out     : out std_logic;
      reset_n     : in  std_logic;
      -- Data input 
      data_in_i   : in std_logic_vector(15 downto 0);
      data_in_q   : in std_logic_vector(15 downto 0);
      -- output to DAC
      clk_p       : out std_logic;
      clk_n       : out std_logic;
      b_p         : out std_logic_vector(15 downto 0);
      b_n         : out std_logic_vector(15 downto 0);
      seliq_p     : out std_logic;
      seliq_n     : out std_logic
   );
end max5878;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of max5878 is
--declare signals,  components here
signal clk_ibuf      : std_logic;
signal clk_bufr_0    : std_logic;
signal clk_oddr      : std_logic;
signal data          : std_logic_vector(31 downto 0);
signal data_out      : std_logic_vector(31 downto 0);
signal data_out_iob  : std_logic_vector(31 downto 0);
signal data_ddr      : std_logic_vector(31 downto 0);
signal pll_c0        : std_logic;
signal pll_c1        : std_logic;
signal clk_div       : std_logic;


   component clk_wiz_0
   port (
      clk_in1_p   : in std_logic;
      clk_in1_n   : in std_logic;
      clk_out1    : out std_logic;
      clk_out2    : out std_logic
   );
   end component;
    
   component dac5878_io
   generic ( 
      SYS_W : integer := 16;
      DEV_W : integer := 32
   );
   port (
      data_out_from_device : in std_logic_vector(DEV_W-1 downto 0);
      data_out_to_pins_p   : out std_logic_vector(SYS_W-1 downto 0);
      data_out_to_pins_n   : out std_logic_vector(SYS_W-1 downto 0);
      seliq_to_pins_p      : out std_logic;
      seliq_to_pins_n      : out std_logic;
      --ref_clock            : in std_logic;
      clk_to_pins_p        : out std_logic;
      clk_to_pins_n        : out std_logic;
      clk_in_p             : in std_logic;
      clk_in_n             : in std_logic;
      clk_div_out          : out std_logic;
      clk_reset            : in std_logic;
      --delay_locked         : out std_logic;
      io_reset             : in std_logic
      );
   end component;
   
   
begin
 
-- ----------------------------------------------------------------------------
-- Internal logic
-- ---------------------------------------------------------------------------- 
   data_inst : entity work.data_gen
   generic map(
      data_width  => 32
   )
   port map(
      clk      => clk_div,
      reset_n  => reset_n,
      data     => data
   );
    
-- ----------------------------------------------------------------------------
-- Output buffers
-- ----------------------------------------------------------------------------     
   io_inst0 : dac5878_io
   generic map( 
      SYS_W =>  16,
      DEV_W =>  32
   )
   port map(
      data_out_from_device => data,
      data_out_to_pins_p   => b_p,
      data_out_to_pins_n   => b_n,
      seliq_to_pins_p      => seliq_p,
      seliq_to_pins_n      => seliq_n,
      --ref_clock            => clk200,
      clk_to_pins_p        => clk_p,
      clk_to_pins_n        => clk_n,
      clk_in_p             => refclk_p,
      clk_in_n             => refclk_n,
      clk_div_out          => clk_div,
      clk_reset            => '0',
      --delay_locked         => open,
      io_reset             => '0'
      );
 
  
end arch;   


