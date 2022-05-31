LIBRARY ieee;
USE ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

ENTITY Multiplier2_pipelined IS
	PORT
	(
	    SCLR        : IN STD_LOGIC;
	    clk         : IN STD_LOGIC;
		dataa		: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (35 DOWNTO 0)
	);
END Multiplier2_pipelined;

ARCHITECTURE beh OF multiplier2_pipelined IS

COMPONENT mult_gen_18x18_pipelined
  PORT (
    SCLR : IN STD_LOGIC;
    CLK  : IN STD_LOGIC;
    A    : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    B    : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    P    : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

begin

--result <= dataa * datab;
	
lab0: mult_gen_18x18_pipelined
  PORT MAP (
    SCLR => SCLR,
    CLK  => clk,
    A    => dataa,
    B    => datab,
    P    => result 
  );
  
end architecture beh;
