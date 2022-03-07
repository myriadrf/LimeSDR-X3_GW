-- ----------------------------------------------------------------------------
-- FILE:          firfilt.vhd
-- DESCRIPTION:   10 order FIR filter, result is calculated in one clk cycle
-- DATE:          2020/05/11
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- NOTES:
-- ----------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;
USE work.fircfg_pkg.ALL;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
ENTITY firfilt IS
   GENERIC (
      g_IN_WIDTH : INTEGER := 14; -- Input data width
      g_OUT_WIDTH : INTEGER := 22; -- Output data width
      g_COEF_WIDTH : INTEGER := 18; -- Filter coeficients width
      --(by default use g_IN_WIDTH+g_COEF_WIDTH )
      g_N_TAP : INTEGER := 16 -- Filter order

   );
   PORT (

      clk : IN STD_LOGIC;
      reset_n : IN STD_LOGIC;
      en : IN STD_LOGIC;
      -- Filter coefficents
      from_fircfg : IN t_FROM_FIRCFG;
      -- In out 
      d : IN STD_LOGIC_VECTOR(g_IN_WIDTH - 1 DOWNTO 0);
      q : OUT STD_LOGIC_VECTOR(g_OUT_WIDTH - 1 DOWNTO 0);
      q_valid : OUT STD_LOGIC;
      chI : IN STD_LOGIC

   );
END firfilt;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
ARCHITECTURE arch OF firfilt IS
   --declare signals,  components here

   CONSTANT c_MUL_REZ_WIDTH : INTEGER := g_IN_WIDTH + g_COEF_WIDTH;
   CONSTANT c_PIPE_STAGES : INTEGER := 6; -- Represents pipelining stages, change this value acordingly

   TYPE t_MEM10X IS ARRAY (0 TO g_N_TAP - 1) OF STD_LOGIC_VECTOR(g_IN_WIDTH - 1 DOWNTO 0);
   TYPE t_MUL_REZ IS ARRAY (0 TO g_N_TAP - 1) OF signed(c_MUL_REZ_WIDTH - 1 DOWNTO 0);
   TYPE t_MUL_REZ2 IS ARRAY (0 TO g_N_TAP - 1) OF signed(g_OUT_WIDTH - 1 DOWNTO 0);
   TYPE t_COEFMEM IS ARRAY (0 TO g_N_TAP - 1) OF signed(g_COEF_WIDTH - 1 DOWNTO 0);
   SIGNAL in_buf : t_MEM10X;
   SIGNAL coef_array : t_COEFMEM;
   SIGNAL mult_rez : t_MUL_REZ;
   SIGNAL mult_rez2 : t_MUL_REZ2;
   SIGNAL en_dly : STD_LOGIC_VECTOR(c_PIPE_STAGES - 1 DOWNTO 0);
   -- reduced by 10 bits
   SIGNAL sum_00_reg : signed(g_OUT_WIDTH DOWNTO 0);
   SIGNAL sum_01_reg : signed(g_OUT_WIDTH DOWNTO 0);
   SIGNAL sum_02_reg : signed(g_OUT_WIDTH DOWNTO 0);
   SIGNAL sum_03_reg : signed(g_OUT_WIDTH DOWNTO 0);
   SIGNAL sum_04_reg : signed(g_OUT_WIDTH DOWNTO 0);
   SIGNAL sum_05_reg : signed(g_OUT_WIDTH DOWNTO 0);
   SIGNAL sum_06_reg : signed(g_OUT_WIDTH DOWNTO 0);
   SIGNAL sum_07_reg : signed(g_OUT_WIDTH DOWNTO 0);

   SIGNAL sum_10_reg : signed(g_OUT_WIDTH + 1 DOWNTO 0);
   SIGNAL sum_11_reg : signed(g_OUT_WIDTH + 1 DOWNTO 0);
   SIGNAL sum_12_reg : signed(g_OUT_WIDTH + 1 DOWNTO 0);
   SIGNAL sum_13_reg : signed(g_OUT_WIDTH + 1 DOWNTO 0);

   SIGNAL sum_20_reg : signed(g_OUT_WIDTH + 2 DOWNTO 0);
   SIGNAL sum_21_reg : signed(g_OUT_WIDTH + 2 DOWNTO 0);

   SIGNAL sum_30_reg : signed(g_OUT_WIDTH + 3 DOWNTO 0);

BEGIN

   -- ----------------------------------------------------------------------------
   -- Filter coeficents
   -- ----------------------------------------------------------------------------
   PROCESS (clk, reset_n)
   BEGIN
      IF reset_n = '0' THEN
         coef_array <= (OTHERS => (OTHERS => '0'));
      ELSIF rising_edge(clk) THEN
         IF (chI = '1') THEN
            coef_array <= (
               resize(signed(from_fircfg.H0), g_COEF_WIDTH),
               resize(signed(from_fircfg.H1), g_COEF_WIDTH),
               resize(signed(from_fircfg.H2), g_COEF_WIDTH),
               resize(signed(from_fircfg.H3), g_COEF_WIDTH),
               resize(signed(from_fircfg.H4), g_COEF_WIDTH),
               resize(signed(from_fircfg.H5), g_COEF_WIDTH),
               resize(signed(from_fircfg.H6), g_COEF_WIDTH),
               resize(signed(from_fircfg.H7), g_COEF_WIDTH),
               resize(signed(from_fircfg.H8), g_COEF_WIDTH),
               resize(signed(from_fircfg.H9), g_COEF_WIDTH),
               resize(signed(from_fircfg.HA), g_COEF_WIDTH),
               resize(signed(from_fircfg.HB), g_COEF_WIDTH),
               resize(signed(from_fircfg.HC), g_COEF_WIDTH),
               resize(signed(from_fircfg.HD), g_COEF_WIDTH),
               resize(signed(from_fircfg.HE), g_COEF_WIDTH),
               resize(signed(from_fircfg.HF), g_COEF_WIDTH)
               );
         ELSE
            coef_array <= (
               resize(signed(from_fircfg.H10), g_COEF_WIDTH),
               resize(signed(from_fircfg.H11), g_COEF_WIDTH),
               resize(signed(from_fircfg.H12), g_COEF_WIDTH),
               resize(signed(from_fircfg.H13), g_COEF_WIDTH),
               resize(signed(from_fircfg.H14), g_COEF_WIDTH),
               resize(signed(from_fircfg.H15), g_COEF_WIDTH),
               resize(signed(from_fircfg.H16), g_COEF_WIDTH),
               resize(signed(from_fircfg.H17), g_COEF_WIDTH),
               resize(signed(from_fircfg.H18), g_COEF_WIDTH),
               resize(signed(from_fircfg.H19), g_COEF_WIDTH),
               resize(signed(from_fircfg.H1A), g_COEF_WIDTH),
               resize(signed(from_fircfg.H1B), g_COEF_WIDTH),
               resize(signed(from_fircfg.H1C), g_COEF_WIDTH),
               resize(signed(from_fircfg.H1D), g_COEF_WIDTH),
               resize(signed(from_fircfg.H1E), g_COEF_WIDTH),
               resize(signed(from_fircfg.H1F), g_COEF_WIDTH)
               );
         END IF;
      END IF;
   END PROCESS;

   -- ----------------------------------------------------------------------------
   -- Input array for delaying samples
   -- ----------------------------------------------------------------------------
   PROCESS (clk, reset_n)
   BEGIN
      IF reset_n = '0' THEN
         in_buf <= (OTHERS => (OTHERS => '0'));
      ELSIF rising_edge(clk) THEN
         IF en = '1' THEN
            in_buf <= d & in_buf(0 TO g_N_TAP - 2);
         END IF;
      END IF;
   END PROCESS;

   -- ----------------------------------------------------------------------------
   -- Valid output signal generation
   -- ----------------------------------------------------------------------------
   PROCESS (clk, reset_n)
   BEGIN
      IF reset_n = '0' THEN
         en_dly <= (OTHERS => '0');
      ELSIF rising_edge(clk) THEN
         en_dly <= en_dly(en_dly'left - 1 DOWNTO 0) & en;
      END IF;
   END PROCESS;
   -- ----------------------------------------------------------------------------
   -- Multiplication
   -- ----------------------------------------------------------------------------
   mult_proc : FOR i IN 0 TO g_N_TAP - 1 GENERATE

      PROCESS (clk, reset_n)
      BEGIN
         IF rising_edge(clk) THEN
            mult_rez(i) <= signed(in_buf(i)) * coef_array(i);
            mult_rez2(i) <= mult_rez(i)(c_MUL_REZ_WIDTH - 2 DOWNTO c_MUL_REZ_WIDTH - g_OUT_WIDTH - 1);
         END IF;
      END PROCESS;

   END GENERATE mult_proc;

   -- ----------------------------------------------------------------------------
   -- Accumulator
   -- ----------------------------------------------------------------------------
   -- Add separately even and odd multiplication rezults and pipeline them 
   sum_proc : PROCESS (clk, reset_n)
   BEGIN
      IF reset_n = '0' THEN
         sum_00_reg <= (OTHERS => '0');
         sum_01_reg <= (OTHERS => '0');
         sum_02_reg <= (OTHERS => '0');
         sum_03_reg <= (OTHERS => '0');
         sum_04_reg <= (OTHERS => '0');
         sum_05_reg <= (OTHERS => '0'); --BJ
         sum_06_reg <= (OTHERS => '0'); --BJ
         sum_07_reg <= (OTHERS => '0'); --BJ
         sum_10_reg <= (OTHERS => '0');
         sum_11_reg <= (OTHERS => '0');
         sum_12_reg <= (OTHERS => '0');
         sum_13_reg <= (OTHERS => '0'); --BJ
         sum_20_reg <= (OTHERS => '0');
         sum_21_reg <= (OTHERS => '0');
         sum_30_reg <= (OTHERS => '0');

      ELSIF rising_edge(clk) THEN
         -- Add even and odd multiplication results

         sum_00_reg <= resize(mult_rez2(0), g_OUT_WIDTH + 1) + resize(mult_rez2(1), g_OUT_WIDTH + 1); -- reduced by 10 bits
         sum_01_reg <= resize(mult_rez2(2), g_OUT_WIDTH + 1) + resize(mult_rez2(3), g_OUT_WIDTH + 1);
         sum_02_reg <= resize(mult_rez2(4), g_OUT_WIDTH + 1) + resize(mult_rez2(5), g_OUT_WIDTH + 1);
         sum_03_reg <= resize(mult_rez2(6), g_OUT_WIDTH + 1) + resize(mult_rez2(7), g_OUT_WIDTH + 1);
         sum_04_reg <= resize(mult_rez2(8), g_OUT_WIDTH + 1) + resize(mult_rez2(9), g_OUT_WIDTH + 1);
         sum_05_reg <= resize(mult_rez2(10), g_OUT_WIDTH + 1) + resize(mult_rez2(11), g_OUT_WIDTH + 1); -- reduced by 10 bits
         sum_06_reg <= resize(mult_rez2(12), g_OUT_WIDTH + 1) + resize(mult_rez2(13), g_OUT_WIDTH + 1); -- BJ
         sum_07_reg <= resize(mult_rez2(14), g_OUT_WIDTH + 1) + resize(mult_rez2(15), g_OUT_WIDTH + 1); -- BJ			
         sum_10_reg <= resize(sum_00_reg, g_OUT_WIDTH + 2) + resize(sum_01_reg, g_OUT_WIDTH + 2); -- reduced by 10 bits
         sum_11_reg <= resize(sum_02_reg, g_OUT_WIDTH + 2) + resize(sum_03_reg, g_OUT_WIDTH + 2);
         sum_12_reg <= resize(sum_04_reg, g_OUT_WIDTH + 2) + resize(sum_05_reg, g_OUT_WIDTH + 2);
         sum_13_reg <= resize(sum_06_reg, g_OUT_WIDTH + 2) + resize(sum_07_reg, g_OUT_WIDTH + 2); -- BJ
         sum_20_reg <= resize(sum_10_reg, g_OUT_WIDTH + 3) + resize(sum_11_reg, g_OUT_WIDTH + 3); -- reduced by 10 bits
         sum_21_reg <= resize(sum_12_reg, g_OUT_WIDTH + 3) + resize(sum_13_reg, g_OUT_WIDTH + 3); -- BJ
         sum_30_reg <= resize(sum_20_reg, g_OUT_WIDTH + 4) + resize(sum_21_reg, g_OUT_WIDTH + 4); -- reduced by 10 bits

      END IF;
   END PROCESS;

   -- ----------------------------------------------------------------------------
   -- Output 
   -- ----------------------------------------------------------------------------
   -- To create larger or smaller output vector depending on g_OUT_WIDTH
   q <= STD_LOGIC_VECTOR(resize(sum_30_reg, g_OUT_WIDTH));
   q_valid <= en_dly(en_dly'left);
END arch;