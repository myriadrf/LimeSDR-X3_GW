-----------------------------------------------------------------------------	
-- FILE: 	QADPD.vhd
-- DESCRIPTION:	Quadrature predistorter model
-- DATE:          10:55 AM Friday, December 19, 2018
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

------------------------------------------------------------------------------	
--  coeff's range is [-16, 16],
--  signed two complement, 18 bits
--  aaaaa. bbbb bbbb bbbb b
--  one is  0x 0000 1000 0000 0000 0
------------------------------------------------------------------------------	
--  Clock frequency is 122.88 MHz
--  Sample rate 61.44 MSps

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.math_real.ALL;
--USE ieee.std_logic_arith.ALL;
USE ieee.numeric_std.ALL;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
ENTITY QADPD IS
	GENERIC (
		n : NATURAL := 4; -- memory depth
		m : NATURAL := 3; -- nonlinearity
		mul_n : NATURAL := 18); -- precision
	PORT (
		clk, sclk : IN STD_LOGIC;
		reset_n : IN STD_LOGIC;

		reset_mem_n : IN STD_LOGIC; -- reset coefficients
		data_valid : IN STD_LOGIC;
		xpi : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		xpq : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		ypi : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		ypq : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		spi_ctrl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		spi_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ENTITY QADPD;

ARCHITECTURE structure OF QADPD IS

	COMPONENT Multiplier2 IS
		PORT (
			dataa : IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			datab : IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			result : OUT STD_LOGIC_VECTOR (35 DOWNTO 0)
		);
	END COMPONENT Multiplier2;

	COMPONENT adder IS
		GENERIC (
			res_n : NATURAL := 18;
			op_n : NATURAL := 18;
			addi : NATURAL := 1); -- addition addi==1
		PORT (
			dataa : IN STD_LOGIC_VECTOR (op_n - 1 DOWNTO 0);
			datab : IN STD_LOGIC_VECTOR (op_n - 1 DOWNTO 0);
			res : OUT STD_LOGIC_VECTOR (res_n - 1 DOWNTO 0));
	END COMPONENT adder;

	TYPE cols IS ARRAY (M DOWNTO 0) OF STD_LOGIC_VECTOR(mul_n - 1 DOWNTO 0);
	TYPE matr IS ARRAY (N DOWNTO 0) OF cols;
	TYPE matrsigned IS ARRAY (N DOWNTO 0) OF SIGNED(mul_n - 1 DOWNTO 0);
	TYPE matr4 IS ARRAY (M DOWNTO 0) OF cols;

	TYPE cols2 IS ARRAY (M DOWNTO 0) OF STD_LOGIC_VECTOR(2 * mul_n - 1 DOWNTO 0);
	TYPE cols2signed IS ARRAY (M DOWNTO 0) OF SIGNED(2 * mul_n - 1 DOWNTO 0);
	
	TYPE matr2 IS ARRAY (N DOWNTO 0) OF cols2;
	TYPE matr2signed IS ARRAY (N DOWNTO 0) OF cols2signed;

	TYPE cols3 IS ARRAY (M DOWNTO 0) OF STD_LOGIC_VECTOR(mul_n + 12 DOWNTO 0);
	TYPE matr3 IS ARRAY (N DOWNTO 0) OF cols3;
	SIGNAL epprim : cols;

	CONSTANT extens : STD_LOGIC_VECTOR(mul_n - 18 DOWNTO 0) := (OTHERS => '0');
	SIGNAL XIp, XQp, XIp1, XQp1, XIpp, XQpp : STD_LOGIC_VECTOR(mul_n - 1 DOWNTO 0);
	SIGNAL sig1, sig2 : SIGNED(2 * mul_n - 1 DOWNTO 0);
	SIGNAL sig3, sig4, ep, epp : STD_LOGIC_VECTOR(mul_n - 1 DOWNTO 0);

	SIGNAL xIep, xQep : matr;
	SIGNAL xIep_z, xQep_z : matr4;
	SIGNAL xIep_s, xQep_s : cols2signed;
	SIGNAL res2, res4 : matr2;
	SIGNAL res1, res3 : matr2signed;
	SIGNAL res1_s, res2_sprim, res3_s, res4_sprim : matr3;
	SIGNAL ijYpI, ijYpQ, ijYpI_s, ijYpQ_s : matr2;

	TYPE row2 IS ARRAY (N DOWNTO 0) OF STD_LOGIC_VECTOR(2 * mul_n - 1 DOWNTO 0);

	SIGNAL iYpI, iYpQ : row2;
	SIGNAL YpI_s2, YpQ_s2 : STD_LOGIC_VECTOR(2 * mul_n - 1 DOWNTO 0);
	
	SIGNAL a, ap, b, bp, mul5a, mul5b, mul6a, mul6b : matr;
	CONSTANT zer : STD_LOGIC_VECTOR(mul_n - 17 DOWNTO 0) := (OTHERS => '0');

	CONSTANT all_zeros : STD_LOGIC_VECTOR(mul_n - 5 DOWNTO 0) := (OTHERS => '0'); --[-16, 16]
	CONSTANT all_ones : STD_LOGIC_VECTOR(mul_n - 5 DOWNTO 0) := (OTHERS => '1'); --[-16, 16]
	SIGNAL sigI, sigQ : STD_LOGIC_VECTOR(mul_n - 5 DOWNTO 0); --[-16, 16]

	SIGNAL ypi_s, ypq_s : STD_LOGIC_VECTOR(17 DOWNTO 0);
	SIGNAL address_i, address_j : STD_LOGIC_VECTOR(4 DOWNTO 0);
	TYPE short_cols IS ARRAY (0 DOWNTO 0) OF STD_LOGIC_VECTOR(mul_n - 1 DOWNTO 0);
	TYPE short_matr IS ARRAY (N DOWNTO 0) OF short_cols;
	SIGNAL c, d, cp, dp, mul7a, mul7b, mul8a, mul8b : short_matr;

	TYPE short_cols2 IS ARRAY (0 DOWNTO 0) OF STD_LOGIC_VECTOR(2 * mul_n - 1 DOWNTO 0);
	TYPE short_cols2signed IS ARRAY (0 DOWNTO 0) OF SIGNED(2 * mul_n - 1 DOWNTO 0);
	TYPE short_matr2 IS ARRAY (N DOWNTO 0) OF short_cols2;
	TYPE short_matr2signed IS ARRAY (N DOWNTO 0) OF short_cols2signed;
	SIGNAL res6, res8, iIQpI, iIQpQ, iIQpI_s, iIQpQ_s : short_matr2;
	SIGNAL res5, res7 : short_matr2signed;

	TYPE short_cols3 IS ARRAY (0 DOWNTO 0) OF STD_LOGIC_VECTOR(mul_n + 12 DOWNTO 0);
	TYPE short_matr3 IS ARRAY (N DOWNTO 0) OF short_cols3;
	SIGNAL res5_s, res6_sprim, res7_s, res8_sprim : short_matr3;

BEGIN

	address_i <= '0' & spi_ctrl(7 DOWNTO 4);
	address_j <= '0' & spi_ctrl(3 DOWNTO 0);

	PROCESS (reset_mem_n, sclk) IS -- was  reset_n
	BEGIN
		IF reset_mem_n = '0' THEN
			FOR i IN 0 TO n LOOP
				FOR j IN 0 TO m LOOP
					a(i)(j) <= (OTHERS => '0');
					ap(i)(j) <= (OTHERS => '0');
					b(i)(j) <= (OTHERS => '0');
					bp(i)(j) <= (OTHERS => '0');
				END LOOP;

				FOR j IN 0 TO 0 LOOP
					c(i)(j) <= (OTHERS => '0');
					d(i)(j) <= (OTHERS => '0');
					cp(i)(j) <= (OTHERS => '0');
					dp(i)(j) <= (OTHERS => '0');
				END LOOP;
			END LOOP;

			a(0)(0) <= x"0800" & zer; -- [-16, 16]
			ap(0)(0) <= x"0800" & zer;

		ELSIF (sclk'event AND sclk = '1') THEN
			IF (spi_ctrl(15 DOWNTO 12) = "0001") THEN -- a coeff
				ap(CONV_INTEGER(address_i))(CONV_INTEGER(address_j)) <= spi_data & spi_ctrl(9 DOWNTO 8);
			ELSIF (spi_ctrl(15 DOWNTO 12) = "0010") THEN -- b coeff
				bp(CONV_INTEGER(address_i))(CONV_INTEGER(address_j)) <= spi_data & spi_ctrl(9 DOWNTO 8);
			ELSIF (spi_ctrl(15 DOWNTO 12) = "0011") THEN -- c coeff				
				cp(CONV_INTEGER(address_i))(0) <= spi_data & spi_ctrl(9 DOWNTO 8);
			ELSIF (spi_ctrl(15 DOWNTO 12) = "0100") THEN -- d coeff					
				dp(CONV_INTEGER(address_i))(0) <= spi_data & spi_ctrl(9 DOWNTO 8);
			ELSIF (spi_ctrl(15 DOWNTO 12) = "1111") THEN -- update a and b coeff
				FOR i IN 0 TO n LOOP
					FOR j IN 0 TO m LOOP
						a(i)(j) <= ap(i)(j);
						b(i)(j) <= bp(i)(j);
					END LOOP;
					FOR j IN 0 TO 0 LOOP
						c(i)(j) <= cp(i)(j);
						d(i)(j) <= dp(i)(j);
					END LOOP;
				END LOOP;
			END IF;
		END IF;
	END PROCESS;

	lab4 : PROCESS (clk) IS
	BEGIN
		IF (clk'event AND clk = '1') THEN -- pipeline
			IF (data_valid = '1') THEN
				ypi <= ypi_s;
				ypq <= ypq_s;
			END IF;
		END IF;
	END PROCESS;

	lab_IN : PROCESS (clk) IS
	BEGIN
		IF (clk'event AND clk = '1') THEN
			IF data_valid = '1' THEN
				XIp <= xpi(13) & xpi(13) & xpi(13) & xpi & extens; --xpi,xpq 14-bits [-8191,8192]
				XQp <= xpq(13) & xpq(13) & xpq(13) & xpq & extens;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (clk) IS
	BEGIN
		IF (clk'event AND clk = '1') THEN
			IF data_valid = '1' THEN
				sig1 <= signed(XIp) * signed(XIp);
				sig2 <= signed(XQp) * signed(XQp);
				XIp1 <= XIp;
				XQp1 <= XQp;
			END IF;
		END IF;
	END PROCESS;

	--Mult1 : multiplier2
	--PORT MAP(dataa => XIp, datab => XIp, result => sig1);
	sig3(mul_n - 1 DOWNTO 0) <= STD_LOGIC_VECTOR(sig1(2 * mul_n - 5 DOWNTO mul_n - 4)); -- FS

	--Mult2 : multiplier2
	--PORT MAP(dataa => XQp, datab => XQp, result => sig2);
	sig4(mul_n - 1 DOWNTO 0) <= STD_LOGIC_VECTOR(sig2(2 * mul_n - 5 DOWNTO mul_n - 4)); -- FS

	Adder1 : adder GENERIC MAP(res_n => mul_n, op_n => mul_n, addi => 1)
	PORT MAP(dataa => sig3, datab => sig4, res => ep);

	labX0 : PROCESS (clk) IS
	BEGIN
		IF (clk'event AND clk = '1') THEN
			IF (data_valid = '1') THEN
				xIpp <= xIp1;
				xQpp <= xQp1;
				epp <= ep;
			END IF;
		END IF;
	END PROCESS;

	xIep_z(0)(0) <= XIpp;
	xQep_z(0)(0) <= XQpp;
	epprim(0) <= epp;

	lab5 : FOR j IN 1 TO M GENERATE

		--Mult3 : multiplier2
		--PORT MAP(dataa => xIep_z(j - 1)(j - 1), datab => epprim(j - 1), result => xIep_s(j - 1));
		--Mult4 : multiplier2
		--PORT MAP(dataa => xQep_z(j - 1)(j - 1), datab => epprim(j - 1), result => xQep_s(j - 1));

		PROCESS (clk) IS
		BEGIN
			IF (clk'event AND clk = '1') THEN
				IF data_valid = '1' THEN
				    xIep_s(j - 1) <= signed(xIep_z(j - 1)(j - 1)) * signed(epprim(j - 1));
					xQep_s(j - 1) <= signed(xQep_z(j - 1)(j - 1)) * signed(epprim(j - 1));
					epprim(j) <= epprim(j - 1);
				END IF;
			END IF;
		END PROCESS;
		
		xIep_z(j)(j) <= STD_LOGIC_VECTOR(xIep_s(j - 1)(2 * mul_n - 5 DOWNTO mul_n - 4));
		xQep_z(j)(j) <= STD_LOGIC_VECTOR(xQep_s(j - 1)(2 * mul_n - 5 DOWNTO mul_n - 4));

		labX1 : FOR k IN 0 TO j - 1 GENERATE
			labX2 : PROCESS (clk) IS
			BEGIN
				IF (clk'event AND clk = '1') THEN
					IF (data_valid = '1') THEN
						xIep_z(j)(k) <= xIep_z(j - 1)(k);
						xQep_z(j)(k) <= xQep_z(j - 1)(k);
					END IF;
				END IF;
			END PROCESS;
		END GENERATE;
	END GENERATE;

	labX3 : FOR j IN 0 TO M GENERATE -- nonlinearity
		xIep(0)(j) <= xIep_z(M)(j);
		xQep(0)(j) <= xQep_z(M)(j);
	END GENERATE;

	lab1 : FOR i IN N DOWNTO 1 GENERATE
		lab2 : FOR j IN 0 TO M GENERATE
			lab3 : PROCESS (clk) IS --, reset_n
			BEGIN
				IF (clk'event AND clk = '1') THEN
					IF (data_valid = '1') THEN
						xIep(i)(j) <= xIep(i - 1)(j);
						xQep(i)(j) <= xQep(i - 1)(j);
					END IF;
				END IF;
			END PROCESS;
		END GENERATE;
	END GENERATE;

	lab7 : FOR i IN 0 TO N GENERATE
		lab8 : FOR j IN 0 TO M GENERATE

			--    YpI  += a[i][j]* xIep[i][j] - b[i][j]* xQep[i][j]; 
			--    YpQ  += a[i][j]* xQep[i][j] + b[i][j]* xIep[i][j]; 

			mul5a(i)(j) <= (a(i)(j)) WHEN data_valid = '1' ELSE
			(b(i)(j));
			mul5b(i)(j) <= xIep(i)(j) WHEN data_valid = '1' ELSE
			xQep(i)(j);

			PROCESS (clk) IS
			BEGIN
				IF (clk'event AND clk = '1') THEN
					res1(i)(j) <= signed(mul5a(i)(j)) * signed(mul5b(i)(j));
					res1_s(i)(j) <= STD_LOGIC_VECTOR(res1(i)(j)(2 * mul_n - 1 - j DOWNTO mul_n - 13 - j));
					IF (data_valid = '0') THEN
						res2_sprim (i)(j)<= res1_s(i)(j);
					END IF;
				END IF;
			END PROCESS;

			Adder2 : adder GENERIC MAP(res_n => 2 * mul_n, op_n => mul_n + 13, addi => 0) -- subtraction
			PORT MAP(dataa => res1_s(i)(j), datab => res2_sprim(i)(j), res => ijYpI(i)(j));

			--  a(i)(j)*xIep(i)(j) - b(i)(j)*x Qep(i)(j)

			mul6a(i)(j) <= a(i)(j) WHEN data_valid = '1' ELSE
			b(i)(j);
			mul6b(i)(j) <= xQep(i)(j) WHEN data_valid = '1' ELSE
			xIep(i)(j);

			PROCESS (clk) IS
			BEGIN
				IF (clk'event AND clk = '1') THEN
					res3(i)(j) <= signed(mul6a(i)(j)) * signed(mul6b(i)(j));
					res3_s(i)(j) <= STD_LOGIC_VECTOR(res3(i)(j)(2 * mul_n - 1 - j DOWNTO mul_n - 13 - j));
					IF (data_valid = '0') THEN
						res4_sprim(i)(j) <= res3_s(i)(j);
					END IF;
				END IF;
			END PROCESS;

			Adder3 : adder GENERIC MAP(res_n => 2 * mul_n, op_n => mul_n + 13, addi => 1) -- addition
			PORT MAP(dataa => res3_s(i)(j), datab => res4_sprim(i)(j), res => ijYpQ(i)(j));

			--a(i)(j)*xQep(i)(j)+b(i)(j)*xIep(i)(j)

			lab9 : PROCESS (clk) IS
			BEGIN
				IF (clk'event AND clk = '1') THEN -- pipeline
					IF (data_valid = '1') THEN
						ijYpI_s(i)(j) <= ijYpI(i)(j);
						ijYpQ_s(i)(j) <= ijYpQ(i)(j);
					END IF;
				END IF;
			END PROCESS;
		END GENERATE;

		----------------------------------
		-- complex part		

		labX3 : FOR j IN 0 TO 0 GENERATE -- nonlinearity		

			mul7a(i)(j) <= c(i)(j) WHEN data_valid = '1' ELSE
			d(i)(j);
			mul7b(i)(j) <= xIep(i)(j) WHEN data_valid = '1' ELSE
			xQep(i)(j);

			PROCESS (clk) IS
			BEGIN
				IF (clk'event AND clk = '1') THEN
					res5(i)(j) <= signed(mul7a(i)(j)) * signed(mul7b(i)(j));
					res5_s(i)(j) <= STD_LOGIC_VECTOR(res5(i)(j)(2 * mul_n - 1 - j DOWNTO mul_n - 13 - j));
					IF (data_valid = '0') THEN
						res6_sprim (i)(j)<= res5_s(i)(j);
					END IF;
				END IF;
			END PROCESS;

			mul8a(i)(j) <= d(i)(j) WHEN data_valid = '1' ELSE
			c(i)(j);
			mul8b(i)(j) <= xIep(i)(j) WHEN data_valid = '1' ELSE
			xQep(i)(j);

			PROCESS (clk) IS
			BEGIN
				IF (clk'event AND clk = '1') THEN
					res7(i)(j) <= signed(mul8a(i)(j)) * signed(mul8b(i)(j));
					res7_s(i)(j) <= STD_LOGIC_VECTOR(res7(i)(j)(2 * mul_n - 1 - j DOWNTO mul_n - 13 - j));
					IF (data_valid = '0') THEN
						res8_sprim(i)(j) <= res7_s(i)(j);
					END IF;
				END IF;
			END PROCESS;

			AdderX1 : adder GENERIC MAP(res_n => 2 * mul_n, op_n => mul_n + 13, addi => 1) -- addition 
			PORT MAP(dataa => res5_s(i)(j), datab => res6_sprim(i)(j), res => iIQpI(i)(j));
			------- c[i][j])* xIep[i][j] + d[i][j])* xQep[i][j]
			AdderX2 : adder GENERIC MAP(res_n => 2 * mul_n, op_n => mul_n + 13, addi => 0) -- subtraction 
			PORT MAP(dataa => res7_s(i)(j), datab => res8_sprim(i)(j), res => iIQpQ(i)(j));
			------- d[i][j])* xIep[i][j] - c[i][j])* xQep[i][j]
			labX2 : PROCESS (clk) IS --, reset_n
			BEGIN
				IF (clk'event AND clk = '1') THEN
					IF (data_valid = '1') THEN
						iIQpI_s(i)(j) <= iIQpI(i)(j);
						iIQpQ_s(i)(j) <= iIQpQ(i)(j);
					END IF;
				END IF;
			END PROCESS;

		END GENERATE; -- end of labX3: 
		----------------------------------

		lab10 : PROCESS (clk) IS
			VARIABLE iYpI_s, iYpQ_s : STD_LOGIC_VECTOR(2 * mul_n - 1 DOWNTO 0);
		BEGIN
			IF (clk'event AND clk = '1') THEN
				IF (data_valid = '1') THEN
					iYpI_s := (OTHERS => '0'); -- init.
					iYpQ_s := (OTHERS => '0');
					FOR j IN 0 TO M LOOP -- nonlinearity 0, 1, 2
						iYpI_s := iYpI_s + ijYpI_s(i)(j);
						iYpQ_s := iYpQ_s + ijYpQ_s(i)(j);
					END LOOP;
					iYpI_s := iYpI_s + iIQpI_s(i)(0); -- added
					iYpQ_s := iYpQ_s + iIQpQ_s(i)(0); -- added complex part

				END IF;
			END IF;
			iYpI(i) <= iYpI_s;
			iYpQ(i) <= iYpQ_s;
		END PROCESS;
	END GENERATE;

	lab11 : PROCESS (clk) IS
		VARIABLE YpI_s, YpQ_s : STD_LOGIC_VECTOR(2 * mul_n - 1 DOWNTO 0);
	BEGIN
		IF (clk'event AND clk = '1') THEN
			IF (data_valid = '1') THEN
				YpI_s := (OTHERS => '0');
				YpQ_s := (OTHERS => '0'); -- memory	
				FOR i IN 0 TO N LOOP
					YpI_s := YpI_s + iYpI(i);
					YpQ_s := YpQ_s + iYpQ(i);
				END LOOP;
			END IF;
		END IF;
		YpI_s2 <= YpI_s;
		YpQ_s2 <= YpQ_s;
	END PROCESS;

	sigI <= YpI_s2(2 * mul_n - 1 DOWNTO mul_n + 4); -- [-16, 16]
	sigQ <= YpQ_s2(2 * mul_n - 1 DOWNTO mul_n + 4);

	comp_I : PROCESS (YpI_s2, sigI) IS
	BEGIN
		IF (sigI = all_zeros) THEN
			ypi_s <= YpI_s2(mul_n + 4 DOWNTO mul_n - 13); -- [-16, 16]
		ELSIF (sigI = all_ones) THEN
			ypi_s <= YpI_s2(mul_n + 4 DOWNTO mul_n - 13); -- [-16, 16]
		ELSIF sigI(mul_n - 5) = '0' THEN -- [-16, 16]
			ypi_s <= (17 => '0', OTHERS => '1');
		ELSE
			ypi_s <= (17 => '1', OTHERS => '0');
		END IF;
	END PROCESS;

	comp_Q : PROCESS (YpQ_s2, sigQ)IS
	BEGIN
		IF (sigQ = all_zeros) THEN
			ypq_s <= YpQ_s2(mul_n + 4 DOWNTO mul_n - 13); -- [-16, 16]
		ELSIF (sigQ = all_ones) THEN
			ypq_s <= YpQ_s2(mul_n + 4 DOWNTO mul_n - 13); -- [-16, 16]
		ELSIF sigQ(mul_n - 5) = '0' THEN -- [-16, 16]
			ypq_s <= (17 => '0', OTHERS => '1');
		ELSE
			ypq_s <= (17 => '1', OTHERS => '0');
		END IF;
	END PROCESS;

END ARCHITECTURE structure;