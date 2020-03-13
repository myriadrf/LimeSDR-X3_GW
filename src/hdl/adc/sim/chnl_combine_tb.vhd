-- ----------------------------------------------------------------------------
-- FILE:          chnl_combine_tb.vhd
-- DESCRIPTION:   
-- DATE:          Feb 13, 2014
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- NOTES:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity chnl_combine_tb is
end chnl_combine_tb;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------

architecture tb_behave of chnl_combine_tb is
   constant clk0_period    : time := 10 ns;
   constant clk1_period    : time := 10 ns; 
   
   constant c_DUT0_DATA_WIDTH : integer := 14;
   
   signal sim_begin  : std_logic := '1';
   
   
   --signals
   signal clk0,clk1        : std_logic;
   signal reset_n          : std_logic; 
   
   --dut0
   signal dut0_ai          : std_logic_vector(c_DUT0_DATA_WIDTH-1 downto 0);
   signal dut0_aq          : std_logic_vector(c_DUT0_DATA_WIDTH-1 downto 0);
   signal dut0_bi          : std_logic_vector(c_DUT0_DATA_WIDTH-1 downto 0);
   signal dut0_bq          : std_logic_vector(c_DUT0_DATA_WIDTH-1 downto 0);
   
   
begin 
  
      clock0: process is
   begin
      --if sim_begin = '1' then 
      --   wait for 1 ns;
      --   sim_begin <= '0';
      --end if;
      clk0 <= '0'; wait for clk0_period/2;
      clk0 <= '1'; wait for clk0_period/2;
   end process clock0;

      clock: process is
   begin
      clk1 <= '0'; wait for clk1_period/2;
      clk1 <= '1'; wait for clk1_period/2;
   end process clock;
   
      res: process is
   begin
      reset_n <= '0'; wait for 20 ns;
      reset_n <= '1'; wait;
   end process res;
   
   
   a_gen : process(clk0)
   begin
      if reset_n = '0' then 
         dut0_ai  <= (others=>'0');
         dut0_aq  <= 14x"01";
      elsif rising_edge(clk0) then 
         dut0_ai <= std_logic_vector(unsigned(dut0_ai)+ 2);
         dut0_aq <= std_logic_vector(unsigned(dut0_aq)+ 2);
      end if;
   end process;
   
   b_gen : process(clk1)
   begin
      if reset_n = '0' then 
         dut0_bi  <= 14x"2000";
         dut0_bq  <= 14x"2001";
      elsif rising_edge(clk1) then 
         dut0_bi <= std_logic_vector(unsigned(dut0_bi)+ 2);
         dut0_bq <= std_logic_vector(unsigned(dut0_bq)+ 2);
      end if;
   end process;
   
   dut0 : entity work.chnl_combine 
   generic map(
      diq_width   => c_DUT0_DATA_WIDTH
   )
   port map (
      -- Combined channels
      clk         => clk0,
      reset_n     => reset_n,
      ch_en       => "11",
      data        => open,
      data_valid  => open,
      -- A chanel
      a_clk       => clk0,
      a_reset_n   => reset_n,
      ai          => dut0_ai,
      aq          => dut0_aq,
      -- B chanel
      b_clk       => clk1,
      b_reset_n   => reset_n,
      bi          => dut0_bi,
      bq          => dut0_bq   
   );
   


end tb_behave;

