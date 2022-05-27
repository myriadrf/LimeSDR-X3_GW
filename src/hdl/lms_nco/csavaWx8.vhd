-- ----------------------------------------------------------------------------	
-- FILE: 	csavaWx8.vhd
-- DESCRIPTION:	Carry Save Adder with 8 20-bit inputs. It generates
--		partial result in the form of 20-bit sums and carries.
-- REVISIONS:
-- ----------------------------------------------------------------------------	

library IEEE;
use IEEE.std_logic_1164.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ------------------------------------ ---------------------------------------
entity csavaWx8 is
	generic (WIDTH: integer);
    port (
	clk : in std_logic;
	in1: in std_logic_vector(WIDTH-1  downto 0); -- First input
	in2: in std_logic_vector(WIDTH-1  downto 0);
	in3: in std_logic_vector(WIDTH-1  downto 0);
	in4: in std_logic_vector(WIDTH-1  downto 0);
	in5: in std_logic_vector(WIDTH-1  downto 0);
	in6: in std_logic_vector(WIDTH-1  downto 0);
	in7: in std_logic_vector(WIDTH-1  downto 0);
	in8: in std_logic_vector(WIDTH-1  downto 0);	-- Last input
	s: out std_logic_vector(WIDTH-1  downto 0);	-- Sum output
	c: out std_logic_vector(WIDTH-1 downto 0)	-- Carry output
    );
end csavaWx8;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of csavaWx8 is
	--constant WIDTH: integer := 20;	-- Adder width
	signal s1: std_logic_vector(WIDTH-1 downto 0); -- Internal sums	
	signal s2: std_logic_vector(WIDTH-1 downto 0); 
	signal s3: std_logic_vector(WIDTH-1 downto 0);
	signal s4: std_logic_vector(WIDTH-1 downto 0);
	signal s5: std_logic_vector(WIDTH-1 downto 0);
	signal c1: std_logic_vector(WIDTH-1 downto 1);	-- Internal carries
	signal c2: std_logic_vector(WIDTH-1 downto 1);
	signal c3: std_logic_vector(WIDTH-1 downto 1);
	signal c4: std_logic_vector(WIDTH-1 downto 1);
	signal c5: std_logic_vector(WIDTH-1 downto 1);
	
	signal in6r, in7r, in8r, s3r: std_logic_vector(WIDTH-1 downto 0); -- B.J.
	signal c3r: std_logic_vector(WIDTH-1 downto 1); -- B.J.
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

	-- Row 3
	-- -------------------------------------------------------------
	s3(0) <= s2(0) xor in5(0);
	c3(1) <= s2(0) and in5(0);
	row3: for i in 1 to WIDTH-2 generate
		s3(i) <= in5(i) xor s2(i) xor c2(i);
		c3(i+1) <= (in5(i) and s2(i)) or (in5(i) and c2(i)) or
			  (s2(i) and c2(i));
	end generate row3;
	s3(WIDTH-1) <= in5(WIDTH-1) xor s2(WIDTH-1) xor c2(WIDTH-1);

	-- pipeline stage
	process (clk) is  -- B.J.
	begin
	 if clk'event and clk='1' then
		   in6r <= in6;
		   in7r <= in7;
		   in8r <= in8;
		   s3r <= s3;
		   c3r <= c3;
	 end if;
   end process;
	
	-- Row 4
	-- -------------------------------------------------------------
	s4(0) <= s3r(0) xor in6r(0);
	c4(1) <= s3r(0) and in6r(0);
	row4: for i in 1 to WIDTH-2 generate
		s4(i) <= in6r(i) xor s3r(i) xor c3r(i);
		c4(i+1) <= (in6r(i) and s3r(i)) or (in6r(i) and c3r(i)) or
			  (s3r(i) and c3r(i));
	end generate row4;
	s4(WIDTH-1) <= in6r(WIDTH-1) xor s3r(WIDTH-1) xor c3r(WIDTH-1);

	-- Row 5
	-- -------------------------------------------------------------
	s5(0) <= s4(0) xor in7r(0);
	c5(1) <= s4(0) and in7r(0);
	row5: for i in 1 to WIDTH-2 generate
		s5(i) <= in7r(i) xor s4(i) xor c4(i);
		c5(i+1) <= (in7r(i) and s4(i)) or (in7r(i) and c4(i)) or
			  (s4(i) and c4(i));
	end generate row5;
	s5(WIDTH-1) <= in7r(WIDTH-1) xor s4(WIDTH-1) xor c4(WIDTH-1);

	-- Row 6
	-- -------------------------------------------------------------
	s(0) <= s5(0) xor in8r(0);
	c(1) <= s5(0) and in8r(0);
	row6: for i in 1 to WIDTH-2 generate
		s(i) <= in8r(i) xor s5(i) xor c5(i);
		c(i+1) <= (in8r(i) and s5(i)) or (in8r(i) and c5(i)) or
			  (s5(i) and c5(i));
	end generate row6;
	s(WIDTH-1) <= in8r(WIDTH-1) xor s5(WIDTH-1) xor c5(WIDTH-1);

	-- This bit of carry output is always zero but its existence
	-- should unify VHDL code at higher level of hierarchy,
	-- i.e. there will not be the difference between
	-- s() and c() outputs in further sums.
	-- -------------------------------------------------------------
	c(0) <= '0';

end arch;
