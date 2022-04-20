-- ----------------------------------------------------------------------------
-- FILE:          lms7002_tx.vhd
-- DESCRIPTION:   Transmit interface for LMS7002 IC
-- DATE:          11:32 AM Friday, August 31, 2018
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
-- NOTES:
-- 
-- ----------------------------------------------------------------------------
-- altera vhdl_input_version vhdl_2008
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.FIFO_PACK.all;
use work.fpgacfg_pkg.all;
use work.memcfg_pkg.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity lms7002_tx_DPD is
   generic (       
      g_DEV_FAMILY         : string := "Cyclone IV E";
      g_IQ_WIDTH           : integer := 12;
      g_SMPL_FIFO_0_WRUSEDW: integer := 9;
      g_SMPL_FIFO_0_DATAW  : integer := 128;  -- Must be multiple of four IQ samples, minimum four IQ samples
      g_SMPL_FIFO_1_WRUSEDW: integer := 9;
      g_SMPL_FIFO_1_DATAW  : integer := 128;  -- Must be multiple of four IQ samples, minimum four IQ samples
     
      g_ADPDCFG_START_ADDR   : integer := 416;  -- B.J.
      g_CFR0CFG_START_ADDR   : integer := 448;  -- B.J.
      g_CFR1CFG_START_ADDR   : integer := 512;  -- B.J.
      g_FIR0CFG_START_ADDR   : integer := 576;  -- B.J.
      g_FIR1CFG_START_ADDR   : integer := 640   -- B.J.
   );
   
   port (
      clk                  : in  std_logic;
      reset_n              : in  std_logic;
      clk_2x               : in  std_logic;
      clk_2x_reset_n       : in  std_logic;      
      mem_reset_n          : in  std_logic;
      from_memcfg          : in  t_FROM_MEMCFG;
      from_fpgacfg         : in  t_FROM_FPGACFG;
      --Mode settings
      mode                 : in  std_logic; -- JESD207: 1; TRXIQ: 0
      trxiqpulse           : in  std_logic; -- trxiqpulse on: 1; trxiqpulse off: 0
      ddr_en               : in  std_logic; -- DDR: 1; SDR: 0
      mimo_en              : in  std_logic; -- SISO: 1; MIMO: 0
      ch_en                : in  std_logic_vector(1 downto 0); --"01" - Ch. A, "10" - Ch. B, "11" - Ch. A and Ch. B. 
      fidm                 : in  std_logic; -- Frame start at fsync = 0, when 0. Frame start at fsync = 1, when 1.
      --TX testing
      test_ptrn_en         : in  std_logic;
      test_ptrn_I          : in  std_logic_vector(15 downto 0);
      test_ptrn_Q          : in  std_logic_vector(15 downto 0);
      test_cnt_en          : in  std_logic;
      txant_cyc_before_en  : in  std_logic_vector(15 downto 0);
      txant_cyc_after_en   : in  std_logic_vector(15 downto 0);
      txant_en             : out std_logic;                 
      --Tx interface data 
      DIQ                  : out std_logic_vector(g_IQ_WIDTH-1 downto 0);
      fsync                : out std_logic;
      -- Source select
      tx_src_sel           : in std_logic;  -- 0 - FIFO_0 , 1 - FIFO_1
      --TX sample FIFO ports
      fifo_0_wrclk         : in  std_logic;
      fifo_0_reset_n       : in  std_logic;
      fifo_0_wrreq         : in  std_logic;
      fifo_0_data          : in  std_logic_vector(g_SMPL_FIFO_0_DATAW-1 downto 0);
      fifo_0_wrfull        : out std_logic;
      fifo_0_wrusedw       : out std_logic_vector(g_SMPL_FIFO_0_WRUSEDW-1 downto 0);
      fifo_1_wrclk         : in  std_logic;
      fifo_1_reset_n       : in  std_logic;
      fifo_1_wrreq         : in  std_logic;
      fifo_1_data          : in  std_logic_vector(g_SMPL_FIFO_0_DATAW-1 downto 0);
      fifo_1_wrfull        : out std_logic;
      fifo_1_wrusedw       : out std_logic_vector(g_SMPL_FIFO_0_WRUSEDW-1 downto 0);    
      -- SPI for internal modules
      sdin                 : in std_logic;   -- Data in
      sclk                 : in std_logic;   -- Data clock
      sen                  : in std_logic;   -- Enable signal (active low)
      sdout                : out std_logic := '0';  -- Data out

      -- B.J. 
      xp_ai, xp_aq, xp_bi, xp_bq : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      yp_ai, yp_aq, yp_bi, yp_bq : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      xp_data_valid : OUT STD_LOGIC;
      cap_en, cap_cont_en, cap_resetn : OUT STD_LOGIC;
      cap_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      tx_en, capture_en, reset_n_software, lms3_monitoring: out std_logic
   );
end lms7002_tx_DPD;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of lms7002_tx_DPD is
--declare signals,  components here
--inst0
constant c_INST0_RDUSEDW   : integer := FIFORD_SIZE (g_SMPL_FIFO_0_DATAW, 64, g_SMPL_FIFO_0_WRUSEDW); 
signal inst0_q             : std_logic_vector(63 downto 0);
signal inst0_rdreq         : std_logic;
signal inst0_rdempty       : std_logic;
signal inst0_rdusedw       : std_logic_vector(c_INST0_RDUSEDW-1 downto 0);

--inst1
constant c_INST1_RDUSEDW   : integer := FIFORD_SIZE (g_SMPL_FIFO_1_DATAW, 64, g_SMPL_FIFO_1_WRUSEDW); 
signal inst1_q             : std_logic_vector(63 downto 0);
signal inst1_rdreq         : std_logic;
signal inst1_rdempty       : std_logic;
signal inst1_rdusedw       : std_logic_vector(c_INST1_RDUSEDW-1 downto 0);

--FIFO MUX
signal inst0_inst1_q_mux   : std_logic_vector(63 downto 0);

--inst2
signal inst2_diq_in        : std_logic_vector(63 downto 0);
signal inst2_diq_out       : std_logic_vector(63 downto 0);
signal inst2_data_req      : std_logic;
signal inst2_data_valid, inst2_data_valid1, inst2_data_valid_orig : std_logic;
signal inst2_sleep         : std_logic;  -- B.J.

--inst3
signal inst3_wrfull        : std_logic;
signal inst3_q             : std_logic_vector(63 downto 0);
signal inst3_rdempty       : std_logic;
signal inst3_rdusedw       : std_logic_vector(c_INST0_RDUSEDW-1 downto 0);

--inst4
signal inst4_fifo_rdreq    : std_logic;
signal inst4_DIQ_h         : std_logic_vector(g_IQ_WIDTH downto 0);
signal inst4_DIQ_l         : std_logic_vector(g_IQ_WIDTH downto 0);
signal inst4_fifo_q        : std_logic_vector(g_IQ_WIDTH*4-1 downto 0);
signal inst4_rdempty       : std_logic;

--inst5 
signal inst5_diq_h         : std_logic_vector(g_IQ_WIDTH downto 0);
signal inst5_diq_l         : std_logic_vector(g_IQ_WIDTH downto 0);

signal reset_n_DPDTOP, reset_n_soft, reset_n_temp, inst2_data_req_orig, mimo_enable, inst2_data_req1: std_logic; -- B.J.

attribute MARK_DEBUG : string;
attribute MARK_DEBUG of fifo_0_wrclk: signal is "TRUE";
attribute MARK_DEBUG of fifo_0_wrreq: signal is "TRUE";
attribute MARK_DEBUG of fifo_0_wrfull: signal is "TRUE";
attribute MARK_DEBUG of inst0_rdreq: signal is "TRUE";
attribute MARK_DEBUG of inst0_q: signal is "TRUE";
attribute MARK_DEBUG of inst0_rdempty: signal is "TRUE";
 
begin

-- ----------------------------------------------------------------------------
-- FIFO for storing TX samples
-- ----------------------------------------------------------------------------
-- FIFO_0
   inst0_fifo_inst : entity work.fifo_inst
   generic map(
      dev_family     => g_DEV_FAMILY,
      wrwidth        => g_SMPL_FIFO_0_DATAW,
      wrusedw_witdth => g_SMPL_FIFO_0_WRUSEDW, 
      rdwidth        => 64,
      rdusedw_width  => c_INST0_RDUSEDW,
      show_ahead     => "OFF"
  ) 
   port map(
      reset_n  => fifo_0_reset_n,
      wrclk    => fifo_0_wrclk,
      wrreq    => fifo_0_wrreq,
      data     => fifo_0_data,
      wrfull   => fifo_0_wrfull,
      wrempty  => open,
      wrusedw  => fifo_0_wrusedw,
      rdclk    => clk_2x, -- B.J.
      -- rdclk    => clk,
      rdreq    => inst0_rdreq,
      q        => inst0_q,
      rdempty  => inst0_rdempty,
      rdusedw  => open --inst0_rdusedw  
   );
   
   -- inst0_rdreq <= inst4_fifo_rdreq AND (NOT tx_src_sel);  
   -- inst0_rdreq <= inst2_data_req AND (NOT inst0_rdempty) AND (NOT tx_src_sel); -- B.J.
   
   inst0_rdreq <= inst2_data_req AND (NOT tx_src_sel); -- B.J.
   -- 30.72 MSps at input

-- FIFO_1
   inst1_fifo_inst : entity work.fifo_inst
   generic map(
      dev_family     => g_DEV_FAMILY,
      wrwidth        => g_SMPL_FIFO_1_DATAW,
      wrusedw_witdth => g_SMPL_FIFO_1_WRUSEDW, 
      rdwidth        => 64,
      rdusedw_width  => c_INST1_RDUSEDW,
      show_ahead     => "OFF"
  ) 
   port map(
      reset_n  => fifo_1_reset_n,
      wrclk    => fifo_1_wrclk,
      wrreq    => fifo_1_wrreq,
      data     => fifo_1_data,
      wrfull   => fifo_1_wrfull,
      wrempty  => open,
      wrusedw  => fifo_1_wrusedw,
      rdclk    => clk_2x, -- B.J.
      -- rdclk    => clk,
      rdreq    => inst1_rdreq,
      q        => inst1_q,
      rdempty  => inst1_rdempty,
      rdusedw  => inst1_rdusedw  
   );   
   
   -- inst1_rdreq <= inst4_fifo_rdreq AND tx_src_sel;
   --inst1_rdreq <= inst2_data_req AND (NOT inst1_rdempty) AND tx_src_sel; -- B.J.
   inst1_rdreq <= inst2_data_req AND tx_src_sel; -- B.J.
   -- 30.72 MSps at input

-- ----------------------------------------------------------------------------
-- FIFO MUX
-- ----------------------------------------------------------------------------
   
-- inst0_inst1_q_mux <= inst0_q when tx_src_sel = '0' else inst1_q;  -- B.J.
 
-------  B.J.  begin
----------------

   inst2_diq_in <= inst0_q when tx_src_sel = '0' else inst1_q;
   inst2_sleep <=  inst0_rdempty when tx_src_sel = '0' else inst1_rdempty;
   reset_n_DPDTOP <= clk_2x_reset_n AND reset_n;
   reset_n_temp <= reset_n_DPDTOP and reset_n_soft; 
   
   inst2_data_req <= inst2_data_req_orig;
   
   inst2_DPDTopWrapper : entity work.DPDTopWrapper

      generic map (
         g_ADPDCFG_START_ADDR   => g_ADPDCFG_START_ADDR, 
         g_CFR0CFG_START_ADDR   => g_CFR0CFG_START_ADDR,
         g_CFR1CFG_START_ADDR   => g_CFR1CFG_START_ADDR, 
         g_FIR0CFG_START_ADDR   => g_FIR0CFG_START_ADDR,
         g_FIR1CFG_START_ADDR   => g_FIR1CFG_START_ADDR
      )
      port map(
         clk => clk_2x, -- 122.88MHz
         
         reset_n => reset_n_DPDTOP,
         
         sleep => inst2_sleep,
         mem_reset_n => mem_reset_n,
         from_memcfg => from_memcfg,
         ch_en => ch_en,
         sdin => sdin, -- Data in
         sclk => sclk, -- Data clock
         sen => sen, -- Enable signal (active low)
         sdout => sdout, -- Data out
         data_req => inst2_data_req_orig,
         data_valid => inst2_data_valid_orig,
         diq_in => inst2_diq_in,
         diq_out => inst2_diq_out,
         xp_ai => xp_ai,
         xp_aq => xp_aq,
         xp_bi => xp_bi,
         xp_bq => xp_bq,
         yp_ai => yp_ai,
         yp_aq => yp_aq,
         yp_bi => yp_bi,
         yp_bq => yp_bq,
         cap_en => cap_en,
         cap_cont_en => cap_cont_en,
         cap_resetn => cap_resetn,
         cap_size => cap_size,
         reset_n_soft => reset_n_soft,
         tx_en => tx_en,
         capture_en =>capture_en,
         reset_n_software => reset_n_software,
         lms3_monitoring => lms3_monitoring
      );

   xp_data_valid <= inst2_data_valid_orig; -- 61.44 MHz
-------  B.J.  end
----------------

-- ----------------------------------------------------------------------------
   -- FIFO for storing TX samples
-- ----------------------------------------------------------------------------    
   process (clk_2x, reset_n_temp) is
   begin
    
    if reset_n_temp='0' then
       inst2_data_valid1 <='0';
    elsif clk_2x'event and clk_2x='1' then
       if (inst2_data_valid_orig='1') then
           inst2_data_valid1 <= not inst2_data_valid1;
       end if;  
   end if;
   end process; 
   
   mimo_enable <= ch_en(0) AND ch_en(1);
   inst2_data_valid <= inst2_data_valid_orig  when (mimo_enable='1') 
        else (inst2_data_valid1 and inst2_data_valid_orig);  -- 30.72
   
   inst3_fifo_inst : ENTITY work.fifo_inst
      GENERIC MAP(
         dev_family => g_DEV_FAMILY,
         wrwidth => 64,
         wrusedw_witdth => 10,
         rdwidth => 64,
         rdusedw_width => 10,
         show_ahead => "OFF"
      )
      PORT MAP(
         reset_n  => reset_n_temp, -- modified by B.J.
         wrclk => clk_2x,
         wrreq => inst2_data_valid  AND (NOT inst3_wrfull), --inst2_data_valid 
         data => inst2_diq_out,
         wrfull => inst3_wrfull,
         wrempty => OPEN,
         wrusedw => OPEN,
         
         rdclk => clk_2X, -- modified by B.J.                
         rdreq => inst4_fifo_rdreq,
         q => inst3_q,
         rdempty => inst3_rdempty,
         rdusedw => inst3_rdusedw
      );

       
-- ----------------------------------------------------------------------------
-- FIFO2DIQ module
-- ----------------------------------------------------------------------------
--   inst4_fifo_q <=   inst0_inst1_q_mux(63 downto 64-g_IQ_WIDTH) & 
--                     inst0_inst1_q_mux(47 downto 48-g_IQ_WIDTH) &
--                     inst0_inst1_q_mux(31 downto 32-g_IQ_WIDTH) & 
--                     inst0_inst1_q_mux(15 downto 16-g_IQ_WIDTH);
-------  B.J. 
   inst4_fifo_q <= inst3_q(63 DOWNTO 64 - g_IQ_WIDTH) &
      inst3_q(47 DOWNTO 48 - g_IQ_WIDTH) &
      inst3_q(31 DOWNTO 32 - g_IQ_WIDTH) &
      inst3_q(15 DOWNTO 16 - g_IQ_WIDTH);
                     
                 

   inst4_fifo2diq : entity work.fifo2diq
   generic map( 
      dev_family           => g_DEV_FAMILY,
      iq_width             => g_IQ_WIDTH
      )
   port map(
      clk                  => clk_2X, -- B.J.      
      -- reset_n              => reset_n,
      reset_n              => reset_n_temp, -- B.J.
      --Mode settings
      mode                 => mode, -- JESD207: 1; TRXIQ: 0
      trxiqpulse           => trxiqpulse, -- trxiqpulse on: 1; trxiqpulse off: 0
      ddr_en               => ddr_en, -- DDR: 1; SDR: 0
      mimo_en              => mimo_en, -- SISO: 1; MIMO: 0
      ch_en                => ch_en, --"01" - Ch. A, "10" - Ch. B, "11" - Ch. A and Ch. B. 
      fidm                 => fidm, -- External Frame ID mode. Frame start at fsync = 0, when 0. Frame start at fsync = 1, when 1.
      pct_sync_mode        => '0', -- 0 - timestamp, 1 - external pulse 
      pct_sync_pulse       => '0', -- external packet synchronisation pulse signal
      pct_sync_size        => (others=>'0'), -- valid in external pulse mode only
      pct_buff_rdy         => '0',
      --txant
      
      -- B.J. ???????
      txant_cyc_before_en  => txant_cyc_before_en, -- valid in external pulse sync mode only
      txant_cyc_after_en   => txant_cyc_after_en, -- valid in external pulse sync mode only
      -- B.J.
      
      txant_en             => txant_en,                  
      --Tx interface data 
      DIQ                  => open,
      fsync                => open,
      DIQ_h                => inst4_DIQ_h, 
      DIQ_l                => inst4_DIQ_l, 
      --fifo ports 
      fifo_rdempty         => inst3_rdempty, -- B.J.
      fifo_rdreq           => inst4_fifo_rdreq,
      fifo_q               => inst4_fifo_q
   );
   
-- ----------------------------------------------------------------------------
-- TX MUX
-- ----------------------------------------------------------------------------  
   inst5_txiqmux : entity work.txiqmux
   generic map(
      diq_width   => g_IQ_WIDTH
   )
   port map(
      clk               => clk_2X, -- B.J.
      -- reset_n           => reset_n,
      reset_n           => reset_n_temp, -- B.J.
      test_ptrn_en      => test_ptrn_en,  -- Enables test pattern
      test_ptrn_fidm    => '0',           -- Frame start at fsync = 0, when 0. Frame start at fsync = 1, when 1.
      test_ptrn_I       => test_ptrn_I,
      test_ptrn_Q       => test_ptrn_Q,
      test_data_en      => test_cnt_en,
      test_data_mimo_en => '1',
      mux_sel           => '0',   -- Mux select: 0 - tx, 1 - wfm
      tx_diq_h          => inst4_DIQ_h,
      tx_diq_l          => inst4_DIQ_l,
      wfm_diq_h         => (others=>'0'),
      wfm_diq_l         => (others=>'0'),
      diq_h             => inst5_diq_h,
      diq_l             => inst5_diq_l
   );
   
-- ----------------------------------------------------------------------------
-- lms7002_ddout instance. Double data rate cells
-- ----------------------------------------------------------------------------     
   inst6_lms7002_ddout : entity work.lms7002_ddout
   generic map( 
      dev_family     => g_DEV_FAMILY,
      iq_width       => g_IQ_WIDTH
   )
   port map(
      from_fpgacfg   => from_fpgacfg,
      clk            => clk_2X, -- B.J.
      -- reset_n        => reset_n,
      reset_n        => reset_n_temp, -- B.J.      
      data_in_h      => inst5_diq_h,
      data_in_l      => inst5_diq_l,
      --output ports 
      txiq           => DIQ,
      txiqsel        => fsync
   ); 
   
end arch;   


