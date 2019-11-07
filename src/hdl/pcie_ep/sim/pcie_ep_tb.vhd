-- ----------------------------------------------------------------------------
-- FILE:          pcie_ep_tb.vhd
-- DESCRIPTION:   
-- DATE:          05:25 PM Wednesday, November 6, 2019
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
entity pcie_ep_tb is
end pcie_ep_tb;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------

architecture tb_behave of pcie_ep_tb is
   constant clk0_period          : time := 10 ns;
   constant clk1_period          : time := 10 ns; 
   --signals
   signal clk0,clk1              : std_logic;
   signal reset_n                : std_logic; 
   
   constant g_PCT_DATA_WIDTH    : integer := 128;
   constant g_PCT_HEADER_SIZE    : integer := 16;
   
   constant g_PCT_PAYLOAD        : integer := 48; -- Payload number to write in packet header
   constant g_WR_PCT_PAYLOAD     : integer := 48; -- Actual bytes to write 
   
   signal pct_wr_en              : std_logic;
   signal pct_wr_cnt             : unsigned(15 downto 0);
   signal pct_data               : std_logic_vector(g_PCT_DATA_WIDTH-1 downto 0);
   
   --inst0
   signal inst0_q                : std_logic_vector(g_PCT_DATA_WIDTH-1 downto 0);
   signal inst0_rdempty          : std_logic;
  
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
   
   process(clk0, reset_n)
   begin
      if reset_n = '0' then 
         pct_wr_cnt <= (others=>'0');   
      elsif (clk0'event AND clk0='1') then 
         if pct_wr_en = '1' then 
            if pct_wr_cnt < (g_PCT_HEADER_SIZE+g_WR_PCT_PAYLOAD)*8/g_PCT_DATA_WIDTH - 1 then 
               pct_wr_cnt <= pct_wr_cnt + 1;
            else 
               pct_wr_cnt <= (others=>'0');
            end if;
         else 
            pct_wr_cnt <= pct_wr_cnt;
         end if;
      end if;
   end process;
   
   -- Packet write enable
   process 
   begin 
      -- Wait for reset
      pct_wr_en <= '0'; wait until reset_n = '1';
      -- Write first Packet
      for i in 0 to (g_PCT_HEADER_SIZE+g_WR_PCT_PAYLOAD)*8/g_PCT_DATA_WIDTH - 1 loop
      wait until rising_edge(clk0);
         pct_wr_en <= '1';
      end loop;
      
      -- Make pause for one cycle (Can be removed to write two packets without any pauses)
      wait until rising_edge(clk0);
      pct_wr_en <= '0';
      
      -- Write secont packet
      for i in 0 to (g_PCT_HEADER_SIZE+g_WR_PCT_PAYLOAD)*8/g_PCT_DATA_WIDTH - 1 loop
      wait until rising_edge(clk0);
         pct_wr_en <= '1';
      end loop;
      
      -- Make pause for one cycle
      wait until rising_edge(clk0);
      pct_wr_en <= '0';
      
      wait;
   end process;
   
   
      
   process is 
   begin 
      -- Write first packet
      pct_data(127 downto 64) <= (others=>'0');                                     -- Packet sample Nr (Header 1)
      pct_data( 63 downto 28) <= (others=>'0');                                     -- Packet sample Nr (Header 0)
      pct_data( 27 downto 24) <= x"1";                                              -- Endpoint number (Header 0)
      pct_data( 23 downto  8) <= std_logic_vector(to_unsigned(g_PCT_PAYLOAD,16));   -- Packet payload (Header 0)
      pct_data(  7 downto  0) <= (others=>'0');                                     -- (Header 0)
      
      wait until pct_wr_cnt = 0 AND rising_edge(clk0) AND pct_wr_en = '1';
      pct_data <= (others=>'0'); 
      for i in 0 to (g_WR_PCT_PAYLOAD)*8/g_PCT_DATA_WIDTH - 1 loop
         wait until rising_edge(clk0);
         if pct_wr_en = '1' then 
            pct_data <= std_logic_vector(unsigned(pct_data)+1);
         else 
            pct_data <= pct_data;
         end if;
      end loop;
      
      
      -- Write second packet
      pct_data(127 downto 64) <= (others=>'0');                                     -- Packet sample Nr (Header 1)
      pct_data( 63 downto 28) <= (others=>'0');                                     -- Packet sample Nr (Header 0)
      pct_data( 27 downto 24) <= x"0";                                              -- Endpoint number (Header 0)
      pct_data( 23 downto  8) <= std_logic_vector(to_unsigned(g_PCT_PAYLOAD,16));   -- Packet payload (Header 0)
      pct_data(  7 downto  0) <= (others=>'0');                                     -- (Header 0)
      
      wait until pct_wr_cnt = 0 AND rising_edge(clk0) AND pct_wr_en = '1';
      pct_data <= (others=>'0'); 
      for i in 0 to (g_WR_PCT_PAYLOAD)*8/g_PCT_DATA_WIDTH - 1 loop
         wait until rising_edge(clk0);
         if pct_wr_en = '1' then 
            pct_data <= std_logic_vector(unsigned(pct_data)+1);
         else 
            pct_data <= pct_data;
         end if;
      end loop;
      
      wait;
      
   end process;
   
   -- FIFO where packets are stored
  inst0 : entity work.fifo_inst_altera
  generic map(
      dev_family        => "Cyclone IV E",
      wrwidth           => 128,
      wrusedw_witdth    => 9, --12=2048 words 
      rdwidth           => 128,
      rdusedw_width     => 9,
      show_ahead        => "OFF"
  )
  port map(
      --input ports 
      reset_n       => reset_n, 
      wrclk         => clk0, 
      wrreq         => pct_wr_en, 
      data          => pct_data, 
      wrfull        => open, 
		wrempty		  => open, 
      wrusedw       => open, 
      rdclk 	     => clk1, 
      rdreq         => '0', 
      q             => inst0_q,
      rdempty       => inst0_rdempty,
      rdusedw       => open    



      --output ports 
        
        );



end tb_behave;

