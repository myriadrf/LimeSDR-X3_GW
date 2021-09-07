-- ----------------------------------------------------------------------------
-- FILE:          dac5672_top.vhd
-- DESCRIPTION:   Top file for DAC5672 IC
-- DATE:          02:07 PM Friday, September 14, 2018
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
--NOTES:
-- ----------------------------------------------------------------------------
-- altera vhdl_input_version vhdl_2008
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
LIBRARY altera_mf;
--USE altera_mf.all;
--USE altera_mf.altera_mf_components.all;
use work.FIFO_PACK.all;
use work.fpgacfg_pkg.all;
use work.txtspcfg_pkg.all;


-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity dac5672_top is
   generic(
      g_DEV_FAMILY            : string := "Cyclone V GX";
      g_IQ_WIDTH              : integer := 14;
      g_TX0_FIFO_WRUSEDW      : integer := 9;
      g_TX0_FIFO_DATAW        : integer := 128;
      g_TX1_FIFO_WRUSEDW      : integer := 9;
      g_TX1_FIFO_DATAW        : integer := 128;
      g_TX2_FIFO_WRUSEDW      : integer := 9;
      g_TX2_FIFO_DATAW        : integer := 128
      
   );
   port (
      clk               : in  std_logic;
      reset_n           : in  std_logic;
      --DAC#1 Outputs
      DAC1_SLEEP        : out std_logic := '0'; -- 0 - Normal operation, 1 - power down
      DAC1_MODE         : out std_logic := '1'; -- 0 - Single bus interleaved, 1 - Dual bus mode 
      DAC1_DA           : out std_logic_vector(g_IQ_WIDTH-1 downto 0);
      DAC1_DB           : out std_logic_vector(g_IQ_WIDTH-1 downto 0);
      --DAC#2 Outputs
      DAC2_DA           : out std_logic_vector(g_IQ_WIDTH-1 downto 0);
      DAC2_DB           : out std_logic_vector(g_IQ_WIDTH-1 downto 0);
      DAC2_SLEEP        : out std_logic := '0'; -- 0 - Normal operation, 1 - power down
      DAC2_MODE         : out std_logic := '1'; -- 0 - Single bus interleaved, 1 - Dual bus mode 
      -- Internal TX ports
      tx_reset_n        : in  std_logic;
      tx_src_sel        : in  std_logic_vector(1 downto 0);
      -- tx0 FIFO source for DAC
      tx0_wrclk         : in  std_logic;
      tx0_reset_n       : in  std_logic;
      tx0_wrfull        : out std_logic;
      tx0_wrusedw       : out std_logic_vector(g_TX0_FIFO_WRUSEDW-1 downto 0);
      tx0_wrreq         : in  std_logic;
      tx0_data          : in  std_logic_vector(g_TX0_FIFO_DATAW-1 downto 0);
      -- Configuration data
      from_fpgacfg      : in  t_FROM_FPGACFG;
      from_txtspcfg_0   : in  t_FROM_TXTSPCFG;
      to_txtspcfg_0     : out t_TO_TXTSPCFG;
      from_txtspcfg_1   : in  t_FROM_TXTSPCFG;
      to_txtspcfg_1     : out t_TO_TXTSPCFG

   );
end dac5672_top;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of dac5672_top is
--declare signals,  components here

signal tx_src_sel_sync           : std_logic_vector(tx_src_sel'length-1 downto 0);

--Internal signals
signal tx1_dac1_da               : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal tx1_dac1_db               : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal tx1_dac2_da               : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal tx1_dac2_db               : std_logic_vector(g_IQ_WIDTH-1 downto 0);

--inst0
constant c_INST0_WRUSEDW_WITDTH  : integer := g_TX0_FIFO_WRUSEDW;
constant c_INST0_RDWIDTH         : integer := 64;    
constant c_INST0_RDUSEDW_WIDTH   : integer := FIFORD_SIZE(g_TX0_FIFO_DATAW, 
                                                            c_INST0_RDWIDTH,
                                                            c_INST0_WRUSEDW_WITDTH);

signal inst0_wrfull              : std_logic;
signal inst0_wrusedw             : std_logic_vector(c_INST0_WRUSEDW_WITDTH-1 downto 0);
signal inst0_q                   : std_logic_vector(c_INST0_RDWIDTH-1 downto 0);
signal inst0_rdempty             : std_logic;
signal inst0_rdreq               : std_logic;

--inst1
constant c_INST1_WRUSEDW_WITDTH  : integer := g_TX1_FIFO_WRUSEDW;
constant c_INST1_RDWIDTH         : integer := 28;    
constant c_INST1_RDUSEDW_WIDTH   : integer := FIFORD_SIZE(g_TX1_FIFO_DATAW, 
                                                            c_INST1_RDWIDTH,
                                                            c_INST1_WRUSEDW_WITDTH);

signal inst1_wrfull              : std_logic;
signal inst1_wrusedw             : std_logic_vector(c_INST1_WRUSEDW_WITDTH-1 downto 0);
signal inst1_q                   : std_logic_vector(c_INST1_RDWIDTH-1 downto 0);
signal inst1_rdempty             : std_logic;
signal inst1_rdreq               : std_logic;


--inst2
constant c_INST2_WRUSEDW_WITDTH  : integer := g_TX2_FIFO_WRUSEDW;
constant c_INST2_RDWIDTH         : integer := 64;    
constant c_INST2_RDUSEDW_WIDTH   : integer := FIFORD_SIZE(g_TX2_FIFO_DATAW, 
                                                            c_INST2_RDWIDTH,
                                                            c_INST2_WRUSEDW_WITDTH);
signal inst2_wrfull              : std_logic;
signal inst2_wrusedw             : std_logic_vector(c_INST2_WRUSEDW_WITDTH-1 downto 0);
signal inst2_q                   : std_logic_vector(c_INST2_RDWIDTH-1 downto 0);
signal inst2_rdempty             : std_logic;
signal inst2_rdreq               : std_logic;
                                                            
--inst3
signal inst3_DIQ0                : std_logic_vector(g_IQ_WIDTH downto 0);
signal inst3_DIQ1                : std_logic_vector(g_IQ_WIDTH downto 0);
signal inst3_DIQ2                : std_logic_vector(g_IQ_WIDTH downto 0);
signal inst3_DIQ3                : std_logic_vector(g_IQ_WIDTH downto 0);
signal inst3_fifo_rdreq          : std_logic;
signal inst3_fifo_rdempty        : std_logic;
signal inst3_fifo_q_valid        : std_logic;
signal inst3_fifo_q              : std_logic_vector(4*g_IQ_WIDTH-1 downto 0);

--inst4
signal inst4_TYI                 : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal inst4_TYQ                 : std_logic_vector(g_IQ_WIDTH-1 downto 0);

--inst5
signal inst5_TYI                 : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal inst5_TYQ                 : std_logic_vector(g_IQ_WIDTH-1 downto 0);

--Internal mux signals
signal mux0_dac1_da              : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal mux0_dac1_db              : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal mux0_dac2_da              : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal mux0_dac2_db              : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal mux1_dac1_da              : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal mux1_dac1_db              : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal mux1_dac2_da              : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal mux1_dac2_db              : std_logic_vector(g_IQ_WIDTH-1 downto 0);

signal DAC1_DA_unsigned          : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal DAC1_DB_unsigned          : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal DAC2_DA_unsigned          : std_logic_vector(g_IQ_WIDTH-1 downto 0);
signal DAC2_DB_unsigned          : std_logic_vector(g_IQ_WIDTH-1 downto 0);

signal inst6_dataout             : std_logic_vector(g_IQ_WIDTH*4-1 downto 0);


begin
   
   DAC1_SLEEP <= '0'; -- 0 - Normal operation, 1 - power down
   DAC2_SLEEP <= '0';
   DAC1_MODE  <= '1'; -- 0 - Single bus interleaved, 1 - Dual bus mode
   DAC2_MODE  <= '1';
   
   -- Sync registers
   bus_sync_reg0 : entity work.bus_sync_reg
   generic map (2)
   port map(clk, '1', tx_src_sel, tx_src_sel_sync);

-- ----------------------------------------------------------------------------
-- Sample FIFO
-- ----------------------------------------------------------------------------
-- TX 0 FIFO
   inst0_fifo_inst : entity work.fifo_inst
   generic map(
      dev_family        => g_DEV_FAMILY,
      wrwidth           => g_TX0_FIFO_DATAW,
      wrusedw_witdth    => c_INST0_WRUSEDW_WITDTH,
      rdwidth           => c_INST0_RDWIDTH,
      rdusedw_width     => c_INST0_RDUSEDW_WIDTH,
      show_ahead        => "OFF"
   )
  port map(
      reset_n     => tx0_reset_n,
      wrclk       => tx0_wrclk,
      wrreq       => tx0_wrreq,
      data        => tx0_data,
      wrfull      => tx0_wrfull,
      wrempty     => open,
      wrusedw     => tx0_wrusedw,
      rdclk       => clk,
      rdreq       => inst0_rdreq,
      q           => inst0_q,
      rdempty     => inst0_rdempty,
      rdusedw     => open   
   );
   
   inst0_rdreq <= inst3_fifo_rdreq;
     
-- ----------------------------------------------------------------------------
-- Sample forming module
-- ----------------------------------------------------------------------------
-- Samples are placed in MSb
inst3_fifo_q <=   inst0_q(63 downto 64-g_IQ_WIDTH) & 
                  inst0_q(47 downto 48-g_IQ_WIDTH) &
                  inst0_q(31 downto 32-g_IQ_WIDTH) & 
                  inst0_q(15 downto 16-g_IQ_WIDTH);
                  
   process(clk, reset_n)
   begin
      if reset_n = '0' then 
         inst3_fifo_q_valid <= '0';
      elsif (clk'event AND clk='1') then 
         inst3_fifo_q_valid <= inst3_fifo_rdreq;
      end if;
   end process;

inst3_txiq_par : entity work.txiq_par
	generic map( 
      dev_family	   => g_DEV_FAMILY,
      iq_width			=> g_IQ_WIDTH
	)
	port map (
      clk            => clk,
      reset_n        => tx_reset_n,
      en             => from_fpgacfg.rx_en OR from_fpgacfg.wfm_play,
		ch_en			   => from_fpgacfg.ch_en(1 downto 0), 
		fidm			   => '0',
      DIQ0		 	   => inst3_DIQ0,
		DIQ1           => inst3_DIQ1,
      DIQ2		 	   => inst3_DIQ2,
		DIQ3           => inst3_DIQ3,
      fifo_rdempty   => inst3_fifo_rdempty,
      fifo_rdreq     => inst3_fifo_rdreq,
      fifo_q_valid   => inst3_fifo_q_valid,
      fifo_q         => inst3_fifo_q
   );
   
   inst3_fifo_rdempty <=   inst0_rdempty;
   
-- ----------------------------------------------------------------------------
-- Internal MUX1
-- ----------------------------------------------------------------------------

   mux1_dac1_da <= inst3_DIQ0(g_IQ_WIDTH-1 downto 0);
   mux1_dac1_db <= inst3_DIQ1(g_IQ_WIDTH-1 downto 0);
   mux1_dac2_da <= inst3_DIQ2(g_IQ_WIDTH-1 downto 0);
   mux1_dac2_db <= inst3_DIQ3(g_IQ_WIDTH-1 downto 0);

   
-- ----------------------------------------------------------------------------
-- TX correctors
-- ----------------------------------------------------------------------------
   -- DAC1 (CH.A)
   inst4_tx_chain : entity work.tx_chain
   port map
   (
      clk            => clk,
      nrst           => reset_n,
      TXI            => mux1_dac1_da & "0000",
      TXQ            => mux1_dac1_db & "0000",
      TYI            => inst4_TYI,
      TYQ            => inst4_TYQ,
      from_txtspcfg  => from_txtspcfg_0,
      to_txtspcfg    => to_txtspcfg_0
   );
   
   -- DAC2 (CH.B)
   inst5_tx_chain : entity work.tx_chain
   port map
   (
      clk            => clk,
      nrst           => reset_n,
      TXI            => mux1_dac2_da & "0000",
      TXQ            => mux1_dac2_db & "0000",
      TYI            => inst5_TYI,
      TYQ            => inst5_TYQ,
      from_txtspcfg  => from_txtspcfg_1,
      to_txtspcfg    => to_txtspcfg_1
   );
   
-- ----------------------------------------------------------------------------
-- Converting signed to unsigned samples
-- ---------------------------------------------------------------------------- 
   to_unsigned_proc : process(clk, reset_n)
   begin
      if reset_n = '0' then 
         DAC1_DA_unsigned <= (others => '0');
         DAC1_DB_unsigned <= (others => '0');
         DAC2_DA_unsigned <= (others => '0');
         DAC2_DB_unsigned <= (others => '0');
      elsif (clk'event AND clk='1') then 
         DAC1_DA_unsigned <= std_logic_vector(signed(inst4_TYI)+8192);
         DAC1_DB_unsigned <= std_logic_vector(signed(inst4_TYQ)+8192);
         DAC2_DA_unsigned <= std_logic_vector(signed(inst5_TYI)+8192);
         DAC2_DB_unsigned <= std_logic_vector(signed(inst5_TYQ)+8192);
      end if;
   end process;
   
-- ----------------------------------------------------------------------------
-- Output ports
-- ----------------------------------------------------------------------------   
   DAC1_DA <= DAC1_DA_unsigned;  
   DAC1_DB <= DAC1_DB_unsigned;
   DAC2_DA <= DAC2_DA_unsigned;
   DAC2_DB <= DAC2_DB_unsigned;
   
   end arch;   


