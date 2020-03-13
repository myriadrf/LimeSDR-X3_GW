-- ----------------------------------------------------------------------------
-- FILE:          chnl_combine.vhd
-- DESCRIPTION:   Combines two IQ data chanels into one stream with clock crosing
-- DATE:          2020/03/05
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- NOTES:
-- IQ samples in data bus represented in folowing order:
-- ch_en    | data   
-- "11"     | BI(n)  ,  BQ(n)  , AI(n), AQ(n)
-- "10"     | BI(n-1),  BQ(n-1), BI(n), BQ(n)
-- "01"     | AI(n-1),  AQ(n-1), AI(n), AQ(n)
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity chnl_combine is
   generic(
      diq_width   : integer := 14
   );
   port (
      -- Combined channels
      clk         : in  std_logic;
      reset_n     : in  std_logic;
      ch_en       : in  std_logic_vector(1 downto 0); -- "11" - AB, "10" - B, "01" - A
      data        : out std_logic_vector(4*diq_width-1 downto 0);
      data_valid  : out std_logic;
      -- A chanel
      a_clk       : in  std_logic;
      a_reset_n   : in  std_logic;
      ai          : in  std_logic_vector(diq_width-1 downto 0);
      aq          : in  std_logic_vector(diq_width-1 downto 0);
      -- B chanel
      b_clk       : in  std_logic;
      b_reset_n   : in  std_logic;
      bi          : in  std_logic_vector(diq_width-1 downto 0);
      bq          : in  std_logic_vector(diq_width-1 downto 0)
      
   );
end chnl_combine;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of chnl_combine is
--declare signals,  components here

signal inst0_wr_rst_busy   : std_logic;
signal inst0_wrreq         : std_logic;
signal inst0_wrfull        : std_logic;
signal inst0_rdreq         : std_logic;
signal inst0_q             : std_logic_vector(2*diq_width-1 downto 0);
signal inst0_rdempty       : std_logic;
signal inst0_q_valid       : std_logic;
signal inst0_q_valid_cnt   : unsigned(0 downto 0);


signal inst1_wr_rst_busy   : std_logic;
signal inst1_wrreq         : std_logic;
signal inst1_wrfull        : std_logic;
signal inst1_rdreq         : std_logic;
signal inst1_q             : std_logic_vector(2*diq_width-1 downto 0);
signal inst1_rdempty       : std_logic;
signal inst1_q_valid       : std_logic;
signal inst1_q_valid_cnt   : unsigned(0 downto 0);

type data_reg is array (0 to 1) of std_logic_vector(2*diq_width-1 downto 0);

signal a_reg         : data_reg;
signal b_reg         : data_reg;
signal ab_reg        : data_reg;

signal a_reg_valid  : std_logic;
signal b_reg_valid  : std_logic;
signal ab_reg_valid : std_logic;


signal int_data_valid      : std_logic;

type state_type is (idle, rd_a, rd_b, rd_ab);
signal current_state, next_state : state_type;

  

begin



-- ----------------------------------------------------------------------------
-- Clock domain crosing FIFO for chnl A
-- ----------------------------------------------------------------------------
   inst0_wrreq <= '1' when inst0_wr_rst_busy = '0' and inst0_wrfull = '0' and a_reset_n = '1' else '0';

   inst0_fifo : entity work.fifo_inst
   generic map(
         vendor          => "XILINX", -- valid vals = "XILINX" or "ALTERA"
         dev_family      => "Cyclone IV E",
         wrwidth         => 2*diq_width,
         wrusedw_witdth  => 5,
         rdwidth         => 2*diq_width,
         rdusedw_width   => 5,
         show_ahead      => "OFF"
   )  
   port map(
      --input ports 
      reset_n     => a_reset_n,
      wr_rst_busy => inst0_wr_rst_busy,
      rd_rst_busy => open,
      wrclk       => a_clk,
      wrreq       => inst0_wrreq,
      data        => ai & aq,
      wrfull      => inst0_wrfull,
      wrempty     => open,
      wrusedw     => open,
      rdclk       => clk,
      rdreq       => inst0_rdreq,
      q           => inst0_q,
      rdempty     => inst0_rdempty,
      rdusedw     => open   
   );
    
-- ----------------------------------------------------------------------------
-- Clock domain crosing FIFO for chnl A
-- ----------------------------------------------------------------------------
   inst1_wrreq <= '1' when inst1_wr_rst_busy = '0' and inst1_wrfull = '0' and b_reset_n = '1' else '0';

   inst1_fifo : entity work.fifo_inst
   generic map(
         vendor          => "XILINX", -- valid vals = "XILINX" or "ALTERA"
         dev_family      => "Cyclone IV E",
         wrwidth         => 2*diq_width,
         wrusedw_witdth  => 5,
         rdwidth         => 2*diq_width,
         rdusedw_width   => 5,
         show_ahead      => "OFF"
   )  
   port map(
      --input ports 
      reset_n     => b_reset_n,
      wr_rst_busy => inst1_wr_rst_busy,
      rd_rst_busy => open,
      wrclk       => b_clk,
      wrreq       => inst1_wrreq,
      data        => bi & bq,
      wrfull      => inst1_wrfull,
      wrempty     => open,
      wrusedw     => open,
      rdclk       => clk,
      rdreq       => inst1_rdreq,
      q           => inst1_q,
      rdempty     => inst1_rdempty,
      rdusedw     => open   
   );
   
   
-- ----------------------------------------------------------------------------
-- Read side of both FIFO instances
-- ----------------------------------------------------------------------------
   -- FIFO 0 Read req
   fifo0_rdproc : process(clk, reset_n)
   begin
      if reset_n = '0' then 
         inst0_rdreq <= '0';
      elsif rising_edge(clk) then 
         if current_state = rd_a AND inst0_rdempty = '0' then 
            inst0_rdreq <= '1';
         elsif current_state = rd_ab AND inst0_rdempty = '0' AND inst1_rdempty = '0' then 
            inst0_rdreq <= '1';
         else
            inst0_rdreq <= '0';
         end if;
      end if;
   end process;
  
   -- FIFO 1 Read req
   fifo1_rdproc : process(clk, reset_n)
   begin
      if reset_n = '0' then 
         inst1_rdreq <= '0';
      elsif rising_edge(clk) then 
         if current_state = rd_b AND inst1_rdempty = '0' then 
            inst1_rdreq <= '1';
         elsif current_state = rd_ab AND inst0_rdempty = '0' AND inst1_rdempty = '0' then 
            inst1_rdreq <= '1';
         else
            inst1_rdreq <= '0';
         end if;
      end if;
   end process;
   
      -- FIFO 0 output data trough shift register
   process(clk)
   begin
      if rising_edge(clk) then
         if inst0_q_valid = '1' then 
            a_reg(0) <= inst0_q;
            a_reg(1) <= a_reg(0);
         end if;
      end if;
   end process;
   
   -- FIFO 1 output data trough shift register
   process(clk)
   begin
      if rising_edge(clk) then
         if inst1_q_valid = '1' then 
            b_reg(0) <= inst1_q;
            b_reg(1) <= b_reg(0);
         end if;
      end if;
   end process;
   
   
   -- FIFO 0 and FIFO 1 output data register
   process(clk)
   begin
      if rising_edge(clk) then
         if inst0_q_valid = '1' then 
            ab_reg(1) <= inst0_q;
         end if;
         
         if inst1_q_valid = '1' then 
            ab_reg(0) <= inst1_q;
         end if;
      end if;
   end process;
   

-- ----------------------------------------------------------------------------
--state machine
-- ----------------------------------------------------------------------------
   fsm_f : process(clk, reset_n)
   begin
      if(reset_n = '0')then
         current_state <= idle;
      elsif(clk'event and clk = '1')then
         current_state <= next_state;
      end if;
   end process;

-- ----------------------------------------------------------------------------
--state machine combo
-- ----------------------------------------------------------------------------
   fsm : process(all) begin
      next_state <= current_state;
      case current_state is
      
         when idle =>
            if ch_en(0) = '1' AND ch_en(1)='1' then 
               next_state <= rd_ab;
            else 
               if ch_en(0)='1' then
                  next_state <= rd_a;
               else 
                  next_state <= rd_b;
               end if;
            end if;
         
         when rd_a =>
            if inst0_rdempty = '1' then 
               next_state <= idle;
            else 
               next_state <= rd_a;
            end if;
         when rd_b =>
            if inst1_rdempty = '1' then 
               next_state <= idle;
            else 
               next_state <= rd_b;
            end if;
         when rd_ab =>
            if inst0_rdempty = '1' AND inst1_rdempty = '1' then 
               next_state <= idle;
            else 
               next_state <= rd_ab;
            end if;
   
         when others => 
            next_state <= idle;
      end case;
   end process;
   
   
-- ----------------------------------------------------------------------------
-- Read data valid signal formation logic
-- ----------------------------------------------------------------------------
   process(clk, reset_n)
   begin
      if reset_n = '0' then 
         inst0_q_valid <= '0';
         inst1_q_valid <= '0';
         inst0_q_valid_cnt <= (others=>'0');
         inst1_q_valid_cnt <= (others=>'0');
      elsif rising_edge(clk) then 
         inst0_q_valid <= inst0_rdreq;
         inst1_q_valid <= inst1_rdreq;
         if inst0_q_valid = '1' then 
            inst0_q_valid_cnt <= inst0_q_valid_cnt + 1;
         else 
            inst0_q_valid_cnt <= inst0_q_valid_cnt;
         end if;
         
         if inst1_q_valid = '1' then 
            inst1_q_valid_cnt <= inst1_q_valid_cnt + 1;
         else 
            inst1_q_valid_cnt <= inst1_q_valid_cnt;
         end if;
         
      end if;
   end process;
   
   -- FIFO 0 output data valid
   process(clk, reset_n)
   begin
      if reset_n = '0' then 
         a_reg_valid <= '0';
      elsif rising_edge(clk) then 
         if inst0_q_valid_cnt = 1 and inst0_q_valid='1' then 
            a_reg_valid <= '1';
         else 
            a_reg_valid <= '0';
         end if;
      end if;
   end process;
   
   -- FIFO 1 output data valid
   process(clk, reset_n)
   begin
      if reset_n = '0' then 
         b_reg_valid <= '0';
      elsif rising_edge(clk) then 
         if inst1_q_valid_cnt = 1 and inst1_q_valid='1' then 
            b_reg_valid <= '1';
         else 
            b_reg_valid <= '0';
         end if;
      end if;
   end process;
   
   -- FIFO 0 and FIFO 1 output data valid
   ab_valid_proc : process(clk, reset_n)
   begin
      if reset_n = '0' then 
         ab_reg_valid <= '0';
      elsif rising_edge(clk) then 
         if inst0_q_valid = '1' AND inst1_q_valid = '1' then 
            ab_reg_valid <= '1';
         else 
            ab_reg_valid <= '0';
         end if;
      end if;
   end process;
   
-- ----------------------------------------------------------------------------
-- Output registers stage
-- ----------------------------------------------------------------------------  
   out_reg_proc : process(clk, reset_n)
   begin
      if reset_n = '0' then 
         data        <= (others=>'0');
         data_valid  <= '0';
      elsif rising_edge(clk) then 
         if ch_en = "01" then
            data(2*diq_width-1 downto 0)           <= std_logic_vector(a_reg(0));
            data(4*diq_width-1 downto 2*diq_width) <= std_logic_vector(a_reg(1));
            data_valid     <= a_reg_valid;
         elsif ch_en = "10" then
            data(2*diq_width-1 downto 0)           <= std_logic_vector(b_reg(0));
            data(4*diq_width-1 downto 2*diq_width) <= std_logic_vector(b_reg(1));
            data_valid     <= b_reg_valid;
         else 
            data(2*diq_width-1 downto 0)           <= std_logic_vector(ab_reg(0));
            data(4*diq_width-1 downto 2*diq_width) <= std_logic_vector(ab_reg(1));
            data_valid     <= ab_reg_valid;
         end if;
      end if;
   end process;
  
end arch;   


