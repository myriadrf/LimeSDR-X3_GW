-- ----------------------------------------------------------------------------
-- FILE:          lms7002_top.vhd
-- DESCRIPTION:   Top file for LMS7002M IC
-- DATE:          9:16 AM Wednesday, August 29, 2018
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
use work.fpgacfg_pkg.all;
use work.tstcfg_pkg.all;
use work.memcfg_pkg.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity lms7002_top_DPD is
   generic(
      
      -- added by B.J.
      DPDTopWrapper_enable : INTEGER := 1;

      g_DEV_FAMILY               : string := "Cyclone IV E";
      g_IQ_WIDTH                 : integer := 12;
      g_INV_INPUT_CLK            : string := "ON";
      g_TX_SMPL_FIFO_0_WRUSEDW   : integer := 9;
      g_TX_SMPL_FIFO_0_DATAW     : integer := 128;
      g_TX_SMPL_FIFO_1_WRUSEDW   : integer := 9;
      g_TX_SMPL_FIFO_1_DATAW     : integer := 128;

      g_ADPDCFG_START_ADDR   : integer := 416;  -- B.J.
      g_CFR0CFG_START_ADDR   : integer := 448;  -- B.J.
      g_CFR1CFG_START_ADDR   : integer := 512;  -- B.J.
      g_FIR0CFG_START_ADDR   : integer := 576;  -- B.J.
      g_FIR1CFG_START_ADDR   : integer := 640;  -- B.J.
      DPD_enable : INTEGER := 1  -- B.J.
   );
   port (  
      from_fpgacfg      : in  t_FROM_FPGACFG;
      from_tstcfg       : in  t_FROM_TSTCFG;
      from_memcfg       : in  t_FROM_MEMCFG;
      -- Momory module reset
      mem_reset_n       : in  std_logic;
      -- PORT1 interface
      MCLK1             : in  std_logic;  -- TX interface clock
      FCLK1             : out std_logic;  -- TX interface feedback clock
      DIQ1              : out std_logic_vector(g_IQ_WIDTH-1 downto 0);
      ENABLE_IQSEL1     : out std_logic;
      TXNRX1            : out std_logic;
      -- PORT2 interface
      MCLK2             : in  std_logic;  -- RX interface clock
      FCLK2             : out std_logic;  -- RX interface feedback clock
      DIQ2              : in  std_logic_vector(g_IQ_WIDTH-1 downto 0);
      ENABLE_IQSEL2     : in  std_logic;
      TXNRX2            : out std_logic;
      -- MISC
      RESET             : out std_logic; 
      TXEN              : out std_logic;
      RXEN              : out std_logic;
      CORE_LDO_EN       : out std_logic;
      -- Internal TX ports
      tx_reset_n        : in  std_logic;
      tx_fifo_0_wrclk   : in  std_logic;
      tx_fifo_0_reset_n : in  std_logic;
      tx_fifo_0_wrreq   : in  std_logic;
      tx_fifo_0_data    : in  std_logic_vector(g_TX_SMPL_FIFO_0_DATAW-1 downto 0);
      tx_fifo_0_wrfull  : out std_logic;
      tx_fifo_0_wrusedw : out std_logic_vector(g_TX_SMPL_FIFO_0_WRUSEDW-1 downto 0);
      tx_fifo_1_wrclk   : in  std_logic;
      tx_fifo_1_reset_n : in  std_logic;
      tx_fifo_1_wrreq   : in  std_logic;
      tx_fifo_1_data    : in  std_logic_vector(g_TX_SMPL_FIFO_1_DATAW-1 downto 0);
      tx_fifo_1_wrfull  : out std_logic;
      tx_fifo_1_wrusedw : out std_logic_vector(g_TX_SMPL_FIFO_1_WRUSEDW-1 downto 0);
      tx_ant_en         : out std_logic;
      -- Internal RX ports
      rx_reset_n        : in  std_logic;
      rx_diq_h          : out std_logic_vector(g_IQ_WIDTH downto 0);
      rx_diq_l          : out std_logic_vector(g_IQ_WIDTH downto 0);
      rx_data_valid     : out std_logic;
      rx_data           : out std_logic_vector(g_IQ_WIDTH*4-1 downto 0);
      --sample compare
      rx_smpl_cmp_start : in std_logic;
      rx_smpl_cmp_length: in std_logic_vector(15 downto 0);
      rx_smpl_cmp_done  : out std_logic;
      rx_smpl_cmp_err   : out std_logic;
      -- RX sample counter enable
      rx_smpl_cnt_en    : out std_logic;
         -- SPI for internal modules
      sdin              : in std_logic;   -- Data in
      sclk              : in std_logic;   -- Data clock
      sen               : in std_logic;   -- Enable signal (active low)
      sdout             : out std_logic;  -- Data out

      -- B.J.
      -- collected signals from transmit paths LMS#1 for DPD, both transmit channels 
      xp_ai, xp_aq, xp_bi, xp_bq : out STD_LOGIC_VECTOR(15 DOWNTO 0);
      yp_ai, yp_aq, yp_bi, yp_bq : out STD_LOGIC_VECTOR(15 DOWNTO 0);
      x_ai, x_aq, x_bi, x_bq: out STD_LOGIC_VECTOR(15 DOWNTO 0);
      xp_data_valid, x_data_valid : out STD_LOGIC;
      cap_en, cap_cont_en, cap_resetn : out STD_LOGIC;
      cap_size : out STD_LOGIC_VECTOR(15 DOWNTO 0);
      tx_en, capture_en, reset_n_software, lms3_monitoring: out std_logic
   );
end lms7002_top_DPD;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of lms7002_top_DPD is
--declare signals,  components here
signal inst2_diq_h : std_logic_vector (g_IQ_WIDTH downto 0); 
signal inst2_diq_l : std_logic_vector (g_IQ_WIDTH downto 0); 

signal rx_smpl_cmp_start_sync    : std_logic;
--inst0
signal inst0_reset_n             : std_logic;

--inst1
signal inst1_fifo_0_reset_n      : std_logic;
signal inst1_fifo_1_reset_n      : std_logic;
signal inst1_clk_2x_reset_n      : std_logic;
signal inst1_txant_en            : std_logic;

signal int_mode                  : std_logic;    
signal int_trxiqpulse            : std_logic;   
signal int_ddr_en                : std_logic;
signal int_mimo_en               : std_logic;
signal int_ch_en                 : std_logic_vector(1 downto 0);
signal int_fidm                  : std_logic;


signal lms_txen_int        : std_logic;
signal lms_rxen_int        : std_logic;

     --added by B.J.
   SIGNAL x_ai_p, x_aq_p, x_bi_p, x_bq_p : STD_LOGIC_VECTOR(11 DOWNTO 0);
   SIGNAL inst2_diq_out_h : STD_LOGIC_VECTOR (g_IQ_WIDTH DOWNTO 0);
   SIGNAL inst2_diq_out_l : STD_LOGIC_VECTOR (g_IQ_WIDTH DOWNTO 0); 
   signal tx_reset_n1 : std_logic;
   
  component ddr2rxiq is
  port(
		reset_n 	: in std_logic;       ---input reset active low
		clk				: in std_logic;		
		dil				: in std_logic_vector(12 downto 0);
		dih				: in std_logic_vector(12 downto 0);
		rxiqsel		: out std_logic;
		rxdA			: out std_logic_vector(11 downto 0);
		rxdB			: out std_logic_vector(11 downto 0);		
		AI			: out std_logic_vector(11 downto 0);
		AQ			: out std_logic_vector(11 downto 0);
		BI			: out std_logic_vector(11 downto 0);
		BQ			: out std_logic_vector(11 downto 0)

   );
   end component ddr2rxiq;


begin


   sync_reg0 : entity work.sync_reg 
   port map(MCLK2, rx_reset_n, from_fpgacfg.rx_en, inst0_reset_n);
   
   sync_reg1 : entity work.sync_reg 
   port map(MCLK2, '1', rx_smpl_cmp_start, rx_smpl_cmp_start_sync);
   
   sync_reg2 : entity work.sync_reg 
   port map(tx_fifo_0_wrclk, tx_fifo_0_reset_n, '1', inst1_fifo_0_reset_n);
   
   sync_reg3 : entity work.sync_reg 
   port map(tx_fifo_1_wrclk, tx_fifo_1_reset_n, '1', inst1_fifo_1_reset_n);
      
    -- added by B.J.
   sync_reg6 : ENTITY work.sync_reg
   PORT MAP(MCLK2, tx_reset_n, '1', tx_reset_n1);  -- B.J.
    
-- ----------------------------------------------------------------------------
-- RX interface
-- ----------------------------------------------------------------------------
inst0_diq2fifo : entity work.diq2fifo
   generic map( 
      -- added by B.J. 	
      DPDTopWrapper_enable => DPDTopWrapper_enable,
      dev_family           => g_DEV_FAMILY,
      iq_width             => g_IQ_WIDTH,
      invert_input_clocks  => g_INV_INPUT_CLK
   )
   port map(
      clk            => MCLK2,
      reset_n        => inst0_reset_n,
      -- added  by B.J.
      cap_en => tx_reset_n1,  -- B.J.
      
      test_ptrn_en   => from_fpgacfg.rx_ptrn_en,
      --Mode settings
      mode           => from_fpgacfg.mode,         -- JESD207: 1; TRXIQ: 0
      trxiqpulse     => from_fpgacfg.trxiq_pulse,  -- trxiqpulse on: 1; trxiqpulse off: 0
      ddr_en         => from_fpgacfg.ddr_en,       -- DDR: 1; SDR: 0
      mimo_en        => from_fpgacfg.mimo_int_en,  -- SISO: 1; MIMO: 0
      ch_en          => from_fpgacfg.ch_en(1 downto 0),  --"01" - Ch. A, "10" - Ch. B, "11" - Ch. A and Ch. B. 
      fidm           => '0',  -- Frame start at fsync = 0, when 0. Frame start at fsync = 1, when 1.
      --Rx interface data 
      DIQ            => DIQ2,
      fsync          => ENABLE_IQSEL2,
      --fifo ports 
      fifo_wfull     => '0',
      fifo_wrreq     => rx_data_valid,
      fifo_wdata     => rx_data,
      --sample compare
      smpl_cmp_start => rx_smpl_cmp_start_sync,
      smpl_cmp_length=> rx_smpl_cmp_length,
      smpl_cmp_done  => rx_smpl_cmp_done,
      smpl_cmp_err   => rx_smpl_cmp_err,
      -- sample counter enable
      smpl_cnt_en    => rx_smpl_cnt_en,

       -- added by B.J.
       diq_h => inst2_diq_out_h,
       diq_l => inst2_diq_out_l
   );

    -- added by B.J.
    inst3_ddr2rxiq : ddr2rxiq
    PORT MAP(
       reset_n => '1', --'1', was inst2_reset_n
       clk => MCLK2,
       dil => inst2_diq_out_l,
       dih => inst2_diq_out_h,
       rxiqsel => x_data_valid,
       rxdA => OPEN,
       rxdB => OPEN,
       AI => x_ai_p, -- CH A, # LMS1, I,Q
       AQ => x_aq_p,
       BI => x_bi_p, -- CH B, # LMS1, I,Q
       BQ => x_bq_p
    );
 
    x_ai <= x_ai_p & "0000";
    x_aq <= x_aq_p & "0000";
    x_bi <= x_bi_p & "0000";
    x_bq <= x_bq_p & "0000";

   
-- ----------------------------------------------------------------------------
-- TX interface
-- ----------------------------------------------------------------------------
   -- Internal DIQ mode settings for TX interface
   -- (Workaround for WFM player)
--   int_mode       <= from_fpgacfg.mode                when from_fpgacfg.wfm_play = '0' else '0';
--   int_trxiqpulse <= from_fpgacfg.trxiq_pulse         when from_fpgacfg.wfm_play = '0' else '0';
--   int_ddr_en     <= from_fpgacfg.ddr_en              when from_fpgacfg.wfm_play = '0' else '1';
--   int_mimo_en    <= from_fpgacfg.mimo_int_en         when from_fpgacfg.wfm_play = '0' else '1';
--   int_ch_en      <= from_fpgacfg.ch_en(1 downto 0)   when from_fpgacfg.wfm_play = '0' else "11";

   int_mode       <= from_fpgacfg.mode             ;
   int_trxiqpulse <= from_fpgacfg.trxiq_pulse      ;
   int_ddr_en     <= from_fpgacfg.ddr_en           ;
   int_mimo_en    <= from_fpgacfg.mimo_int_en      ;
   int_ch_en      <= from_fpgacfg.ch_en(1 downto 0);

inst1_lms7002_tx : entity work.lms7002_tx_DPD
   generic map( 
      g_DEV_FAMILY            => g_DEV_FAMILY,
      g_IQ_WIDTH              => g_IQ_WIDTH,
      g_SMPL_FIFO_0_WRUSEDW   => g_TX_SMPL_FIFO_0_WRUSEDW,
      g_SMPL_FIFO_0_DATAW     => g_TX_SMPL_FIFO_0_DATAW,
      g_SMPL_FIFO_1_WRUSEDW   => g_TX_SMPL_FIFO_1_WRUSEDW,
      g_SMPL_FIFO_1_DATAW     => g_TX_SMPL_FIFO_1_DATAW,    
      
      g_ADPDCFG_START_ADDR   => g_ADPDCFG_START_ADDR,  -- B.J. 
      g_CFR0CFG_START_ADDR   => g_CFR0CFG_START_ADDR,  -- B.J.
      g_CFR1CFG_START_ADDR   => g_CFR1CFG_START_ADDR,  -- B.J. 
      g_FIR0CFG_START_ADDR   => g_FIR0CFG_START_ADDR,  -- B.J.
      g_FIR1CFG_START_ADDR   => g_FIR1CFG_START_ADDR,  -- B.J.
      DPD_enable => DPD_enable
      
      )
   port map(
      clk                  => MCLK1,
      reset_n              => tx_reset_n,
      mem_reset_n          => mem_reset_n,
      from_memcfg          => from_memcfg,
      from_fpgacfg         => from_fpgacfg,
      
      --Mode settings
      mode                 => int_mode,      -- JESD207: 1; TRXIQ: 0
      trxiqpulse           => int_trxiqpulse,-- trxiqpulse on: 1; trxiqpulse off: 0
      ddr_en               => int_ddr_en,    -- DDR: 1; SDR: 0
      mimo_en              => int_mimo_en,   -- SISO: 0; MIMO: 1
      ch_en                => int_ch_en,     --"01" - Ch. A, "10" - Ch. B, "11" - Ch. A and Ch. B. 
      fidm                 => '0', -- Frame start at fsync = 0, when 0. Frame start at fsync = 1, when 1.
      --TX testing
      test_ptrn_en         => from_fpgacfg.tx_ptrn_en,
      test_ptrn_I          => from_tstcfg.TX_TST_I,
      test_ptrn_Q          => from_tstcfg.TX_TST_Q,
      test_cnt_en          => from_fpgacfg.tx_cnt_en,
      txant_cyc_before_en  => from_fpgacfg.txant_pre,
      txant_cyc_after_en   => from_fpgacfg.txant_post,
      txant_en             => inst1_txant_en,                 
      --Tx interface data 
      DIQ                  => DIQ1,
      fsync                => ENABLE_IQSEL1,
      -- Source select
      tx_src_sel           => from_fpgacfg.wfm_play,  -- 0 - FIFO, 1 - diq_h/diq_l
      --TX sample FIFO ports 
      fifo_0_wrclk         => tx_fifo_0_wrclk,
      fifo_0_reset_n       => inst1_fifo_0_reset_n,
      fifo_0_wrreq         => tx_fifo_0_wrreq,
      fifo_0_data          => tx_fifo_0_data,
      fifo_0_wrfull        => tx_fifo_0_wrfull,
      fifo_0_wrusedw       => tx_fifo_0_wrusedw,
      fifo_1_wrclk         => tx_fifo_1_wrclk,
      fifo_1_reset_n       => inst1_fifo_1_reset_n,
      fifo_1_wrreq         => tx_fifo_1_wrreq,
      fifo_1_data          => tx_fifo_1_data,
      fifo_1_wrfull        => tx_fifo_1_wrfull,
      fifo_1_wrusedw       => tx_fifo_1_wrusedw,
      --TX sample ports (direct access to DDR cells)
      sdin                 => sdin,  
      sclk                 => sclk,
      sen                  => sen,  
      sdout                => sdout,      
      
      -- B.J. 
      xp_ai                => xp_ai, 
      xp_aq                => xp_aq,
      xp_bi                => xp_bi, 
      xp_bq                => xp_bq,
      yp_ai                => yp_ai, 
      yp_aq                => yp_aq,
      yp_bi                => yp_bi,
      yp_bq                => yp_bq,
      xp_data_valid        => xp_data_valid,
      cap_en               => cap_en, 
      cap_cont_en          => cap_cont_en,
      cap_size             => cap_size,
      cap_resetn => cap_resetn,
      tx_en => tx_en,
      capture_en => capture_en,     
      reset_n_software => reset_n_software,
      lms3_monitoring => lms3_monitoring
   );
      
-- ----------------------------------------------------------------------------
-- Output ports
-- ----------------------------------------------------------------------------
   lms_txen_int <= from_fpgacfg.LMS1_TXEN when from_fpgacfg.LMS_TXRXEN_MUX_SEL = '0' else inst1_txant_en;
   lms_rxen_int <= from_fpgacfg.LMS1_RXEN when from_fpgacfg.LMS_TXRXEN_MUX_SEL = '0' else not inst1_txant_en;

 
   RESET       	<= from_fpgacfg.LMS1_RESET;
   TXEN        	<= lms_txen_int when from_fpgacfg.LMS_TXRXEN_INV='0' else not lms_txen_int;
   RXEN        	<= lms_rxen_int when from_fpgacfg.LMS_TXRXEN_INV='0' else not lms_rxen_int;
   CORE_LDO_EN 	<= from_fpgacfg.LMS1_CORE_LDO_EN;
   TXNRX1      	<= from_fpgacfg.LMS1_TXNRX1;
   TXNRX2      	<= from_fpgacfg.LMS1_TXNRX2;
   
   tx_ant_en <= inst1_txant_en;
   
   
end arch;   


