-- ----------------------------------------------------------------------------
-- FILE:          io_buff.vhd
-- DESCRIPTION:   IO buffers for PCIe_5GRadio
-- DATE:          12:14 PM Thursday, May 23, 2019
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
--NOTES:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.io_buff_pkg.all;

Library UNISIM;
use UNISIM.vcomponents.all;



-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity io_buff is
   port (
      -- 14-bit ADC external ports
      clk_200mhz        : in     std_logic;
      ADC_CLK_P         : out    std_logic;
      ADC_CLK_N         : out    std_logic;
      ADC_CLKOUT_P      : in     std_logic;
      ADC_CLKOUT_N      : in     std_logic;
      ADC_DA_P          : in     std_logic_vector(6 downto 0);
      ADC_DA_N          : in     std_logic_vector(6 downto 0);
      ADC_DB_P          : in     std_logic_vector(6 downto 0);
      ADC_DB_N          : in     std_logic_vector(6 downto 0);
      FPGA_ADC_RESET    : out    std_logic;
      -- Internal ports 
      adc_o             : out    t_FROM_ADC;
      adc_i             : in     t_TO_ADC
      );
end io_buff;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of io_buff is
--declare signals,  components here

signal adc_clkout_ibufds   : std_logic;
signal adc_clkout_bufio    : std_logic;
signal adc_clkout_bufr     : std_logic;

signal adc_da_ibufds       : std_logic_vector(6 downto 0);
signal adc_da_idelay       : std_logic_vector(6 downto 0);

signal adc_db_ibufds       : std_logic_vector(6 downto 0);
signal adc_db_idelay       : std_logic_vector(6 downto 0);
 
begin
-- ----------------------------------------------------------------------------
-- ADC buffers
-- ----------------------------------------------------------------------------
   -- Diffrential buffer for data clock from ADC
   inst0 : IBUFDS
      generic map (
         DIFF_TERM      => TRUE, -- Differential Termination 
         IBUF_LOW_PWR   => FALSE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => adc_clkout_ibufds,         -- Buffer output
         I  => ADC_CLKOUT_P,     -- Diff_p buffer input (connect directly to top-level port)
         IB => ADC_CLKOUT_N      -- Diff_n buffer input (connect directly to top-level port)
      );
      
   -- BUFIO: Local Clock Buffer for I/O
   BUFIO_inst : BUFIO
   port map (
      O => adc_clkout_bufio, -- 1-bit output: Clock output (connect to I/O clock loads).
      I => adc_clkout_ibufds  -- 1-bit input: Clock input (connect to an IBUF or BUFMR).
   );
   
   -- BUFR: Regional Clock Buffer for I/O and Logic Resources within a Clock Region
   BUFR_inst : BUFR
   generic map (
      BUFR_DIVIDE    => "BYPASS",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
      SIM_DEVICE     => "7SERIES"  -- Must be set to "7SERIES" 
   )
   port map (
      O     => adc_clkout_bufr,  -- 1-bit output: Clock output port
      CE    => '1',              -- 1-bit input: Active high, clock enable (Divided modes only)
      CLR   => '0',              -- 1-bit input: Active high, asynchronous clear (Divided modes only)
      I     => adc_clkout_ibufds -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );
      
   inst1 : OBUFDS
   generic map (
      IOSTANDARD  => "LVDS_25", -- Specify the output I/O standard
      SLEW        => "SLOW")    -- Specify the output slew rate
   port map (
      O  => ADC_CLK_P,     -- Diff_p output (connect directly to top-level port)
      OB => ADC_CLK_N,     -- Diff_n output (connect directly to top-level port)
      I  => adc_i.CLK      -- Buffer input 
   );
    
   -- Diferential DA (data A chanel) buffers
   DA_buff : for i in 0 to 6 generate
   IBUFDS_inst : IBUFDS
      generic map (
         DIFF_TERM      => TRUE, -- Differential Termination 
         IBUF_LOW_PWR   => FALSE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => adc_da_ibufds(i),   -- Buffer output
         I  => ADC_DA_P(i),   -- Diff_p buffer input (connect directly to top-level port)
         IB => ADC_DA_N(i)    -- Diff_n buffer input (connect directly to top-level port)
      );
   end generate DA_buff;
   
   gen_idelay_da : 
   for i in 0 to 6 generate
   IDELAYE2_inst_DA : IDELAYE2
   generic map (
      CINVCTRL_SEL => "FALSE",          -- Enable dynamic clock inversion (FALSE, TRUE)
      DELAY_SRC => "IDATAIN",           -- Delay input (IDATAIN, DATAIN)
      HIGH_PERFORMANCE_MODE => "TRUE",  -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
      IDELAY_TYPE => "FIXED",           -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      IDELAY_VALUE => 17,               -- Input delay tap setting (0-31)
      PIPE_SEL => "FALSE",              -- Select pipelined mode, FALSE, TRUE
      REFCLK_FREQUENCY => 200.0,        -- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      SIGNAL_PATTERN => "DATA"          -- DATA, CLOCK input signal
   )
   port map (
      CNTVALUEOUT       => open, -- 5-bit output: Counter value output
      DATAOUT           => adc_da_idelay(i),         -- 1-bit output: Delayed data output
      C                 => '0',                     -- 1-bit input: Clock input
      CE                => '1',                   -- 1-bit input: Active high enable increment/decrement input
      CINVCTRL          => '0',       -- 1-bit input: Dynamic clock inversion input
      CNTVALUEIN        => (others=>'0'),   -- 5-bit input: Counter value input
      DATAIN            => '0',           -- 1-bit input: Internal delay data input
      IDATAIN           => adc_da_ibufds(i),         -- 1-bit input: Data input from the I/O
      INC               => '0',                 -- 1-bit input: Increment / Decrement tap delay input
      LD                => '0',                   -- 1-bit input: Load IDELAY_VALUE input
      LDPIPEEN          => '0',       -- 1-bit input: Enable PIPELINE register to load data input
      REGRST            => '0'            -- 1-bit input: Active-high reset tap-delay input
   );
   end generate gen_idelay_da;
   
   gen_idelay_db : 
   for i in 0 to 6 generate
   IDELAYE2_inst_DB : IDELAYE2
   generic map (
      CINVCTRL_SEL => "FALSE",          -- Enable dynamic clock inversion (FALSE, TRUE)
      DELAY_SRC => "IDATAIN",           -- Delay input (IDATAIN, DATAIN)
      HIGH_PERFORMANCE_MODE => "TRUE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
      IDELAY_TYPE => "FIXED",           -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      IDELAY_VALUE => 17,                -- Input delay tap setting (0-31)
      PIPE_SEL => "FALSE",              -- Select pipelined mode, FALSE, TRUE
      REFCLK_FREQUENCY => 200.0,        -- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      SIGNAL_PATTERN => "DATA"          -- DATA, CLOCK input signal
   )
   port map (
      CNTVALUEOUT       => open, -- 5-bit output: Counter value output
      DATAOUT           => adc_db_idelay(i),         -- 1-bit output: Delayed data output
      C                 => '0',                     -- 1-bit input: Clock input
      CE                => '1',                   -- 1-bit input: Active high enable increment/decrement input
      CINVCTRL          => '0',       -- 1-bit input: Dynamic clock inversion input
      CNTVALUEIN        => (others=>'0'),   -- 5-bit input: Counter value input
      DATAIN            => '0',           -- 1-bit input: Internal delay data input
      IDATAIN           => adc_db_ibufds(i),         -- 1-bit input: Data input from the I/O
      INC               => '0',                 -- 1-bit input: Increment / Decrement tap delay input
      LD                => '0',                   -- 1-bit input: Load IDELAY_VALUE input
      LDPIPEEN          => '0',       -- 1-bit input: Enable PIPELINE register to load data input
      REGRST            => '0'            -- 1-bit input: Active-high reset tap-delay input
   );
   end generate gen_idelay_db;
   
   IDELAYCTRL_inst : IDELAYCTRL
   port map (
      RDY      => open,       -- 1-bit output: Ready output
      REFCLK   => clk_200mhz, -- 1-bit input: Reference clock input
      RST      => '0'        -- 1-bit input: Active high reset input
   );
   
   -- Diferential DB (data B chanel) buffers
   DB_buff : for i in 0 to 6 generate
   IBUFDS_inst : IBUFDS
      generic map (
         DIFF_TERM      => TRUE, -- Differential Termination 
         IBUF_LOW_PWR   => FALSE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => adc_db_ibufds(i),   -- Buffer output
         I  => ADC_DB_P(i),   -- Diff_p buffer input (connect directly to top-level port)
         IB => ADC_DB_N(i)    -- Diff_n buffer input (connect directly to top-level port)
      );
   end generate DB_buff;
   

   FPGA_ADC_RESET <= 'Z' when adc_i.RESET='1' else '0';
   
   --adc_o.CLKOUT_IO      <= adc_clkout_bufio;
   adc_o.CLKOUT_IO      <= adc_clkout_bufr;
   adc_o.CLKOUT_LOGIC   <= adc_clkout_bufr;
   adc_o.DA             <= adc_da_idelay;
   adc_o.DB             <= adc_db_idelay;

  
end arch;   


