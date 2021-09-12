LIBRARY ieee;
USE ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

ENTITY Multiplier2 IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (35 DOWNTO 0)
	);
END Multiplier2;

ARCHITECTURE beh OF multiplier2 IS

COMPONENT mult_gen_0
  PORT (
    A : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    P : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

begin

--result <= dataa * datab;
	
lab0: mult_gen_0
  PORT MAP (
    A => dataa,
    B => datab,
    P => result 
  );
  
end architecture beh;
