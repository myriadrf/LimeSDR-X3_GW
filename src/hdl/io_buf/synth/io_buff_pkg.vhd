-- ----------------------------------------------------------------------------
-- FILE:          io_buff_pkg.vhd
-- DESCRIPTION:   package for io_buff module
-- DATE:          01:25 PM Thursday, May 23, 2019
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
-- Package declaration
-- ----------------------------------------------------------------------------
package io_buff_pkg is
   
   -- ADC->FPGA
   type t_FROM_ADC is record
      CLKOUT   : std_logic;
      DA       : std_logic_vector(6 downto 0);
      DB       : std_logic_vector(6 downto 0);
   end record t_FROM_ADC;
  
   -- FPGA -> ADC 
   type t_TO_ADC is record
      CLK   : std_logic;
      RESET : std_logic;
   end record t_TO_ADC;
    
end package io_buff_pkg;


