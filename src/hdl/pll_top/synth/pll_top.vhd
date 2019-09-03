-- ----------------------------------------------------------------------------
-- FILE:          pll_top.vhd
-- DESCRIPTION:   describe file
-- DATE:          Jan 27, 2016
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
--NOTES:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity pll_top is
   port (
      -- LMS#1 TX PLL ports
      lms1_txpll_inclk              : in  std_logic;
      lms1_txpll_logic_reset_n      : in  std_logic;
      lms1_txpll_c0                 : out std_logic;
      lms1_txpll_c1                 : out std_logic;
      lms1_txpll_locked             : out std_logic;
      -- LMS#1 RX PLL ports
      lms1_rxpll_inclk              : in  std_logic;
      lms1_rxpll_logic_reset_n      : in  std_logic;
      lms1_rxpll_c0                 : out std_logic;
      lms1_rxpll_c1                 : out std_logic;
      lms1_rxpll_locked             : out std_logic;
      -- LMS#1 TX PLL ports
      lms2_txpll_inclk              : in  std_logic;
      lms2_txpll_logic_reset_n      : in  std_logic;
      lms2_txpll_c0                 : out std_logic;
      lms2_txpll_c1                 : out std_logic;
      lms2_txpll_locked             : out std_logic;
      -- LMS#1 RX PLL ports
      lms2_rxpll_inclk              : in  std_logic;
      lms2_rxpll_logic_reset_n      : in  std_logic;
      lms2_rxpll_c0                 : out std_logic;
      lms2_rxpll_c1                 : out std_logic;
      lms2_rxpll_locked             : out std_logic;
      -- ADC PLL ports
      adcpll_inclk                  : in  std_logic;
      adcpll_logic_reset_n          : in  std_logic;
      adcpll_c0                     : out std_logic;
      adcpll_locked                 : out std_logic
   );
end pll_top;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of pll_top is
--declare signals,  components here

component rx_pll is
  Port ( 
    clk_out1   : out STD_LOGIC;
    clk_out2   : out STD_LOGIC;
    reset      : in STD_LOGIC;
    locked     : out STD_LOGIC;
    clk_in1    : in STD_LOGIC
  );
  end component;
  
  component tx_pll is
    Port ( 
      clk_out1 : out STD_LOGIC;
      clk_out2 : out STD_LOGIC;
      reset    : in STD_LOGIC;
      locked   : out STD_LOGIC;
      clk_in1  : in STD_LOGIC
    );
    end component;
    
   component adc_pll is
    Port ( 
      clk_out1 : out STD_LOGIC;
      reset    : in STD_LOGIC;
      locked   : out STD_LOGIC;
      clk_in1  : in STD_LOGIC
    );
    end component;
  
begin

-- ----------------------------------------------------------------------------
-- TX PLL instance for LMS#1
-- ----------------------------------------------------------------------------
  inst0 : tx_pll
  Port map( 
    clk_out1 => lms1_txpll_c0,
    clk_out2 => lms1_txpll_c1,
    reset    => lms1_txpll_logic_reset_n,
    locked   => lms1_txpll_locked,
    clk_in1  => lms1_txpll_inclk
  );
  
-- ----------------------------------------------------------------------------
-- RX PLL instance for LMS#1
-- ----------------------------------------------------------------------------
  inst1 : rx_pll
  Port map( 
    clk_out1 => lms1_rxpll_c0,
    clk_out2 => lms1_rxpll_c1,
    reset    => lms1_rxpll_logic_reset_n,
    locked   => lms1_rxpll_locked,
    clk_in1  => lms1_rxpll_inclk
  );
  
-- ----------------------------------------------------------------------------
-- TX PLL instance for LMS#2
-- ----------------------------------------------------------------------------
  inst2 : tx_pll
  Port map( 
    clk_out1 => lms2_txpll_c0,
    clk_out2 => lms2_txpll_c1,
    reset    => lms2_txpll_logic_reset_n,
    locked   => lms2_txpll_locked,
    clk_in1  => lms2_txpll_inclk
  );
  
-- ----------------------------------------------------------------------------
-- RX PLL instance for LMS#2
-- ----------------------------------------------------------------------------
  inst3 : rx_pll
  Port map( 
    clk_out1 => lms2_rxpll_c0,
    clk_out2 => lms2_rxpll_c1,
    reset    => lms2_rxpll_logic_reset_n,
    locked   => lms2_rxpll_locked,
    clk_in1  => lms2_rxpll_inclk
  );
  
  
-- ----------------------------------------------------------------------------
-- ADC PLL instance
-- ----------------------------------------------------------------------------
  inst4 : adc_pll
  Port map( 
    clk_out1 => adcpll_c0,
    reset    => adcpll_logic_reset_n,
    locked   => adcpll_locked,
    clk_in1  => adcpll_inclk
  );
  
end arch;   
