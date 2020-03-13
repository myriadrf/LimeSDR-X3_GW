-- ----------------------------------------------------------------------------
-- FILE:          ibufs.vhd
-- DESCRIPTION:   Input buffers in one place
-- DATE:          2020/03/03
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
--NOTES:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Library UNISIM;
use UNISIM.vcomponents.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity ibufs is
   port (

      CLK100_FPGA_P  : in  std_logic;
      CLK100_FPGA_N  : in  std_logic;
      clk100_fpga    : out std_logic;
      
      FPGA_AUXCLK_P  :  in  std_logic;
      FPGA_AUXCLK_N  :  in  std_logic;
      fpga_auxclk    :  out std_logic

      );
end ibufs;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of ibufs is
--declare signals,  components here

  
begin

   -- Diffrential buffer for CLK100_FPGA
   IBUFDS_inst0 : IBUFDS
      generic map (
         DIFF_TERM      => FALSE, -- Differential Termination 
         IBUF_LOW_PWR   => TRUE,  -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => clk100_fpga,       -- Buffer output
         I  => CLK100_FPGA_P,     -- Diff_p buffer input (connect directly to top-level port)
         IB => CLK100_FPGA_N      -- Diff_n buffer input (connect directly to top-level port)
      );
      
      -- Diffrential buffer for FPGA_AUXCLK
   IBUFDS_inst1 : IBUFDS
      generic map (
         DIFF_TERM      => FALSE, -- Differential Termination 
         IBUF_LOW_PWR   => TRUE,  -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => fpga_auxclk,       -- Buffer output
         I  => FPGA_AUXCLK_P,     -- Diff_p buffer input (connect directly to top-level port)
         IB => FPGA_AUXCLK_N      -- Diff_n buffer input (connect directly to top-level port)
      );
  
end arch;   


