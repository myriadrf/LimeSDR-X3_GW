-- ----------------------------------------------------------------------------
-- FILE:          DPDTopWrapper_dummy_tb.vhd
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
entity DPDTopWrapper_dummy_tb is
end DPDTopWrapper_dummy_tb;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------

architecture tb_behave of DPDTopWrapper_dummy_tb is
   constant clk0_period    : time := 10 ns;
   constant clk1_period    : time := 10 ns; 
   --signals
   signal clk0,clk1        : std_logic;
   signal reset_n          : std_logic; 
   
   signal dut0_diq_in            : std_logic_vector(63 downto 0);
   signal dut0_data_req_empty    : std_logic;
   signal dut0_data_req          : std_logic;
  
begin 
  
      clock0: process is
   begin
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
   
   process is
   begin
      dut0_data_req_empty <= '0'; wait for 410 ns;
      dut0_data_req_empty <= '1'; wait for 800 ns;
      dut0_data_req_empty <= '0'; wait for 1000 ns;
   end process;
   
   
   process(clk0, reset_n)
   begin
      if reset_n = '0' then 
         dut0_diq_in <= x"0003000200010000";
      elsif (clk0'event AND clk0='1') then
         if dut0_data_req = '1' then 
            dut0_diq_in(63 downto 48)<= std_logic_vector(unsigned(dut0_diq_in(63 downto 48))+4);
            dut0_diq_in(47 downto 32)<= std_logic_vector(unsigned(dut0_diq_in(47 downto 32))+4);
            dut0_diq_in(31 downto 16)<= std_logic_vector(unsigned(dut0_diq_in(31 downto 16))+4);
            dut0_diq_in(15 downto  0)<= std_logic_vector(unsigned(dut0_diq_in(15 downto  0))+4);
         else 
            dut0_diq_in <= dut0_diq_in;
         end if; 
      end if;
   end process;
   
   
   
      -- design under test  
      
   dut0 : entity work.DPDTopWrapper_dummy
   port map (
      clk         => clk0,
      reset_n     => reset_n,
      mem_reset_n => reset_n,
      --from_memcfg : in t_FROM_MEMCFG;
      
      ch_en       => "01",      
      sdin        => '0',
      sclk        => '0',
      sen         => '0',
      sdout       => open,
	  
      data_req_empty => dut0_data_req_empty,
      data_req       => dut0_data_req,
      data_valid     => open,
		
      diq_in         => dut0_diq_in
		

		

   );

end tb_behave;

