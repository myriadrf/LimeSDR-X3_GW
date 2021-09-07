-- ----------------------------------------------------------------------------   
-- FILE:    generic_oddr.vhd
-- DESCRIPTION:   generic DDR output 
-- DATE:   Sep 04, 2021
-- AUTHOR(s):   Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------   
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------

entity generic_oddr is 
port (
	aclr       : in  std_logic;
	datain_h   : in  std_logic;
	datain_l   : in  std_logic;
	outclk     : in  std_logic;
	dataout    : out std_logic
);
end generic_oddr;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of generic_oddr is

   signal datain_h_reg : std_logic;
   signal datain_l_reg : std_logic;

begin

   
   process (aclr, outclk) 
   begin
      if aclr = '1' then
          datain_h_reg <= '0';
          datain_l_reg <= '0';
      elsif rising_edge(outclk) then 
          datain_h_reg <= datain_h;
          datain_l_reg <= datain_l;
      end if;
   end process;

   dataout <= datain_h_reg when outclk='1' else datain_l_reg;

end arch;


