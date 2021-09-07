-- ----------------------------------------------------------------------------	
-- FILE: 	dccorra.vhd
-- DESCRIPTION:	Automatic DC correction, 18 input bits, 
--				two channels, behavioral implementation
-- DATE:	Aug 03, 2012
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dccorra is
   port 
   (
      clk      : in  std_logic;
      nrst     : in  std_logic;
      en       : in  std_logic;
      bypass   : in  std_logic;
      avg      : in  std_logic_vector(2 downto 0);-- 2^(avg + 12)
      xi       : in  std_logic_vector(17 downto 0);
      xq       : in  std_logic_vector(17 downto 0);
      yi       : out std_logic_vector(17 downto 0);
      yq       : out std_logic_vector(17 downto 0)
   );
	
end entity;

architecture rtl of dccorra is

   signal avg_signed  : signed(avg'left downto 0);
   signal xi_signed   : signed(xi'left downto 0); 
   signal xq_signed   : signed(xq'left downto 0);
   
	signal aregi, aregq: signed(36 downto 0);
	signal creg: unsigned(18 downto 0);
	signal dcregi, dcregq: signed(17 downto 0);
	signal ren: std_logic;

begin

   avg_signed  <= signed(avg);
   xi_signed   <= signed(xi);
   xq_signed   <= signed(xq);

	-- ----------------------------------------------
	-- Counter
	-- ----------------------------------------------
	cnt: process(clk, nrst)
	begin
		if nrst = '0' then
			creg <= (others => '0');
		elsif (rising_edge(clk)) then
			if (en = '1') then
				creg <= creg + 1;
			end if;
		end if;
	end process cnt;
	
	ren <=	'1' when creg								= "1111111111111111111"	and avg_signed = "111" else
					'1' when creg(17 downto 0)	= "111111111111111111"	and avg_signed = "110" else
					'1' when creg(16 downto 0)	= "11111111111111111"		and avg_signed = "101" else
					'1' when creg(15 downto 0)	= "1111111111111111"		and avg_signed = "100" else
					'1' when creg(14 downto 0)	= "111111111111111"			and avg_signed = "011" else
					'1' when creg(13 downto 0)	= "11111111111111"			and avg_signed = "010" else
					'1' when creg(12 downto 0)	= "1111111111111"				and avg_signed = "001" else
					'1' when creg(11 downto 0)	= "111111111111"				and avg_signed = "000" else
					'0';

	
	-- ----------------------------------------------
	-- Accumulator I
	-- ----------------------------------------------
	acci: process(clk, nrst)
	begin
		if nrst = '0' then
			aregi <= (others => '0');
		elsif (rising_edge(clk)) then
			if (en = '1') then
				if(ren = '1') then
					aregi <= resize(xi_signed, aregi'length);
				else
					aregi <= aregi + resize(xi_signed, aregi'length);
				end if;
			end if;
		end if;
	end process acci;
	
	-- ----------------------------------------------
	-- Accumulator Q
	-- ----------------------------------------------
	accq: process(clk, nrst)
	begin
		if nrst = '0' then
			aregq <= (others => '0');
		elsif (rising_edge(clk)) then
			if (en = '1') then
				if(ren = '1') then
					aregq <= resize(xq_signed, aregq'length);
				else
					aregq <= aregq + resize(xq_signed, aregq'length);
				end if;
			end if;
		end if;
	end process accq;






	-- ----------------------------------------------
	-- DC Register I
	-- ----------------------------------------------
	dcri: process(clk, nrst)
	begin
		if nrst = '0' then
			dcregi <= (others => '0');
		elsif (rising_edge(clk)) then
			if(en = '1') and (ren = '1') then
				if		  avg_signed = "111" then dcregi <=	aregi(36 downto 19);
					elsif	avg_signed = "110" then dcregi <=	aregi(35 downto 18);
					elsif	avg_signed = "101" then dcregi <=	aregi(34 downto 17);
					elsif	avg_signed = "100" then dcregi <=	aregi(33 downto 16);
					elsif	avg_signed = "011" then dcregi <=	aregi(32 downto 15);
					elsif	avg_signed = "010" then dcregi <=	aregi(31 downto 14);
					elsif	avg_signed = "001" then dcregi <=	aregi(30 downto 13);
					else									 dcregi <=	aregi(29 downto 12);
				end if;
			end if;
		end if;
	end process dcri;
	
	-- ----------------------------------------------
	-- DC Register Q
	-- ----------------------------------------------
	dcrq: process(clk, nrst)
	begin
		if nrst = '0' then
			dcregq <= (others => '0');
		elsif (rising_edge(clk)) then
			if(en = '1') and (ren = '1') then
				if		  avg_signed = "111" then dcregq <=	aregq(36 downto 19);
					elsif	avg_signed = "110" then dcregq <=	aregq(35 downto 18);
					elsif	avg_signed = "101" then dcregq <=	aregq(34 downto 17);
					elsif	avg_signed = "100" then dcregq <=	aregq(33 downto 16);
					elsif	avg_signed = "011" then dcregq <=	aregq(32 downto 15);
					elsif	avg_signed = "010" then dcregq <=	aregq(31 downto 14);
					elsif	avg_signed = "001" then dcregq <=	aregq(30 downto 13);
					else									 dcregq <=	aregq(29 downto 12);
				end if;
			end if;
		end if;
	end process dcrq;


	-- ----------------------------------------------
	-- Output Register & bypass function
	-- ----------------------------------------------
	outr: process(clk, nrst)
	begin
		if nrst = '0' then
			yi <= (others => '0');
			yq <= (others => '0');
		elsif (rising_edge(clk)) then
			if(en = '1') then
				if bypass = '1' then --bypass
					yi <= std_logic_vector(xi_signed);
					yq <= std_logic_vector(xq_signed);
				else
					yi <= std_logic_vector(xi_signed - dcregi);
					yq <= std_logic_vector(xq_signed - dcregq);
				end if;
			end if;
		end if;
	end process outr;
	
end rtl; 