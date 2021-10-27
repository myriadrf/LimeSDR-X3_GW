-- ----------------------------------------------------------------------------	
-- FILE: 	fifo_buff.vhd
-- DESCRIPTION:	describe
-- DATE:	Feb 13, 2014
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
ENTITY fifo_buff IS
   GENERIC (
      dev_family : STRING := "Cyclone IV E";
      wrwidth : INTEGER := 32;
      wrusedw_witdth : INTEGER := 15; --15=32768 words 
      rdwidth : INTEGER := 32;
      rdusedw_width : INTEGER := 15;
      show_ahead : STRING := "OFF"
   );

   PORT (
      --fifo 0 ports
      fifo_0_reset_n : IN STD_LOGIC;
      fifo_0_wrclk : IN STD_LOGIC;
      fifo_0_wrreq : IN STD_LOGIC;
      fifo_0_data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0);
      fifo_0_wrfull : OUT STD_LOGIC;
      fifo_0_wrempty : OUT STD_LOGIC;
      --fifo 1 ports
      fifo_1_reset_n : IN STD_LOGIC;
      fifo_1_wrclk : IN STD_LOGIC;
      fifo_1_wrreq : IN STD_LOGIC;
      fifo_1_data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0);
      fifo_1_wrfull : OUT STD_LOGIC;
      fifo_1_wrempty : OUT STD_LOGIC;
      --fifo 2 ports
      fifo_2_reset_n : IN STD_LOGIC;
      fifo_2_wrclk : IN STD_LOGIC;
      fifo_2_wrreq : IN STD_LOGIC;
      fifo_2_data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0);
      fifo_2_wrfull : OUT STD_LOGIC;
      fifo_2_wrempty : OUT STD_LOGIC;
      --fifo 3 ports
      fifo_3_reset_n : IN STD_LOGIC;
      fifo_3_wrclk : IN STD_LOGIC;
      fifo_3_wrreq : IN STD_LOGIC;
      fifo_3_data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0);
      fifo_3_wrfull : OUT STD_LOGIC;
      fifo_3_wrempty : OUT STD_LOGIC;
      --fifo 4 ports
      fifo_4_reset_n : IN STD_LOGIC;
      fifo_4_wrclk : IN STD_LOGIC;
      fifo_4_wrreq : IN STD_LOGIC;
      fifo_4_data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0);
      fifo_4_wrfull : OUT STD_LOGIC;
      fifo_4_wrempty : OUT STD_LOGIC;
      --fifo 5 ports
      fifo_5_reset_n : IN STD_LOGIC; 
      fifo_5_wrclk : IN STD_LOGIC; 
      fifo_5_wrreq : IN STD_LOGIC; 
      fifo_5_data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0); 
      fifo_5_wrfull : OUT STD_LOGIC; 
      fifo_5_wrempty : OUT STD_LOGIC; 	      
      --fifo 6 ports
      fifo_6_reset_n : IN STD_LOGIC; 
      fifo_6_wrclk : IN STD_LOGIC; 
      fifo_6_wrreq : IN STD_LOGIC; 
      fifo_6_data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0); 
      fifo_6_wrfull : OUT STD_LOGIC; 
      fifo_6_wrempty : OUT STD_LOGIC;    
      --fifo 7 ports
      fifo_7_reset_n : IN STD_LOGIC; 
      fifo_7_wrclk : IN STD_LOGIC; 
      fifo_7_wrreq : IN STD_LOGIC; 
      fifo_7_data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0); 
      fifo_7_wrfull : OUT STD_LOGIC; 
      fifo_7_wrempty : OUT STD_LOGIC; 	

      --rd port for all fifo
      fifo_rdclk : IN STD_LOGIC;
      fifo_rdclk_reset_n : IN STD_LOGIC;
      fifo_cap_size : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fifo_rdreq : IN STD_LOGIC;
      fifo_q : OUT STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0);
      fifo_rdempty : OUT STD_LOGIC;
      --fifo_rdlast: out std_logic

      lms3_monitoring : IN STD_LOGIC

   );
END fifo_buff;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
ARCHITECTURE arch OF fifo_buff IS
   --declare signals,  components here

   -- inst0 signals
   SIGNAL inst0_rdreq : STD_LOGIC;
   SIGNAL inst0_q : STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0);
   SIGNAL inst0_rdempty : STD_LOGIC;

   -- inst1 signals
   SIGNAL inst1_rdreq : STD_LOGIC;
   SIGNAL inst1_q : STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0);
   SIGNAL inst1_rdempty : STD_LOGIC;

   -- inst2 signals
   SIGNAL inst2_rdreq : STD_LOGIC;
   SIGNAL inst2_q : STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0);
   SIGNAL inst2_rdempty : STD_LOGIC;

   -- inst3 signals
   SIGNAL inst3_rdreq : STD_LOGIC;
   SIGNAL inst3_q : STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0);
   SIGNAL inst3_rdempty : STD_LOGIC;

   -- inst4 signals
   SIGNAL inst4_rdreq : STD_LOGIC;
   SIGNAL inst4_q : STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0);
   SIGNAL inst4_rdempty : STD_LOGIC;

   -- inst5 signals 
   SIGNAL inst5_rdreq : STD_LOGIC; 
   SIGNAL inst5_q : STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0); 
   SIGNAL inst5_rdempty : STD_LOGIC; 

   -- inst6 signals  
   SIGNAL inst6_rdreq : STD_LOGIC; 
   SIGNAL inst6_q : STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0); 
   SIGNAL inst6_rdempty : STD_LOGIC; 

   -- inst7 signals  
   SIGNAL inst7_rdreq : STD_LOGIC; 
   SIGNAL inst7_q : STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0); 
   SIGNAL inst7_rdempty : STD_LOGIC; 

   --general signals
   SIGNAL rdempty_all_fifo : STD_LOGIC;
   TYPE state_type IS (idle, rd_fifo1, rd_fifo2, rd_fifo3, rd_fifo4, rd_fifo5, rd_fifo6, rd_fifo7);
   SIGNAL current_state, next_state : state_type;
   SIGNAL rd_cnt : unsigned(15 DOWNTO 0);
   SIGNAL fifo_q_mux_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
   
   COMPONENT fifo_inst IS
      GENERIC (
         dev_family : STRING := "Cyclone IV E";
         wrwidth : INTEGER := 24;
         wrusedw_witdth : INTEGER := 12; --12=2048 words 
         rdwidth : INTEGER := 48;
         rdusedw_width : INTEGER := 11;
         show_ahead : STRING := "ON"
      );

      PORT (
         --input ports 
         reset_n : IN STD_LOGIC;
         wrclk : IN STD_LOGIC;
         wrreq : IN STD_LOGIC;
         data : IN STD_LOGIC_VECTOR(wrwidth - 1 DOWNTO 0);
         wrfull : OUT STD_LOGIC;
         wrempty : OUT STD_LOGIC;
         wrusedw : OUT STD_LOGIC_VECTOR(wrusedw_witdth - 1 DOWNTO 0);
         rdclk : IN STD_LOGIC;
         rdreq : IN STD_LOGIC;
         q : OUT STD_LOGIC_VECTOR(rdwidth - 1 DOWNTO 0);
         rdempty : OUT STD_LOGIC;
         rdusedw : OUT STD_LOGIC_VECTOR(rdusedw_width - 1 DOWNTO 0)

      );
   END COMPONENT;
   SIGNAL sig_idle : STD_LOGIC;

BEGIN

   PROCESS (fifo_rdclk, fifo_rdclk_reset_n)BEGIN
      IF (fifo_rdclk_reset_n = '0') THEN
         rd_cnt <= (OTHERS => '0');
      ELSIF (fifo_rdclk'event AND fifo_rdclk = '1') THEN
         IF fifo_rdreq = '1' THEN
            IF rd_cnt < unsigned(fifo_cap_size) - 1 THEN
               rd_cnt <= rd_cnt + 1;
            ELSE
               rd_cnt <= (OTHERS => '0');
            END IF;
         ELSE
            rd_cnt <= rd_cnt;
         END IF;
      END IF;
   END PROCESS;

   -- ----------------------------------------------------------------------------
   --state machine for controlling capture signal
   -- ----------------------------------------------------------------------------
   fsm_f : PROCESS (fifo_rdclk, fifo_rdclk_reset_n)BEGIN
      IF (fifo_rdclk_reset_n = '0') THEN
         current_state <= idle;
      ELSIF (fifo_rdclk'event AND fifo_rdclk = '1') THEN
         current_state <= next_state;
      END IF;
   END PROCESS;

   -- ----------------------------------------------------------------------------
   --state machine combo
   -- ----------------------------------------------------------------------------
   fsm : PROCESS (current_state, fifo_rdreq, rd_cnt, fifo_cap_size) BEGIN
      next_state <= current_state;
      fifo_q_mux_sel <= "000";

      CASE current_state IS

         WHEN idle =>   -- xp
            IF rd_cnt = unsigned(fifo_cap_size) - 1 AND fifo_rdreq = '1' THEN
               next_state <= rd_fifo1;
            ELSE
               next_state <= idle;
            END IF;
            fifo_q_mux_sel <= "000";

         WHEN rd_fifo1 =>  -- yp
            IF rd_cnt = unsigned(fifo_cap_size) - 1 AND fifo_rdreq = '1' THEN
               IF lms3_monitoring = '1' THEN
                  next_state <= rd_fifo2;
               ELSE
                  next_state <= rd_fifo6;
               END IF;
            ELSE
               next_state <= rd_fifo1;
            END IF;
            fifo_q_mux_sel <= "001";

         WHEN rd_fifo2 => -- x from LMS#3
            IF rd_cnt = unsigned(fifo_cap_size) - 1 AND fifo_rdreq = '1' THEN
               next_state <= rd_fifo3;
            ELSE
               next_state <= rd_fifo2;
            END IF;
            fifo_q_mux_sel <= "010";

         WHEN rd_fifo6 => -- x from LMS#1
            IF rd_cnt = unsigned(fifo_cap_size) - 1 AND fifo_rdreq = '1' THEN
               next_state <= rd_fifo3;
            ELSE
               next_state <= rd_fifo6;
            END IF;
            fifo_q_mux_sel <= "110";

         WHEN rd_fifo3 =>  -- xp  ch. B
            IF rd_cnt = unsigned(fifo_cap_size) - 1 AND fifo_rdreq = '1' THEN
               next_state <= rd_fifo4;
            ELSE
               next_state <= rd_fifo3;
            END IF;
            fifo_q_mux_sel <= "011";

         WHEN rd_fifo4 => -- yp ch. B
            IF rd_cnt = unsigned(fifo_cap_size) - 1 AND fifo_rdreq = '1' THEN  
               IF lms3_monitoring = '1' THEN
                  next_state <= rd_fifo5;                
               ELSE
                  next_state <= rd_fifo7; 
               END IF;
            ELSE
               next_state <= rd_fifo4; 
            END IF;
            fifo_q_mux_sel <= "100";

         WHEN rd_fifo5 => -- x from LMS#3 ch. B
            IF rd_cnt = unsigned(fifo_cap_size) - 1 AND fifo_rdreq = '1' THEN
               next_state <= idle; --wait_rdreq_low;				
            ELSE
               next_state <= rd_fifo5; 
            END IF;
            fifo_q_mux_sel <= "101";

         WHEN rd_fifo7 => -- x from LMS#1 ch. B 
            IF rd_cnt = unsigned(fifo_cap_size) - 1 AND fifo_rdreq = '1' THEN
               next_state <= idle; --wait_rdreq_low;				
            ELSE
               next_state <= rd_fifo7; 
            END IF;
            fifo_q_mux_sel <= "111";

         WHEN OTHERS =>
            next_state <= idle;
      END CASE;
   END PROCESS;

   PROCESS (current_state, fifo_rdreq)BEGIN
      IF (current_state = idle) THEN 
         inst0_rdreq <= fifo_rdreq;
      ELSE
         inst0_rdreq <= '0';
      END IF;
   END PROCESS;

   fifo_inst_inst0 : fifo_inst
   GENERIC MAP
   (
      dev_family => dev_family,
      wrwidth => wrwidth,
      wrusedw_witdth => wrusedw_witdth,
      rdwidth => rdwidth,
      rdusedw_width => rdusedw_width,
      show_ahead => show_ahead
   )
   PORT MAP(
      reset_n => fifo_0_reset_n,
      wrclk => fifo_0_wrclk,
      wrreq => fifo_0_wrreq,
      data => fifo_0_data,
      wrfull => fifo_0_wrfull,
      wrempty => fifo_0_wrempty,
      wrusedw => OPEN,
      rdclk => fifo_rdclk,
      rdreq => inst0_rdreq,
      q => inst0_q,
      rdempty => inst0_rdempty,
      rdusedw => OPEN
   );
   PROCESS (current_state, fifo_rdreq)BEGIN
      IF (current_state = rd_fifo1) THEN
         inst1_rdreq <= fifo_rdreq;
      ELSE
         inst1_rdreq <= '0';
      END IF;
   END PROCESS;
   fifo_inst_inst1 : fifo_inst
   GENERIC MAP
   (
      dev_family => dev_family,
      wrwidth => wrwidth,
      wrusedw_witdth => wrusedw_witdth,
      rdwidth => rdwidth,
      rdusedw_width => rdusedw_width,
      show_ahead => show_ahead
   )
   PORT MAP(
      reset_n => fifo_1_reset_n,
      wrclk => fifo_1_wrclk,
      wrreq => fifo_1_wrreq,
      data => fifo_1_data,
      wrfull => fifo_1_wrfull,
      wrempty => fifo_1_wrempty,
      wrusedw => OPEN,
      rdclk => fifo_rdclk,
      rdreq => inst1_rdreq,
      q => inst1_q,
      rdempty => inst1_rdempty,
      rdusedw => OPEN
   );
   PROCESS (current_state, fifo_rdreq)BEGIN
      IF (current_state = rd_fifo2) THEN
         inst2_rdreq <= fifo_rdreq;
      ELSE
         inst2_rdreq <= '0';
      END IF;
   END PROCESS;
   fifo_inst_inst2 : fifo_inst
   GENERIC MAP
   (
      dev_family => dev_family,
      wrwidth => wrwidth,
      wrusedw_witdth => wrusedw_witdth,
      rdwidth => rdwidth,
      rdusedw_width => rdusedw_width,
      show_ahead => show_ahead
   )
   PORT MAP(
      reset_n => fifo_2_reset_n,
      wrclk => fifo_2_wrclk,
      wrreq => fifo_2_wrreq,
      data => fifo_2_data,
      wrfull => fifo_2_wrfull,
      wrempty => fifo_2_wrempty,
      wrusedw => OPEN,
      rdclk => fifo_rdclk,
      rdreq => inst2_rdreq,
      q => inst2_q,
      rdempty => inst2_rdempty,
      rdusedw => OPEN
   );

   PROCESS (current_state, fifo_rdreq)BEGIN
      IF (current_state = rd_fifo3) THEN
         inst3_rdreq <= fifo_rdreq;
      ELSE
         inst3_rdreq <= '0';
      END IF;
   END PROCESS;
   fifo_inst_inst3 : fifo_inst
   GENERIC MAP
   (
      dev_family => dev_family,
      wrwidth => wrwidth,
      wrusedw_witdth => wrusedw_witdth,
      rdwidth => rdwidth,
      rdusedw_width => rdusedw_width,
      show_ahead => show_ahead
   )
   PORT MAP(
      reset_n => fifo_3_reset_n,
      wrclk => fifo_3_wrclk,
      wrreq => fifo_3_wrreq,
      data => fifo_3_data,
      wrfull => fifo_3_wrfull,
      wrempty => fifo_3_wrempty,
      wrusedw => OPEN,
      rdclk => fifo_rdclk,
      rdreq => inst3_rdreq,
      q => inst3_q,
      rdempty => inst3_rdempty,
      rdusedw => OPEN
   );
   PROCESS (current_state, fifo_rdreq)BEGIN
      IF (current_state = rd_fifo4) THEN
         inst4_rdreq <= fifo_rdreq;
      ELSE
         inst4_rdreq <= '0';
      END IF;
   END PROCESS;
   fifo_inst_inst4 : fifo_inst
   GENERIC MAP
   (
      dev_family => dev_family,
      wrwidth => wrwidth,
      wrusedw_witdth => wrusedw_witdth,
      rdwidth => rdwidth,
      rdusedw_width => rdusedw_width,
      show_ahead => show_ahead
   )
   PORT MAP(
      reset_n => fifo_4_reset_n,
      wrclk => fifo_4_wrclk,
      wrreq => fifo_4_wrreq,
      data => fifo_4_data,
      wrfull => fifo_4_wrfull,
      wrempty => fifo_4_wrempty,
      wrusedw => OPEN,
      rdclk => fifo_rdclk,
      rdreq => inst4_rdreq,
      q => inst4_q,
      rdempty => inst4_rdempty,
      rdusedw => OPEN
   );

   
   PROCESS (current_state, fifo_rdreq)BEGIN
      IF (current_state = rd_fifo5) THEN
         inst5_rdreq <= fifo_rdreq;
      ELSE
         inst5_rdreq <= '0';
      END IF;
   END PROCESS;
   fifo_inst_inst5 : fifo_inst
   GENERIC MAP
   (
      dev_family => dev_family,
      wrwidth => wrwidth,
      wrusedw_witdth => wrusedw_witdth,
      rdwidth => rdwidth,
      rdusedw_width => rdusedw_width,
      show_ahead => show_ahead
   )
   PORT MAP(
      reset_n => fifo_5_reset_n,
      wrclk => fifo_5_wrclk,
      wrreq => fifo_5_wrreq,
      data => fifo_5_data,
      wrfull => fifo_5_wrfull,
      wrempty => fifo_5_wrempty,
      wrusedw => OPEN,
      rdclk => fifo_rdclk,
      rdreq => inst5_rdreq,
      q => inst5_q,
      rdempty => inst5_rdempty,
      rdusedw => OPEN
   );
   --  end B.J.
   
   PROCESS (current_state, fifo_rdreq)BEGIN
      IF (current_state = rd_fifo6) THEN
         inst6_rdreq <= fifo_rdreq;
      ELSE
         inst6_rdreq <= '0';
      END IF;
   END PROCESS;
   fifo_inst_inst6 : fifo_inst
   GENERIC MAP
   (
      dev_family => dev_family,
      wrwidth => wrwidth,
      wrusedw_witdth => wrusedw_witdth,
      rdwidth => rdwidth,
      rdusedw_width => rdusedw_width,
      show_ahead => show_ahead
   )
   PORT MAP(
      reset_n => fifo_6_reset_n,
      wrclk => fifo_6_wrclk,
      wrreq => fifo_6_wrreq,
      data => fifo_6_data,
      wrfull => fifo_6_wrfull,
      wrempty => fifo_6_wrempty,
      wrusedw => OPEN,
      rdclk => fifo_rdclk,
      rdreq => inst6_rdreq,
      q => inst6_q,
      rdempty => inst6_rdempty,
      rdusedw => OPEN
   );
   --  end B.J.
   
   PROCESS (current_state, fifo_rdreq)BEGIN
      IF (current_state = rd_fifo7) THEN
         inst7_rdreq <= fifo_rdreq;
      ELSE
         inst7_rdreq <= '0';
      END IF;
   END PROCESS;
   fifo_inst_inst7 : fifo_inst
   GENERIC MAP
   (
      dev_family => dev_family,
      wrwidth => wrwidth,
      wrusedw_witdth => wrusedw_witdth,
      rdwidth => rdwidth,
      rdusedw_width => rdusedw_width,
      show_ahead => show_ahead
   )
   PORT MAP(
      reset_n => fifo_7_reset_n,
      wrclk => fifo_7_wrclk,
      wrreq => fifo_7_wrreq,
      data => fifo_7_data,
      wrfull => fifo_7_wrfull,
      wrempty => fifo_7_wrempty,
      wrusedw => OPEN,
      rdclk => fifo_rdclk,
      rdreq => inst7_rdreq,
      q => inst7_q,
      rdempty => inst7_rdempty,
      rdusedw => OPEN
   );
   --  end B.J.

   fifo_q <= inst0_q WHEN fifo_q_mux_sel = "000" ELSE
      inst1_q WHEN fifo_q_mux_sel = "001" ELSE
      inst2_q WHEN fifo_q_mux_sel = "010" ELSE
      inst3_q WHEN fifo_q_mux_sel = "011" ELSE
      inst4_q WHEN fifo_q_mux_sel = "100" ELSE
      inst5_q WHEN fifo_q_mux_sel = "101" ELSE
      inst6_q WHEN fifo_q_mux_sel = "110" ELSE
      inst7_q;   

   sig_idle <= '1' WHEN current_state = idle ELSE
      '0';
   rdempty_all_fifo <= (inst0_rdempty AND inst1_rdempty AND inst2_rdempty AND inst3_rdempty AND inst4_rdempty AND inst5_rdempty) when lms3_monitoring = '1' else
   (inst0_rdempty AND inst1_rdempty AND inst6_rdempty AND inst3_rdempty AND inst4_rdempty AND inst7_rdempty);


   fifo_rdempty <= rdempty_all_fifo;

END arch;