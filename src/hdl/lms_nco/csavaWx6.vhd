-- ----------------------------------------------------------------------------	
-- FILE: 	csava7x6.vhd
-- DESCRIPTION:	Carry Save Adder with 6 7-bit inputs. It generates
--		partial result in the form of 7-bit sums and carries.
-- DATE:	Dec 15, 1999
-- AUTHOR(s):	Microelectronic Centre Design Team
--		MUMEC
--		Bounds Green Road
--		N11 2NQ London
-- REVISIONS:
-- ----------------------------------------------------------------------------	

library IEEE;
use IEEE.std_logic_1164.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity csavaWx6 is
	generic (WIDTH: integer);
    port (
	clk : in std_logic;
	in1: in std_logic_vector(WIDTH-1 downto 0); -- First input
	in2: in std_logic_vector(WIDTH-1 downto 0);
	in3: in std_logic_vector(WIDTH-1 downto 0);
	in4: in std_logic_vector(WIDTH-1 downto 0);
	in5: in std_logic_vector(WIDTH-1 downto 0);
	in6: in std_logic_vector(WIDTH-1 downto 0);	-- Last input
	s: out std_logic_vector(WIDTH-1 downto 0);	-- Sum output
	c: out std_logic_vector(WIDTH-1 downto 0)	-- Carry output
    );
end csavaWx6;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of csavaWx6 is
	--constant WIDTH: integer := 7;	-- Adder width
	signal s1: std_logic_vector(WIDTH-1 downto 0); -- Internal sums	
	signal s2: std_logic_vector(WIDTH-1 downto 0); 
	signal s3: std_logic_vector(WIDTH-1 downto 0);
	signal c1: std_logic_vector(WIDTH-1 downto 1);	-- Internal carries
	signal c2: std_logic_vector(WIDTH-1 downto 1);
	signal c3: std_logic_vector(WIDTH-1 downto 1);

	signal in5r, in6r, s2r: std_logic_vector(WIDTH-1 downto 0); -- B.J.
	signal c2r: std_logic_vector(WIDTH-1 downto 1); -- B.J.
begin

	-- Row 1
	-- -------------------------------------------------------------
	row1: for i in 0 to WIDTH-2 generate
		s1(i) <= in1(i) xor in2(i) xor in3(i);
		c1(i+1) <= (in1(i) and in2(i)) or (in1(i) and in3(i)) or
			  (in2(i) and in3(i));
	end generate row1;
	s1(WIDTH-1) <= in1(WIDTH-1) xor in2(WIDTH-1) xor in3(WIDTH-1);

	-- Row 2
	-- -------------------------------------------------------------
	s2(0) <= s1(0) xor in4(0);
	c2(1) <= s1(0) and in4(0);
	row2: for i in 1 to WIDTH-2 generate
		s2(i) <= in4(i) xor s1(i) xor c1(i);
		c2(i+1) <= (in4(i) and s1(i)) or (in4(i) and c1(i)) or
			  (s1(i) and c1(i));
	end generate row2;
	s2(WIDTH-1) <= in4(WIDTH-1) xor s1(WIDTH-1) xor c1(WIDTH-1);

	-- pipeline stage
	process (clk) is  -- B.J.
	begin
	 if clk'event and clk='1' then
		   in5r <= in5;
		   in6r <= in6;
		   s2r <= s2;
		   c2r <= c2;
	 end if;
   end process;

	-- Row 3
	-- -------------------------------------------------------------
	s3(0) <= s2r(0) xor in5r(0);
	c3(1) <= s2r(0) and in5r(0);
	row3: for i in 1 to WIDTH-2 generate
		s3(i) <= in5r(i) xor s2r(i) xor c2r(i);
		c3(i+1) <= (in5r(i) and s2r(i)) or (in5r(i) and c2r(i)) or
			  (s2r(i) and c2r(i));
	end generate row3;
	s3(WIDTH-1) <= in5r(WIDTH-1) xor s2r(WIDTH-1) xor c2r(WIDTH-1);
	
	-- Row 4
	-- -------------------------------------------------------------
	s(0) <= s3(0) xor in6r(0);
	c(1) <= s3(0) and in6r(0);
	row4: for i in 1 to WIDTH-2 generate
		s(i) <= in6r(i) xor s3(i) xor c3(i);
		c(i+1) <= (in6r(i) and s3(i)) or (in6r(i) and c3(i)) or
			  (s3(i) and c3(i));
	end generate row4;
	s(WIDTH-1) <= in6r(WIDTH-1) xor s3(WIDTH-1) xor c3(WIDTH-1);

	-- This bit of carry output is always zero but its existence
	-- should unify VHDL code at higher level of hierarchy,
	-- i.e. there will not be the difference between
	-- s() and c() outputs in further sums.
	-- -------------------------------------------------------------
	c(0) <= '0';

end arch;
