LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- gain_ch is in [-4 do 4]
-- gain_ch 001.000...00 (13 zeroes after)

ENTITY iqim_gain_corr IS
	PORT (
		clk : IN STD_LOGIC;
		reset_n, en, bypass : IN STD_LOGIC;

		ypi : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		ypq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		gain_ch : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		ypi_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		ypq_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)

	);
END ENTITY iqim_gain_corr;

ARCHITECTURE iqim_gain_corr_rtl OF iqim_gain_corr IS

	CONSTANT N : NATURAL := 18; -- Multiplier word length
	SIGNAL ypi_prim : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
	SIGNAL ypq_prim : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
	SIGNAL gain_prim : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
	SIGNAL ypi_sec : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ypq_sec : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL sig1, sig2 : SIGNED(2 * N - 1 DOWNTO 0);

BEGIN

	

	-- gain_ch is in [-4 do 4]
	-- gain_ch 001.000...00 (13 zeroes after)
	-- ypq_prim is 0100..000 (16 zeroes after)

	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF en = '1' THEN
			    ypi_prim <= ypi(15) & ypi & '0'; -- 18 bits
	            ypq_prim <= ypq(15) & ypq & '0';
	            gain_prim <= gain_ch & "00"; -- 18 bits
	            
				sig1 <= signed(ypi_prim) * signed(gain_prim);
				sig2 <= signed(ypq_prim) * signed(gain_prim);
			END IF;
		END IF;
	END PROCESS;
	ypi_sec <= STD_LOGIC_VECTOR(sig1(31 DOWNTO 16));
	ypq_sec <= STD_LOGIC_VECTOR(sig2(31 DOWNTO 16));

	WRITE_OUTPUT : PROCESS (clk) IS
	BEGIN
		IF (clk'event AND clk = '1') THEN
			IF en = '1' THEN
				IF bypass = '0' THEN
					ypi_o <= ypi_sec;
					ypq_o <= ypq_sec;
				ELSE
					ypi_o <= ypi;
					ypq_o <= ypq;
				END IF;

			END IF;
		END IF;
	END PROCESS WRITE_OUTPUT;
END ARCHITECTURE iqim_gain_corr_rtl;