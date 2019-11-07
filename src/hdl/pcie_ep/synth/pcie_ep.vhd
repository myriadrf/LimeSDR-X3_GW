-- ----------------------------------------------------------------------------
-- FILE:          pcie_ep.vhd
-- DESCRIPTION:   Reads packets from FIFO and writes to coressponding endpoint FIFO
-- DATE:          10:22 AM Thursday, November 7, 2019
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
entity entity_templ is
   generic(
      diq_width   : integer := 12
   );
   port (

      clk      : in std_logic;
      reset_n  : in std_logic;


        );
end entity_templ;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of entity_templ is
--declare signals,  components here
signal my_sig_name : std_logic_vector (7 downto 0); 

  
begin


 process(reset_n, clk)
    begin
      if reset_n='0' then
        --reset  
      elsif (clk'event and clk = '1') then
         --in process
      end if;
    end process;
  
end arch;   


