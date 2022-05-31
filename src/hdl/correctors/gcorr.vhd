-- ----------------------------------------------------------------------------	
-- FILE: 	gcorr.vhd
-- DESCRIPTION:	Gain corrector (Tx, Rx).
-- DATE:	Nov 25, 2012
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity gcorr is
port
	(
		clk	: in std_logic;
		nrst	: in std_logic;
		en		: in std_logic;
		byp	: in std_logic;
		x		: in std_logic_vector(17 downto 0);
		gc		: in std_logic_vector (10 downto 0);
		y		: out std_logic_vector (17 downto 0)
	);
end gcorr;


-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture gcorr_arch of gcorr is

	signal m		: std_logic_vector (35 downto 0);
   
   signal gc_padded     : std_logic_vector(x'left downto 0);
   signal sclr          : std_logic;
   

   
begin
     --Pad gc in order to be large enough for 18x18 multiplier
     gc_padded   <= "0000000" & gc;
     sclr        <= not nrst;

    --Multiply input by coefficient
    ----Note : this module is pipelined and introduces latency
	Multiplier : entity work.multiplier2_pipelined PORT MAP(clk => clk, sclr => sclr, dataa => x, datab => gc_padded, result => m);

    --Mux and register output
	reg: process(clk, nrst)
	begin
		if(nrst = '0') then
			y <= (others => '0');
		elsif rising_edge(clk) then
			if en = '1' then
				y <= m(28 downto 11) when byp = '0' else x;
			end if;
		end if;
		
	end process reg;
 

end gcorr_arch;