-- ----------------------------------------------------------------------------   
-- FILE:    lut_delay.vhd
-- DESCRIPTION:   
-- DATE:   Mar 14, 2016
-- AUTHOR(s):   Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------   
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Library UNISIM;
use UNISIM.vcomponents.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity lut_delay is
   generic (
      N_TAPS : integer := 30
   );
   port (
      d     : in std_logic;
      q     : out std_logic;
      sel   : in std_logic_vector(1 downto 0)
   );
end lut_delay;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of lut_delay is

   signal int_wire : std_logic_vector(N_TAPS-1 downto 0);
   
   attribute DONT_TOUCH : string;
   attribute DONT_TOUCH of int_wire : signal is "TRUE";

begin

    dly_gen : 
    for i in 0 to N_TAPS-1 generate
       --first lcell instance
       first : if i = 0 generate 
         LUT_inst0 : LUT1
            generic map (INIT => "10")   -- "10" - buffer, "01" - inverter
            port map (
               O  => int_wire(i),   -- LUT general output
               I0 => d  -- LUT input
            );
       end generate first;
       --rest of the lcell instance
       rest : if i > 0 generate
         LUT_instx : LUT1
            generic map (INIT => "10")   -- "10" - buffer, "01" - inverter
            port map (
               O  => int_wire(i),   -- LUT general output
               I0 => int_wire(i-1)  -- LUT input
            );
       end generate rest;
    end generate dly_gen;
    
    
    q <= d            when sel = "00" else
         int_wire( 9) when sel = "01" else 
         int_wire(19) when sel = "10" else 
         int_wire(29);
    

end arch;