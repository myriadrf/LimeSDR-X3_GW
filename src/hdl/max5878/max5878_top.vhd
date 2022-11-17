-- ----------------------------------------------------------------------------
-- FILE:          max5878_top.vhd
-- DESCRIPTION:   Top file for DAC5672 IC
-- DATE:          02:07 PM Friday, September 14, 2018
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
--NOTES:
-- ----------------------------------------------------------------------------
-- altera vhdl_input_version vhdl_2008
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY altera_mf;
--USE altera_mf.all;
--USE altera_mf.altera_mf_components.all;
USE work.FIFO_PACK.ALL;
USE work.fpgacfg_pkg.ALL;
USE work.txtspcfg_pkg.ALL;
USE work.fircfg_pkg.ALL; -- B.J.
use work.memcfg_pkg.all;-- B.J

LIBRARY UNISIM;
USE UNISIM.vcomponents.ALL;
-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
ENTITY max5878_top IS
   GENERIC (
      g_DEV_FAMILY         : STRING := "Cyclone V GX";
      g_IQ_WIDTH           : INTEGER := 16;
      g_TX0_FIFO_WRUSEDW   : INTEGER := 9;
      g_TX0_FIFO_DATAW     : INTEGER := 128;
      g_TX1_FIFO_WRUSEDW   : INTEGER := 9;
      g_TX1_FIFO_DATAW     : INTEGER := 128;
      g_TX2_FIFO_WRUSEDW   : INTEGER := 9;
      g_TX2_FIFO_DATAW     : INTEGER := 128;
      g_INV_IQSEL          : INTEGER := 0;
      g_CFR2CFG_START_ADDR : INTEGER := 768; 
      g_CFR3CFG_START_ADDR : INTEGER := 832;
      g_FIR2CFG_START_ADDR : INTEGER := 896;
      g_FIR3CFG_START_ADDR : INTEGER := 960 
   );
   PORT (
      clk             : IN STD_LOGIC; -- Logic clock
      clk2x           : IN STD_LOGIC; -- DAC interface clock for OSERDERSE
      clkfwd          : IN STD_LOGIC; -- Forwarded clock for DAC
      reset_n         : IN STD_LOGIC;
      --DAC#1 Outputs
      DAC1_CLK_P      : OUT STD_LOGIC; --  Differential clock for DAC
      DAC1_CLK_N      : OUT STD_LOGIC;
      DAC1_B_P        : OUT STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0); -- DAC data bits
      DAC1_B_N        : OUT STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
      DAC1_SELIQ_P    : OUT STD_LOGIC; -- SELIQN low and SELIQP high -  data to the I-DAC outputs
      DAC1_SELIQ_N    : OUT STD_LOGIC; -- SELIQP low and SELIQN high -  data to the Q-DAC outputs

      DAC1_PD         : OUT STD_LOGIC; -- '1' -  power-down, 0 -  normal operation.
      DAC1_TORB       : OUT STD_LOGIC; -- '1' - complement input format,  '0' - binary input format
      DAC1_XOR_P      : OUT STD_LOGIC; -- XORN high and XORP low - data stream unchanged, 
      DAC1_XOR_N      : OUT STD_LOGIC; -- XORN low and XORP high -  invert the DAC input data
      --DAC#2 Outputs
      DAC2_CLK_P      : OUT STD_LOGIC; --  Differential clock for DAC
      DAC2_CLK_N      : OUT STD_LOGIC;
      DAC2_B_P        : OUT STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0); -- DAC data bits
      DAC2_B_N        : OUT STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
      DAC2_SELIQ_P    : OUT STD_LOGIC; -- SELIQN low and SELIQP high -  data to the I-DAC outputs
      DAC2_SELIQ_N    : OUT STD_LOGIC; -- SELIQP low and SELIQN high -  data to the Q-DAC outputs

      DAC2_PD         : OUT STD_LOGIC; -- '1' -  power-down, 0 -  normal operation.
      DAC2_TORB       : OUT STD_LOGIC; -- '1' - complement input format,  '0' - binary input format
      DAC2_XOR_P      : OUT STD_LOGIC; -- XORN high and XORP low - data stream unchanged, 
      DAC2_XOR_N      : OUT STD_LOGIC; -- XORN low and XORP high -  invert the DAC input data
      -- Internal TX ports
      tx_reset_n      : IN STD_LOGIC;
      tx_src_sel      : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      -- tx0 FIFO source for DAC
      tx0_wrclk       : IN STD_LOGIC;
      tx0_reset_n     : IN STD_LOGIC;
      tx0_wrfull      : OUT STD_LOGIC;
      tx0_wrusedw     : OUT STD_LOGIC_VECTOR(g_TX0_FIFO_WRUSEDW - 1 DOWNTO 0);
      tx0_wrreq       : IN STD_LOGIC;
      tx0_data        : IN STD_LOGIC_VECTOR(g_TX0_FIFO_DATAW - 1 DOWNTO 0);
      -- misc
      txant_en        : OUT STD_LOGIC;
      -- Configuration data
      from_fpgacfg    : IN t_FROM_FPGACFG;
      from_txtspcfg_0 : IN t_FROM_TXTSPCFG;
      to_txtspcfg_0   : OUT t_TO_TXTSPCFG;
      from_txtspcfg_1 : IN t_FROM_TXTSPCFG;
      to_txtspcfg_1   : OUT t_TO_TXTSPCFG;
      from_fircfg_a   : IN t_FROM_FIRCFG; -- B.J.
      from_fircfg_b   : IN t_FROM_FIRCFG; -- B.J.      
      
      sdin            : IN STD_LOGIC;
      sclk            : IN STD_LOGIC;
      sen             : IN STD_LOGIC;
      sdout           : OUT STD_LOGIC;
      from_memcfg     : IN t_FROM_MEMCFG

   );
END max5878_top;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
ARCHITECTURE arch OF max5878_top IS
   --declare signals,  components here

   SIGNAL tx_src_sel_sync : STD_LOGIC_VECTOR(tx_src_sel'length - 1 DOWNTO 0);

   --Internal signals
   SIGNAL tx1_dac1_da : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL tx1_dac1_db : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL tx1_dac2_da : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL tx1_dac2_db : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);

   --inst0
   CONSTANT c_INST0_WRUSEDW_WITDTH : INTEGER := g_TX0_FIFO_WRUSEDW;
   CONSTANT c_INST0_RDWIDTH : INTEGER := 64;
   CONSTANT c_INST0_RDUSEDW_WIDTH : INTEGER := FIFORD_SIZE(g_TX0_FIFO_DATAW,
   c_INST0_RDWIDTH,
   c_INST0_WRUSEDW_WITDTH);

   SIGNAL inst0_wrfull : STD_LOGIC;
   SIGNAL inst0_wrusedw : STD_LOGIC_VECTOR(c_INST0_WRUSEDW_WITDTH - 1 DOWNTO 0);
   SIGNAL inst0_q : STD_LOGIC_VECTOR(c_INST0_RDWIDTH - 1 DOWNTO 0);
   SIGNAL inst0_rdempty : STD_LOGIC;
   SIGNAL inst0_rdreq : STD_LOGIC;
   SIGNAL inst0_rdusedw : STD_LOGIC_VECTOR(c_INST0_RDUSEDW_WIDTH - 1 DOWNTO 0);

   --inst1
   CONSTANT c_INST1_WRUSEDW_WITDTH : INTEGER := g_TX1_FIFO_WRUSEDW;
   CONSTANT c_INST1_RDWIDTH : INTEGER := 28;
   CONSTANT c_INST1_RDUSEDW_WIDTH : INTEGER := FIFORD_SIZE(g_TX1_FIFO_DATAW,
   c_INST1_RDWIDTH,
   c_INST1_WRUSEDW_WITDTH);

   SIGNAL inst1_wrfull : STD_LOGIC;
   SIGNAL inst1_wrusedw : STD_LOGIC_VECTOR(c_INST1_WRUSEDW_WITDTH - 1 DOWNTO 0);
   SIGNAL inst1_q : STD_LOGIC_VECTOR(c_INST1_RDWIDTH - 1 DOWNTO 0);
   SIGNAL inst1_rdempty : STD_LOGIC;
   SIGNAL inst1_rdreq : STD_LOGIC;
   --inst2
   CONSTANT c_INST2_WRUSEDW_WITDTH : INTEGER := g_TX2_FIFO_WRUSEDW;
   CONSTANT c_INST2_RDWIDTH : INTEGER := 64;
   CONSTANT c_INST2_RDUSEDW_WIDTH : INTEGER := FIFORD_SIZE(g_TX2_FIFO_DATAW,
   c_INST2_RDWIDTH,
   c_INST2_WRUSEDW_WITDTH);
   SIGNAL inst2_wrfull : STD_LOGIC;
   SIGNAL inst2_wrusedw : STD_LOGIC_VECTOR(c_INST2_WRUSEDW_WITDTH - 1 DOWNTO 0);
   SIGNAL inst2_q : STD_LOGIC_VECTOR(c_INST2_RDWIDTH - 1 DOWNTO 0);
   SIGNAL inst2_rdempty : STD_LOGIC;
   SIGNAL inst2_rdreq : STD_LOGIC;

   --inst3
   SIGNAL inst3_DIQ0 : STD_LOGIC_VECTOR(g_IQ_WIDTH DOWNTO 0);
   SIGNAL inst3_DIQ1 : STD_LOGIC_VECTOR(g_IQ_WIDTH DOWNTO 0);
   SIGNAL inst3_DIQ2 : STD_LOGIC_VECTOR(g_IQ_WIDTH DOWNTO 0);
   SIGNAL inst3_DIQ3 : STD_LOGIC_VECTOR(g_IQ_WIDTH DOWNTO 0);
   SIGNAL inst3_fifo_rdreq : STD_LOGIC;
   SIGNAL inst3_fifo_rdempty : STD_LOGIC;
   SIGNAL inst3_fifo_q_valid : STD_LOGIC;
   SIGNAL inst3_fifo_q : STD_LOGIC_VECTOR(4 * g_IQ_WIDTH - 1 DOWNTO 0);

   --Internal mux signals
   SIGNAL mux0_dac1_da : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL mux0_dac1_db : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL mux0_dac2_da : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL mux0_dac2_db : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL mux1_dac1_da : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL mux1_dac1_db : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL mux1_dac2_da : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL mux1_dac2_db : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);

   SIGNAL DAC1_DA_unsigned : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL DAC1_DB_unsigned : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL DAC2_DA_unsigned : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);
   SIGNAL DAC2_DB_unsigned : STD_LOGIC_VECTOR(g_IQ_WIDTH - 1 DOWNTO 0);

   SIGNAL inst6_dataout : STD_LOGIC_VECTOR(g_IQ_WIDTH * 4 - 1 DOWNTO 0);

   SIGNAL smpl_cnt_en_reg : STD_LOGIC;

   COMPONENT max5878_io
      GENERIC (
         SYS_W : INTEGER := 16;
         INV_IQSEL : INTEGER := g_INV_IQSEL;
         DEV_W : INTEGER := 32
      );
      PORT (
         clk : IN STD_LOGIC;
         clk_div : IN STD_LOGIC;
         clk_fwd : IN STD_LOGIC;
         data_out_from_device : IN STD_LOGIC_VECTOR(DEV_W - 1 DOWNTO 0);
         data_out_to_pins_p : OUT STD_LOGIC_VECTOR(SYS_W - 1 DOWNTO 0);
         data_out_to_pins_n : OUT STD_LOGIC_VECTOR(SYS_W - 1 DOWNTO 0);
         seliq_to_pins_p : OUT STD_LOGIC;
         seliq_to_pins_n : OUT STD_LOGIC;
         --ref_clock            : in std_logic;
         clk_to_pins_p : OUT STD_LOGIC;
         clk_to_pins_n : OUT STD_LOGIC;
         clk_reset : IN STD_LOGIC;
         --delay_locked         : out std_logic;
         io_reset : IN STD_LOGIC
      );
   END COMPONENT;

   COMPONENT nr_cfr_equ_top IS
      GENERIC (
         CFR2CFG_START_ADDR : INTEGER := 768;
         CFR3CFG_START_ADDR : INTEGER := 832;
         FIR2CFG_START_ADDR : INTEGER := 896;
         FIR3CFG_START_ADDR : INTEGER := 960
      );
      PORT (
         clk : IN STD_LOGIC; -- Clock  -- 122.88 MHz
         reset_n : IN STD_LOGIC;
         mem_reset_n : IN STD_LOGIC;
         from_memcfg : IN t_FROM_MEMCFG;

         sdin : IN STD_LOGIC;
         sclk : IN STD_LOGIC;
         sen : IN STD_LOGIC;
         sdout : OUT STD_LOGIC;

         ai_in, aq_in, bi_in, bq_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         ai_out, aq_out, bi_out, bq_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
         xen, yen : OUT STD_LOGIC;

         from_txtspcfg_0 : IN t_FROM_TXTSPCFG; -- TxTSP configuration, channel A
         to_txtspcfg_0 : OUT t_TO_TXTSPCFG;
         from_txtspcfg_1 : IN t_FROM_TXTSPCFG; -- TxTSP configuration, channel B 
         to_txtspcfg_1 : OUT t_TO_TXTSPCFG;
         from_fircfg_a : IN t_FROM_FIRCFG; -- Equaliser, channel A
         from_fircfg_b : IN t_FROM_FIRCFG -- Equaliser, channel B 
      );
   END COMPONENT nr_cfr_equ_top;

   signal ai_in, aq_in, bi_in, bq_in : std_logic_vector(15 downto 0);
   signal ai_out, aq_out, bi_out, bq_out : std_logic_vector(15 downto 0);
   SIGNAL fir_out_ai_dc, fir_out_aq_dc, fir_out_bi_dc, fir_out_bq_dc : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL xena : STD_LOGIC;

BEGIN

   --DAC1_SLEEP <= '0'; -- 0 - Normal operation, 1 - power down
   --DAC2_SLEEP <= '0';
   --DAC1_MODE  <= '1'; -- 0 - Single bus interleaved, 1 - Dual bus mode
   --DAC2_MODE  <= '1';

   -- Sync registers
   bus_sync_reg0 : ENTITY work.bus_sync_reg
      GENERIC MAP(2)
      PORT MAP(clk, '1', tx_src_sel, tx_src_sel_sync);

   -- ----------------------------------------------------------------------------
   -- Sample FIFO
   -- ----------------------------------------------------------------------------
   -- TX 0 FIFO
   inst0_fifo_inst : ENTITY work.fifo_inst
      GENERIC MAP(
         dev_family => g_DEV_FAMILY,
         wrwidth => g_TX0_FIFO_DATAW,
         wrusedw_witdth => c_INST0_WRUSEDW_WITDTH,
         rdwidth => c_INST0_RDWIDTH,
         rdusedw_width => c_INST0_RDUSEDW_WIDTH,
         show_ahead => "OFF"
      )
      PORT MAP(
         reset_n => tx0_reset_n,
         wrclk => tx0_wrclk,
         wrreq => tx0_wrreq,
         data => tx0_data,
         wrfull => tx0_wrfull,
         wrempty => OPEN,
         wrusedw => tx0_wrusedw,
         rdclk => clk,
         rdreq => inst0_rdreq,
         q => inst0_q,
         rdempty => inst0_rdempty,
         rdusedw => inst0_rdusedw
      );

   inst0_rdreq <= inst3_fifo_rdreq;

   -- ----------------------------------------------------------------------------
   -- Sample forming module
   -- ----------------------------------------------------------------------------
   -- Samples are placed in MSb
   inst3_fifo_q <= inst0_q(63 DOWNTO 64 - g_IQ_WIDTH) &
      inst0_q(47 DOWNTO 48 - g_IQ_WIDTH) &
      inst0_q(31 DOWNTO 32 - g_IQ_WIDTH) &
      inst0_q(15 DOWNTO 16 - g_IQ_WIDTH);

   PROCESS (clk, reset_n)
   BEGIN
      IF reset_n = '0' THEN
         inst3_fifo_q_valid <= '0';
      ELSIF (clk'event AND clk = '1') THEN
         inst3_fifo_q_valid <= inst3_fifo_rdreq;
      END IF;
   END PROCESS;

   inst3_txiq_par : ENTITY work.txiq_par
      GENERIC MAP(
         dev_family => g_DEV_FAMILY,
         iq_width => g_IQ_WIDTH
      )
      PORT MAP(
         clk => clk,
         reset_n => tx_reset_n,
         en => xena AND (from_fpgacfg.rx_en OR from_fpgacfg.wfm_play),
         ch_en => from_fpgacfg.ch_en(1 DOWNTO 0),
         fidm => '0',
         DIQ0 => inst3_DIQ0,
         DIQ1 => inst3_DIQ1,
         DIQ2 => inst3_DIQ2,
         DIQ3 => inst3_DIQ3,
         fifo_rdempty => inst3_fifo_rdempty,
         fifo_rdreq => inst3_fifo_rdreq,
         fifo_q_valid => inst3_fifo_q_valid,
         fifo_q => inst3_fifo_q
      );
      
   inst3_0_edge_delay : entity work.edge_delay
      port map (
                clk      => clk,
                reset_n  => tx_reset_n,
                rise_dly => from_fpgacfg.txant_pre,
                fall_dly => from_fpgacfg.txant_post,
                d        => inst3_fifo_rdreq, --assigning fifo_rdreq in this case is equivalent to what is done in lms7002_top
                q        => TXANT_EN
   );   

   inst3_fifo_rdempty <= inst0_rdempty;

   -- ----------------------------------------------------------------------------
   -- Internal MUX1
   -- ----------------------------------------------------------------------------

   mux1_dac1_da <= inst3_DIQ0(g_IQ_WIDTH - 1 DOWNTO 0);
   mux1_dac1_db <= inst3_DIQ1(g_IQ_WIDTH - 1 DOWNTO 0);
   mux1_dac2_da <= inst3_DIQ2(g_IQ_WIDTH - 1 DOWNTO 0);
   mux1_dac2_db <= inst3_DIQ3(g_IQ_WIDTH - 1 DOWNTO 0);

-------------------------------------------
   ai_in <= mux1_dac1_da;
   aq_in <= mux1_dac1_db;
   bi_in <= mux1_dac2_da;
   bq_in <= mux1_dac2_db;

   nr_cfr : nr_cfr_equ_top
   GENERIC MAP(
      CFR2CFG_START_ADDR => g_CFR2CFG_START_ADDR,
      CFR3CFG_START_ADDR => g_CFR3CFG_START_ADDR,
      FIR2CFG_START_ADDR => g_FIR2CFG_START_ADDR,
      FIR3CFG_START_ADDR => g_FIR3CFG_START_ADDR
   )
   PORT MAP(
      clk => clk,
      reset_n => reset_n,
      mem_reset_n => reset_n,
      from_memcfg => from_memcfg,
      sdin => sdin,
      sclk => sclk,
      sen => sen,
      sdout => sdout,
      ai_in => ai_in,
      aq_in => aq_in,
      bi_in => bi_in,
      bq_in => bq_in,
      ai_out => ai_out,
      aq_out => aq_out,
      bi_out => bi_out,
      bq_out => bq_out,
      xen => xena,
      --yen => OPEN,
      from_txtspcfg_0 => from_txtspcfg_0, -- TXTSP configuration, channel A
      to_txtspcfg_0 => to_txtspcfg_0,
      from_txtspcfg_1 => from_txtspcfg_1, -- TXTSP configuration, channel B 
      to_txtspcfg_1 => to_txtspcfg_1,
      from_fircfg_a => from_fircfg_a,
      from_fircfg_b => from_fircfg_b
   ); 

   fir_out_ai_dc <= ai_out;
   fir_out_aq_dc <= aq_out;
   fir_out_bi_dc <= bi_out;
   fir_out_bq_dc <= bq_out;

   -- ----------------------------------------------------------------------------
   -- DAC IO modules
   -- ----------------------------------------------------------------------------   
   io_inst0 : max5878_io
   GENERIC MAP(
      SYS_W => 16,
      INV_IQSEL => g_INV_IQSEL,
      DEV_W => 32
   )
   PORT MAP(
      clk => clk2x,
      clk_div => clk,
      clk_fwd => clkfwd,
      data_out_from_device => fir_out_aq_dc & fir_out_ai_dc, -- B.J.
      data_out_to_pins_p => DAC1_B_P,
      data_out_to_pins_n => DAC1_B_N,
      seliq_to_pins_p => DAC1_SELIQ_P,
      seliq_to_pins_n => DAC1_SELIQ_N,
      clk_to_pins_p => DAC1_CLK_P,
      clk_to_pins_n => DAC1_CLK_N,
      clk_reset => not (tx_reset_n or from_txtspcfg_0.insel), --'0',
      io_reset => not (tx_reset_n or from_txtspcfg_0.insel)--'0'
   );

   io_inst1 : max5878_io
   GENERIC MAP(
      SYS_W => 16,
      INV_IQSEL => g_INV_IQSEL,
      DEV_W => 32
   )
   PORT MAP(
      clk => clk2x,
      clk_div => clk,
      clk_fwd => clkfwd,
      data_out_from_device => fir_out_bq_dc & fir_out_bi_dc, -- B.J.
      data_out_to_pins_p => DAC2_B_P,
      data_out_to_pins_n => DAC2_B_N,
      seliq_to_pins_p => DAC2_SELIQ_P,
      seliq_to_pins_n => DAC2_SELIQ_N,
      clk_to_pins_p => DAC2_CLK_P,
      clk_to_pins_n => DAC2_CLK_N,
      clk_reset => NOT (tx_reset_n or from_txtspcfg_1.insel), --'0',
      io_reset => NOT (tx_reset_n or from_txtspcfg_1.insel)--'0'
   );

   DAC1_PD <= '0';
   DAC1_TORB <= '0';

   OBUFDS_inst0 : OBUFDS
   GENERIC MAP(
      IOSTANDARD => "LVDS_25", -- Specify the output I/O standard
      SLEW => "SLOW") -- Specify the output slew rate
   PORT MAP(
      O => DAC1_XOR_P, -- Diff_p output (connect directly to top-level port)
      OB => DAC1_XOR_N, -- Diff_n output (connect directly to top-level port)
      I => '0' -- Buffer input 
   );

   DAC2_PD <= '0';
   DAC2_TORB <= '0';

   OBUFDS_inst1 : OBUFDS
   GENERIC MAP(
      IOSTANDARD => "LVDS_25", -- Specify the output I/O standard
      SLEW => "SLOW") -- Specify the output slew rate
   PORT MAP(
      O => DAC2_XOR_P, -- Diff_p output (connect directly to top-level port)
      OB => DAC2_XOR_N, -- Diff_n output (connect directly to top-level port)
      I => '0' -- Buffer input 
   );

END arch;