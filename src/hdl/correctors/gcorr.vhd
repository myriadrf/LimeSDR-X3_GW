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

	signal mux 	: signed (17 downto 0);
	signal r		: signed (17 downto 0);
	signal m		: signed (29 downto 0);
   
   signal gc_unisgned   : unsigned(gc'left downto 0);
   signal x_signed      : signed(x'left downto 0);
   signal y_signed      : signed(y'left downto 0);
   
begin

   gc_unisgned <= unsigned(gc);
   x_signed    <= signed(x);
   
   --m inside clocked process to increase fmax
   process(clk, nrst)
	begin
		if(nrst = '0') then
			m <= (others => '0');
		elsif rising_edge(clk) then
         m <= x_signed * signed('0' & gc_unisgned);
		end if;		
	end process;
   
	--m <= x * signed('0' & gc);
	mux <= m(28 downto 11) when byp = '0' else x_signed;

	reg: process(clk, nrst)
	begin
		if(nrst = '0') then
			r <= (others => '0');
		elsif rising_edge(clk) then
			if en = '1' then
				r <= mux;
			end if;
		end if;
		
	end process reg;
 
 -- Output	
 y <= std_logic_vector(r);

end gcorr_arch;