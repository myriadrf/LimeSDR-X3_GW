-- ----------------------------------------------------------------------------
-- FILE:          DPDTop.vhd
-- DESCRIPTION:   Top file for CFR, FIR and DPD modules
-- DATE:          10:55 AM Friday, December 19, 2018
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.memcfg_pkg.ALL;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
ENTITY DPDTop IS
   GENERIC(
   -- CFG_START_ADDR has to be multiple of 32, because there are 32 addresses
   ADPDCFG_START_ADDR   : integer := 416;
   CFR0CFG_START_ADDR   : integer := 448;
   CFR1CFG_START_ADDR   : integer := 512;
   FIR0CFG_START_ADDR   : integer := 576;
   FIR1CFG_START_ADDR   : integer := 640;   
   DPD_enable : INTEGER := 1  -- B.J.
   );

   PORT (
      clk_X2 : IN STD_LOGIC; -- 122.88 MHz
      reset_n : IN STD_LOGIC;
      sleep : IN std_logic;
      mem_reset_n : IN STD_LOGIC;
      from_memcfg : IN t_FROM_MEMCFG;
      ai_in, aq_in, bi_in, bq_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      sdin : IN STD_LOGIC;
      sclk : IN STD_LOGIC;
      sen : IN STD_LOGIC;
      sdout : OUT STD_LOGIC;
      xp_ai, xp_aq, xp_bi, xp_bq : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      yp_ai, yp_aq, yp_bi, yp_bq : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      xen, yen : OUT STD_LOGIC;
      cap_en, cap_cont_en, cap_resetn : OUT STD_LOGIC;
      cap_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      PAEN0, PAEN1, DCEN0, DCEN1 : OUT STD_LOGIC;
      rf_sw : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      reset_n2 : OUT STD_LOGIC;
      tx_en, capture_en, reset_n_software, lms3_monitoring, fix_mimo, dpdtop_en: out std_logic
   );
END DPDTop;

ARCHITECTURE struct OF DPDTop IS

   COMPONENT adpdcfg IS
      PORT (
         maddress : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
         mimo_en : IN STD_LOGIC;
         sdin : IN STD_LOGIC;
         sclk : IN STD_LOGIC;
         sen : IN STD_LOGIC;
         sdout : OUT STD_LOGIC;
         lreset : IN STD_LOGIC;
         mreset : IN STD_LOGIC;
         oen : OUT STD_LOGIC; --nc
         stateo : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
         ADPD_BUFF_SIZE : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); --ADPD
         ADPD_CONT_CAP_EN : OUT STD_LOGIC;
         ADPD_CAP_EN, ADPD_CAP_RESETN : OUT STD_LOGIC;
         -- DPD
         adpd_config0, adpd_config1, adpd_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
         -- CFR
         cfr0_bypass, cfr0_sleep, cfr1_bypass, cfr1_sleep, cfr0_odd, cfr1_odd : OUT STD_LOGIC;
         cfr0_interpolation, cfr1_interpolation : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
         cfr0_threshold, cfr1_threshold : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
         cfr0_order, cfr1_order : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
         -- CFR GAIN
         gain_cfr0, gain_cfr1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
         gain_cfr0_bypass, gain_cfr1_bypass : OUT STD_LOGIC;
         -- HB
         hb0_delay, hb1_delay : OUT STD_LOGIC;
         -- FIR
         gfir0_byp, gfir0_sleep, gfir0_odd, gfir1_byp, gfir1_sleep, gfir1_odd : OUT STD_LOGIC;
         PAEN0, PAEN1, DCEN0, DCEN1, reset_n_soft : OUT STD_LOGIC;
         rf_sw : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
         tx_en, capture_en, lms3_monitoring, fix_mimo, dpdtop_en: out std_logic
      );
   END COMPONENT adpdcfg;

   COMPONENT cfir_bj IS
      GENERIC (nd : NATURAL := 20);
      PORT (
         sleep : IN STD_LOGIC;
         clk : IN STD_LOGIC;
         reset : IN STD_LOGIC;
         reset_mem_n : IN STD_LOGIC;
         bypass : IN STD_LOGIC;
         odd : IN STD_LOGIC;
         xi : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         xq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         threshold : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         n : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Clock division ratio = 4
         l : IN STD_LOGIC_VECTOR(2 DOWNTO 0); -- Number of taps is 40
         maddressf0 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
         maddressf1 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
         mimo_en : IN STD_LOGIC;
         sdin : IN STD_LOGIC;
         sclk : IN STD_LOGIC;
         sen : IN STD_LOGIC;
         sdout : OUT STD_LOGIC;
         oen : OUT STD_LOGIC;
         yi : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
         yq : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
         xen : OUT STD_LOGIC
      );
   END COMPONENT cfir_bj;

   COMPONENT iqim_gain_corr IS
      PORT (
         clk, reset_n, en, bypass : IN STD_LOGIC;
         ypi : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         ypq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         gain_ch : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         ypi_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
         ypq_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
      );
   END COMPONENT iqim_gain_corr;

   COMPONENT gfirhf16mod_bj IS
      PORT (
         sleep : IN STD_LOGIC;
         clk : IN STD_LOGIC;
         reset : IN STD_LOGIC;
         reset_mem_n : IN STD_LOGIC;
         bypass : IN STD_LOGIC;
         odd : IN STD_LOGIC; -- equal to 1 if odd number of ceofficients
         half : IN STD_LOGIC; -- used only for crest factor reduction feedback
         xi : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         xq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         n : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
         l : IN STD_LOGIC_VECTOR(2 DOWNTO 0); -- Number of taps is 40
         maddressf0 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
         maddressf1 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
         mimo_en : IN STD_LOGIC;
         sdin : IN STD_LOGIC;
         sclk : IN STD_LOGIC;
         sen : IN STD_LOGIC;
         sdout : OUT STD_LOGIC;
         oen : OUT STD_LOGIC;
         yi : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
         yq : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
         xen : OUT STD_LOGIC
      );
   END COMPONENT gfirhf16mod_bj;

   COMPONENT hb1 IS
      PORT (
         xi1 : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
         xq1 : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
         n : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
         sleep, bypass : IN STD_LOGIC;
         clk : IN STD_LOGIC;
         reset : IN STD_LOGIC;
         xen : OUT STD_LOGIC;
         yi1 : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
         yq1 : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
         delay : IN STD_LOGIC);
   END COMPONENT hb1;

   COMPONENT QADPD IS
      GENERIC (
         n : NATURAL := 4; -- memory depth
         m : NATURAL := 3; -- nonlinearity
         mul_n : NATURAL := 18); -- multiplier precision
      PORT (
         clk, sclk : IN STD_LOGIC;
         reset_n : IN STD_LOGIC;
         reset_mem_n : IN STD_LOGIC;
         data_valid : IN STD_LOGIC;
         xpi : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
         xpq : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
         ypi : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
         ypq : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
         spi_ctrl : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         spi_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
      );
   END COMPONENT QADPD;

   SIGNAL inst0_sdout : STD_LOGIC;
   SIGNAL inst0_cfr0_bypass, inst0_cfr1_bypass, inst0_cfr0_sleep, inst0_cfr1_sleep : STD_LOGIC;
   SIGNAL inst0_cfr0_odd, inst0_cfr1_odd : STD_LOGIC;
   SIGNAL inst0_cfr0_threshold, inst0_cfr1_threshold : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL cfr0_interpolation, cfr1_interpolation : STD_LOGIC_VECTOR(1 DOWNTO 0);

   SIGNAL inst0_gain_cfr0_bypass, inst0_gain_cfr1_bypass : STD_LOGIC;
   SIGNAL inst0_gain_cfr0, inst0_gain_cfr1 : STD_LOGIC_VECTOR(15 DOWNTO 0);

   SIGNAL inst0_gfir0_byp, inst0_gfir1_byp : STD_LOGIC;
   SIGNAL inst0_gfir0_sleep, inst0_gfir1_sleep : STD_LOGIC;
   SIGNAL inst0_gfir0_odd, inst0_gfir1_odd : STD_LOGIC;

   SIGNAL inst0_adpd_config0, inst0_adpd_config1, inst0_adpd_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL inst0_hb0_delay, inst0_hb1_delay : STD_LOGIC;

   -- CFR
   SIGNAL inst1_sdout, inst1_xen : STD_LOGIC;
   SIGNAL inst1_yi, inst1_yq : STD_LOGIC_VECTOR(15 DOWNTO 0);

   SIGNAL inst2_sdout, inst2_xen : STD_LOGIC;
   SIGNAL inst2_yi, inst2_yq : STD_LOGIC_VECTOR(15 DOWNTO 0);

   -- CFR Gain 
   SIGNAL inst3_ypi_o, inst3_ypq_o : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL inst4_ypi_o, inst4_ypq_o : STD_LOGIC_VECTOR(15 DOWNTO 0);

   -- FIR
   SIGNAL inst5_yi, inst5_yq : STD_LOGIC_VECTOR(24 DOWNTO 0);
   SIGNAL inst5_sdout, inst5_xen : STD_LOGIC;

   SIGNAL inst6_yi, inst6_yq : STD_LOGIC_VECTOR(24 DOWNTO 0);
   SIGNAL inst6_sdout, inst6_xen : STD_LOGIC;

   --HB1
   SIGNAL inst7_yi1, inst7_yq1 : STD_LOGIC_VECTOR(17 DOWNTO 0);
   SIGNAL inst7_xen, inst7_data_valid : STD_LOGIC;
   SIGNAL inst8_yi1, inst8_yq1 : STD_LOGIC_VECTOR(17 DOWNTO 0);
   SIGNAL inst8_xen : STD_LOGIC;

   --DPD
   SIGNAL inst9_ypi, inst9_ypq : STD_LOGIC_VECTOR(17 DOWNTO 0);
   SIGNAL inst10_ypi, inst10_ypq : STD_LOGIC_VECTOR(17 DOWNTO 0);
   SIGNAL inst9_data_valid : STD_LOGIC;

   SIGNAL inst0_cfr0_order, inst0_cfr1_order : STD_LOGIC_VECTOR(7 DOWNTO 0);
   SIGNAL inst0_half0_order, inst0_half1_order : STD_LOGIC_VECTOR(7 DOWNTO 0);

   SIGNAL n_a, n_b : STD_LOGIC_VECTOR(7 DOWNTO 0);
   SIGNAL ai1, aq1, bi1, bq1 : STD_LOGIC_VECTOR(17 DOWNTO 0);
   SIGNAL ai2, aq2, bi2, bq2 : STD_LOGIC_VECTOR(17 DOWNTO 0);
   SIGNAL ai3, aq3, bi3, bq3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL xena, xenb, xena_hb1, xenb_hb1 : STD_LOGIC;
   SIGNAL bypass_int_a, bypass_int_b, n_bypass_int_a, n_bypass_int_b: STD_LOGIC;

   SIGNAL l : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL reset_n_soft, reset_n1 : STD_LOGIC;
   signal sig_temp1, sig_temp2, sig_temp3, sig_temp4, sig_temp5, 
   sig_temp6, sig_temp7, sig_temp8, sig_temp9, sig_temp10: std_logic;
   
   signal dpd_cfr_en: std_logic;

BEGIN

   sdout <= inst0_sdout OR inst1_sdout OR inst2_sdout OR inst5_sdout OR inst6_sdout;
   reset_n_software <= reset_n_soft;
   
   inst0_adpdcfg : adpdcfg
   PORT MAP(
      maddress => std_logic_vector(to_unsigned(ADPDCFG_START_ADDR/32,10)), --"0000000010",
      mimo_en => '1',
      sdin => sdin,
      sclk => sclk,
      sen => sen,
      sdout => inst0_sdout,
      lreset => mem_reset_n,
      mreset => mem_reset_n,
      oen => OPEN,
      stateo => OPEN,
      ADPD_BUFF_SIZE => cap_size,
      ADPD_CONT_CAP_EN => cap_cont_en,
      ADPD_CAP_EN => cap_en,
      ADPD_CAP_RESETN => cap_resetn,
      PAEN0 => PAEN0,
      PAEN1 => PAEN1,
      DCEN0 => DCEN0,
      DCEN1 => DCEN1,
      reset_n_soft => reset_n_soft,
      adpd_config0 => inst0_adpd_config0,
      adpd_config1 => inst0_adpd_config1,
      adpd_data => inst0_adpd_data,
      cfr0_bypass => inst0_cfr0_bypass,
      cfr1_bypass => inst0_cfr1_bypass,
      cfr0_sleep => inst0_cfr0_sleep,
      cfr1_sleep => inst0_cfr1_sleep,
      cfr0_odd => inst0_cfr0_odd,
      cfr1_odd => inst0_cfr1_odd,
      cfr0_threshold => inst0_cfr0_threshold,
      cfr1_threshold => inst0_cfr1_threshold,
      cfr0_interpolation => cfr0_interpolation,
      cfr1_interpolation => cfr1_interpolation,
      cfr0_order => inst0_cfr0_order,
      cfr1_order => inst0_cfr1_order,
      gain_cfr0 => inst0_gain_cfr0,
      gain_cfr1 => inst0_gain_cfr1,
      gain_cfr0_bypass => inst0_gain_cfr0_bypass,
      gain_cfr1_bypass => inst0_gain_cfr1_bypass,
      hb0_delay => inst0_hb0_delay, -- default 1
      hb1_delay => inst0_hb1_delay, -- default 1
      gfir0_byp => inst0_gfir0_byp,
      gfir1_byp => inst0_gfir1_byp,
      gfir0_sleep => inst0_gfir0_sleep,
      gfir1_sleep => inst0_gfir1_sleep,
      gfir0_odd => inst0_gfir0_odd,
      gfir1_odd => inst0_gfir1_odd,
      rf_sw => rf_sw,
      tx_en => tx_en,
      capture_en =>capture_en,
      lms3_monitoring => lms3_monitoring,
      fix_mimo => fix_mimo,
      dpdtop_en => dpdtop_en
   );

   reset_n1 <= reset_n AND reset_n_soft;
   reset_n2 <= reset_n1;

   xen <= xena;
   l <= "111";
   lab0 : PROCESS (clk_X2, reset_n1) IS
   BEGIN
      IF reset_n1 = '0' THEN
         inst9_data_valid <= '0';
      ELSIF (clk_X2'event AND clk_X2 = '1') THEN
         IF (inst9_data_valid = '1') THEN
            inst9_data_valid <= '0';
         ELSE
            inst9_data_valid <= '1';
         END IF;
      END IF;
   END PROCESS;
   ---------------------------------------------------------
   ---------------------------------------------------------

   n_a <= x"03" WHEN cfr0_interpolation = "00" ELSE
      x"01";
   bypass_int_a <= '1' WHEN cfr0_interpolation = "00" ELSE
      '0';
   n_bypass_int_a <= NOT bypass_int_a;

   xena <= inst1_xen WHEN cfr0_interpolation = "00" ELSE
      xena_hb1;

   pr : PROCESS (clk_X2, reset_n) IS
   BEGIN
      IF reset_n = '0' THEN
         ai1 <= (OTHERS => '0');
         aq1 <= (OTHERS => '0');
      ELSIF clk_X2'event AND clk_X2 = '1' THEN
         IF (xena = '1') THEN
            ai1 <= ai_in & "00";
            aq1 <= aq_in & "00";
         END IF;
      END IF;
   END PROCESS pr;
   
   sig_temp1 <= bypass_int_a or sleep;

   HB_1 : hb1
   PORT MAP(
      xi1 => ai1, -- 30.72 MSPS
      xq1 => aq1,
      n => x"01",
      sleep => sig_temp1,
      bypass => bypass_int_a,
      clk => clk_X2,
      reset => reset_n,
      xen => xena_hb1,
      yi1 => ai2,
      yq1 => aq2,
      delay => inst0_hb0_delay); -- 61.44 MSPS

   ai3 <= ai2 (17 DOWNTO 2);
   aq3 <= aq2 (17 DOWNTO 2);

   ------------------------------------------------------------------------------
   -- CH A CFR
   ------------------------------------------------------------------------------
   -- sleep_a <= inst0_cfr0_sleep OR inst0_gfir0_sleep;
   
   sig_temp2 <= inst0_cfr0_sleep or sleep;
   sig_temp3 <= sen OR (NOT from_memcfg.mac(0));
   
   
   
   inst1_cfir_bj : cfir_bj
   GENERIC MAP(nd => 20)
   PORT MAP(
      -- Clock related inputs
      sleep =>  sig_temp2,
      clk => clk_X2,
      reset => reset_n1,
      reset_mem_n => mem_reset_n,
      bypass => inst0_cfr0_bypass,
      odd => inst0_cfr0_odd,
      xi => ai3,
      xq => aq3,
      threshold => inst0_cfr0_threshold,
      n => n_a,
      l => l,
      maddressf0 => std_logic_vector(to_unsigned(CFR0CFG_START_ADDR/64,9)), -- "000000111",  7*64
      maddressf1 => std_logic_vector(to_unsigned(CFR1CFG_START_ADDR/64,9)), -- "000001000",
      mimo_en => '1',
      sdin => sdin,
      sclk => sclk,
      sen => sig_temp3,
      sdout => inst1_sdout, -- Data out
      oen => OPEN,
      yi => inst1_yi, -- 16 bits
      yq => inst1_yq, -- 16 bits
      xen => inst1_xen
   );
   -- ----------------------------------------------------------------------------
   -- CH A Gain 
   -- ----------------------------------------------------------------------------   
   inst3_iqim_gain_corr : iqim_gain_corr
   PORT MAP(
      clk => clk_X2,
      reset_n => reset_n,
      en => inst1_xen,
      bypass => inst0_gain_cfr0_bypass,
      ypi => inst1_yi,
      ypq => inst1_yq,
      gain_ch => inst0_gain_cfr0,
      ypi_o => inst3_ypi_o, -- 16 bits
      ypq_o => inst3_ypq_o -- 16 bits
   );

   -- ----------------------------------------------------------------------------
   -- CH A FIR filter SR: 
   -- ----------------------------------------------------------------------------   
   sig_temp4 <= inst0_gfir0_sleep or sleep;


   inst5_gfirhf16mod_bj : gfirhf16mod_bj
   PORT MAP(
      sleep => sig_temp4,
      clk => clk_X2, -- 122.88 MHz
      reset => reset_n1,
      reset_mem_n => mem_reset_n,
      bypass => inst0_gfir0_byp,
      odd => inst0_gfir0_odd,
      half => '0',
      xi => inst3_ypi_o,
      xq => inst3_ypq_o,
      n => n_a,
      l => l,
      maddressf0 => std_logic_vector(to_unsigned(FIR0CFG_START_ADDR/64,9)), --"000001001", -- 9*64=576
      maddressf1 => std_logic_vector(to_unsigned(FIR1CFG_START_ADDR/64,9)), --"000001010", -- 10*64=640
      mimo_en => '1',
      sdin => sdin,
      sclk => sclk,
      sen => sig_temp3,
      sdout => inst5_sdout,
      oen => OPEN,
      yi => inst5_yi, -- 25 bits
      yq => inst5_yq, -- 25 bits
      xen => OPEN
   );
   -- ----------------------------------------------------------------------------
   -- CH A HB1   SR: from 30.72 MSps to 61.44 MSps
   -- ----------------------------------------------------------------------------  
   sig_temp5 <= n_bypass_int_a or sleep;
   inst7_hb1 : hb1
   PORT MAP(
      xi1 => inst5_yi(24 DOWNTO 7),
      xq1 => inst5_yq(24 DOWNTO 7),
      n => x"01",
      bypass => n_bypass_int_a,
      sleep => sig_temp5,
      clk => clk_X2, -- 122.88 MHz
      reset => reset_n,
      xen => OPEN,
      yi1 => inst7_yi1, -- 18 bits
      yq1 => inst7_yq1, -- 18 bits
      delay => inst0_hb0_delay
   );

 
   ------------------------------------------------------------------------------
   -- CH A QADPD  SR: 61.44 MSps
   ------------------------------------------------------------------------------
  en_A1: if DPD_enable=1 generate
   
   inst9_qadpd : QADPD
   GENERIC MAP(
      n => 4, -- memory depth
      m => 3, -- nonlinearity
      mul_n => 18) -- precision
   PORT MAP(
      clk => clk_X2, -- 122.88 MHz
      sclk => sclk,
      reset_n => reset_n,
      reset_mem_n => mem_reset_n,
      data_valid => inst9_data_valid and (not sleep),
      xpi => inst7_yi1(17 DOWNTO 4),
      xpq => inst7_yq1(17 DOWNTO 4),
      ypi => inst9_ypi, -- 18 bits
      ypq => inst9_ypq, -- 18 bits	
      spi_ctrl => inst0_adpd_config0,
      spi_data => inst0_adpd_data
   );
  end generate;
  
   en_A0: if DPD_enable=0 generate   
      inst9_ypi<=inst7_yi1;
      inst9_ypq<=inst7_yq1; 
   end generate;
   -------------------------------------------------------------------------
   -------------------------------------------------------------------------
   xenb <= inst2_xen WHEN cfr1_interpolation = "00" ELSE
      xenb_hb1;
   n_b <= x"03" WHEN cfr1_interpolation = "00" ELSE
      x"01";
   bypass_int_b <= '1' WHEN cfr1_interpolation = "00" ELSE
      '0';
   n_bypass_int_b <= NOT bypass_int_b;

   prb : PROCESS (clk_X2, reset_n) IS
   BEGIN
      IF reset_n = '0' THEN
         bi1 <= (OTHERS => '0');
         bq1 <= (OTHERS => '0');
      ELSIF clk_X2'event AND clk_X2 = '1' THEN
         IF (xenb = '1') THEN
            bi1 <= bi_in & "00";
            bq1 <= bq_in & "00";
         END IF;
      END IF;
   END PROCESS prb;

   sig_temp6 <= bypass_int_b or sleep;
   
   HB_1B : hb1
   PORT MAP(
      xi1 => bi1, -- 30.72 MSPS
      xq1 => bq1,
      n => x"01",
      sleep => sig_temp6,
      bypass => bypass_int_b,
      clk => clk_X2,
      reset => reset_n,
      xen => xenb_hb1,
      yi1 => bi2,
      yq1 => bq2,
      delay => inst0_hb1_delay); -- 61.44 MSPS

   bi3 <= bi2 (17 DOWNTO 2);
   bq3 <= bq2 (17 DOWNTO 2);
   -------------------------------------------------------------------------------
   -- CH B CFR
   -------------------------------------------------------------------------------
   -- sleep_b <= inst0_cfr1_sleep OR inst0_gfir1_sleep;

   sig_temp7 <= inst0_cfr1_sleep or sleep;
   sig_temp8 <= sen OR (NOT from_memcfg.mac(1));
   
   inst2_cfir_bj : cfir_bj
   GENERIC MAP(nd => 20)
   PORT MAP(
      sleep =>  sig_temp7,
      clk => clk_X2,
      reset => reset_n1,
      reset_mem_n => mem_reset_n,
      bypass => inst0_cfr1_bypass,
      odd => inst0_cfr1_odd,
      xi => bi3,
      xq => bq3,
      threshold => inst0_cfr1_threshold,
      n => n_b,
      l => l,
      maddressf0 => std_logic_vector(to_unsigned(CFR0CFG_START_ADDR/64,9)), --"000000111",
      maddressf1 => std_logic_vector(to_unsigned(CFR1CFG_START_ADDR/64,9)), --"000001000",
      mimo_en => '1',
      sdin => sdin, -- Data in
      sclk => sclk, -- Data clock
      sen => sig_temp8,
      sdout => inst2_sdout, -- Data out
      oen => OPEN,
      yi => inst2_yi, -- 16 bits
      yq => inst2_yq, -- 16 bits
      xen => inst2_xen
   );

   -- ----------------------------------------------------------------------------
   -- CH B Gain 
   -- ----------------------------------------------------------------------------   
   inst4_iqim_gain_corr : iqim_gain_corr
   PORT MAP(
      clk => clk_X2,
      reset_n => reset_n,
      en => inst2_xen,
      bypass => inst0_gain_cfr1_bypass,
      ypi => inst2_yi,
      ypq => inst2_yq,
      gain_ch => inst0_gain_cfr1,
      ypi_o => inst4_ypi_o, -- 16 bits
      ypq_o => inst4_ypq_o -- 16 bits
   );
   -- ----------------------------------------------------------------------------
   -- CH B FIR filter  SR: 30.72 MSps
   -- ----------------------------------------------------------------------------   
   sig_temp9 <= inst0_gfir1_sleep or sleep;
   
   inst6_gfirhf16mod_bj : gfirhf16mod_bj
   PORT MAP(
      sleep => sig_temp9,
      clk => clk_X2, -- 122.88 MHz
      reset => reset_n1,
      reset_mem_n => mem_reset_n,
      bypass => inst0_gfir1_byp,
      odd => inst0_gfir1_odd,
      half => '0',
      xi => inst4_ypi_o,
      xq => inst4_ypq_o,
      n => n_b,
      l => l,
      maddressf0 => std_logic_vector(to_unsigned(FIR0CFG_START_ADDR/64,9)), --"000001001",
      maddressf1 => std_logic_vector(to_unsigned(FIR1CFG_START_ADDR/64,9)), --"000001010", -- A
      mimo_en => '1',
      sdin => sdin,
      sclk => sclk,
      sen => sig_temp8,
      sdout => inst6_sdout,
      oen => OPEN,
      yi => inst6_yi, -- 25 bits
      yq => inst6_yq, -- 25 bits
      xen => OPEN --inst6_xen
   );

   -- ----------------------------------------------------------------------------
   -- CH B HB1 SR: from 30.72 MSps to 61.44 MSps
   -- ----------------------------------------------------------------------------  	
    sig_temp10 <= n_bypass_int_b or sleep;
     
   inst8_hb1 : hb1
   PORT MAP(
      xi1 => inst6_yi(24 DOWNTO 7),
      xq1 => inst6_yq(24 DOWNTO 7),
      n => x"01",
      bypass => n_bypass_int_b,
      sleep => sig_temp10,
      clk => clk_X2, -- 122.88 MHz
      reset => reset_n,
      xen => OPEN,
      yi1 => inst8_yi1, -- 18 bits
      yq1 => inst8_yq1, -- 18 bits
      delay => inst0_hb1_delay
   );
   ------------------------------------------------------------------------------
   -- CH B QADPD  SR: 61.44 MSps
   ------------------------------------------------------------------------------
   
  en_B1: if DPD_enable=1 generate
   
   inst10_qadpd : QADPD
   GENERIC MAP(
      n => 4,
      m => 3,
      mul_n => 18)
   PORT MAP(
      clk => clk_X2, -- 122.88 MHz
      sclk => sclk,
      reset_n => reset_n,
      reset_mem_n => mem_reset_n,
      data_valid => inst9_data_valid and (not sleep),
      xpi => inst8_yi1(17 DOWNTO 4),
      xpq => inst8_yq1(17 DOWNTO 4),
      ypi => inst10_ypi, -- 18 bits
      ypq => inst10_ypq, -- 18 bits	
      spi_ctrl => inst0_adpd_config1,
      spi_data => inst0_adpd_data
    );
    
  end generate;
  
   en_B0: if DPD_enable=0 generate   
      inst10_ypi<=inst8_yi1;
      inst10_ypq<=inst8_yq1; 
   end generate;

   xp_ai <= inst7_yi1(17 DOWNTO 2);
   xp_aq <= inst7_yq1(17 DOWNTO 2);
   xp_bi <= inst8_yi1(17 DOWNTO 2);
   xp_bq <= inst8_yq1(17 DOWNTO 2);

   yp_ai <= inst9_ypi(17 DOWNTO 2);
   yp_aq <= inst9_ypq(17 DOWNTO 2);
   yp_bi <= inst10_ypi(17 DOWNTO 2);
   yp_bq <= inst10_ypq(17 DOWNTO 2);

   --xen <= inst1_xen; -- 30.72 MSps
   yen <= inst9_data_valid; -- 61.44 MSps

END ARCHITECTURE struct;