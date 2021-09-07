-- ----------------------------------------------------------------------------
-- FILE:          DPDTopWrapper.vhd
-- DESCRIPTION:   Top file for DPD CFR and FIR modules
-- DATE:          10:55 AM Friday, December 19, 2018
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.memcfg_pkg.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity DPDTopWrapper_dummy is
   port (
      clk               : in std_logic;
      reset_n           : in std_logic;
      mem_reset_n       : in std_logic;
      from_memcfg : in t_FROM_MEMCFG;
      
      ch_en             : in std_logic_vector(1 downto 0);      
      sdin              : in std_logic;
      sclk              : in std_logic;
      sen               : in std_logic;
      sdout             : out std_logic;
	  
      data_req_empty    : in std_logic;
      data_req          : out std_logic;
      data_valid        : out std_logic;
		
      diq_in            : in std_logic_vector(63 downto 0);
      diq_out           : out std_logic_vector(63 downto 0);
		
		xp_ai, xp_aq, xp_bi, xp_bq    : out std_logic_vector(15 downto 0);
	   yp_ai, yp_aq, yp_bi, yp_bq    : out std_logic_vector(15 downto 0);
      xp_valid                      : out std_logic;
		
		cap_en, cap_cont_en           : out std_logic; 
      cap_size                      : out std_logic_vector(15 downto 0);
		PAEN0, PAEN1, DCEN0, DCEN1    : out std_logic;
		rf_sw                         : out std_logic_vector(2 downto 0)
   );
end DPDTopWrapper_dummy;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of DPDTopWrapper_dummy is

signal ai_in                  : std_logic_vector(15 downto 0);
signal aq_in                  : std_logic_vector(15 downto 0);
signal bi_in                  : std_logic_vector(15 downto 0);
signal bq_in                  : std_logic_vector(15 downto 0);
signal aiq_in_sel             : std_logic;

signal data_req_dis, data_req_dis_o  : std_logic;

signal data_req_reg           : std_logic;
signal data_req_int           : std_logic;
signal data_valid_reg         : std_logic;
--signal data_req_mimo          : std_logic;
--signal data_req_siso          : std_logic;

signal xp_valid_reg           : std_logic_vector(1 downto 0);
signal mimo_en                : std_logic;

signal diq_out_mimo           : std_logic_vector(63 downto 0);
signal diq_out_siso           : std_logic_vector(63 downto 0);

signal xen_mimo               : std_logic;
signal xen_siso               : std_logic;
signal xen                    : std_logic;
signal xen_reg0               : std_logic;
signal xen_reg1               : std_logic;


signal inst1_xen, inst9_data_valid, inst1_xen_reg0, inst1_xen_reg1 : std_logic;
signal yp_ai_reg, yp_aq_reg, yp_ai_prim, yp_aq_prim, yp_bi_prim, yp_bq_prim:  std_logic_vector(15 downto 0);

begin
   
-- ----------------------------------------------------------------------------
-- Internal logic 
-- ----------------------------------------------------------------------------   
   -- Configuration registers
   inst0_adpdcfg : entity work.adpdcfg
   port map(
      maddress          => "0000000010",
      mimo_en           => '1',
      sdin              => sdin,
      sclk              => sclk,
      sen               => sen,
      sdout             => sdout, 
      lreset            => mem_reset_n, 
      mreset            => mem_reset_n,
      oen               => open,
      stateo            => open, 
      
      ADPD_BUFF_SIZE    => cap_size, 
      ADPD_CONT_CAP_EN  => cap_cont_en, 
      ADPD_CAP_EN       => cap_en,
   
      PAEN0             => open,
      PAEN1             => open,
      DCEN0             => open,
      DCEN1             => open,
   
      adpd_config0      => open, 
      adpd_config1      => open, 
      adpd_data         => open,    
     
      cfr0_bypass       => open, 
      cfr1_bypass       => open, 
      cfr0_sleep        => open, 
      cfr1_sleep        => open, 
      cfr0_odd          => open, 
      cfr1_odd          => open, 
      
      cfr0_threshold    => open,
      cfr1_threshold    => open,
      
      gain_cfr0         => open,
      gain_cfr1         => open,
      gain_cfr0_bypass  => open,
      gain_cfr1_bypass  => open,  
   
      hb0_delay         => open, 
      hb1_delay         => open, 
     
      gfir0_byp         => open,
      gfir1_byp         => open,
      gfir0_sleep       => open,
      gfir1_sleep       => open,
      gfir0_odd         => open,
      gfir1_odd         => open,
      
      rf_sw             => open  
   );


-- ----------------------------------------------------------------------------
-- Internal logic 
-- ----------------------------------------------------------------------------
-- Data required internal signal

   data_req_proc : process(clk, reset_n)
   begin
      if reset_n = '0' then 
         data_req_reg <= '0';
      elsif (clk'event AND clk='1') then
         if ch_en = "11" then 
            data_req_reg <= '1';
         else 
            data_req_reg <= NOT data_req_reg;
         end if;
      end if;
   end process;
   
   data_req_int <= data_req_reg AND NOT data_req_empty;
   
   
   data_valid_proc : process(clk, reset_n)
   begin
      if reset_n = '0' then 
         data_valid_reg <= '0';
      elsif (clk'event AND clk='1') then
         data_valid_reg <= data_req_int;
      end if;
   end process;
   
   xp_valid_proc : process(clk, reset_n)
   begin
      if reset_n = '0' then 
         xp_valid_reg <= (others=>'0');
      elsif (clk'event AND clk='1') then
         if data_req_int = '1' then 
            xp_valid_reg <=(others=>'1');
         else 
            xp_valid_reg <= xp_valid_reg(0) & '0';
         end if;
      end if;
   end process;
   
   -- To know SISO or MIMO mode
   mimo_en <= ch_en(1) AND ch_en(1);
   
   -- Select signal for A channels sample MUX
   aiq_in_sel <= '0' when mimo_en = '1' else data_req_reg;
 
   -- diq_in bus contains samples in following order: 
   --    MIMO mode:           SISO mode:
   --    AI=diq_in[15:0]      AI(0)=diq_in[15:0]
   --    AQ=diq_in[31:16]     AQ(0)=diq_in[31:16]
   --    BI=diq_in[47:32]     AI(1)=diq_in[47:32]
   --    BQ=diq_in[64:48]     AQ(1)=diq_in[64:48]
   
   -- In SISO mode A channel samples are muxed from diq_in bus
   ai_in <= diq_in(16*1-1 downto 16*0) when aiq_in_sel = '0' else diq_in(16*3-1 downto 16*2);
   aq_in <= diq_in(16*2-1 downto 16*1) when aiq_in_sel = '0' else diq_in(16*4-1 downto 16*3);   
   bi_in <= diq_in(16*3-1 downto 16*2);
   bq_in <= diq_in(16*4-1 downto 16*3);

-- ----------------------------------------------------------------------------
-- Output ports
-- ----------------------------------------------------------------------------
-- for input
   data_req    <= data_req_int;
   
   -- for output
   data_valid  <= data_valid_reg;
   
      --    diq_out bus contains samples in following order: 
      --    MIMO mode:           SISO mode:
      --    AI=diq_out[15:0]      AI(0)=diq_out[15:0]
      --    AQ=diq_out[31:16]     AQ(0)=diq_out[31:16]
      --    BI=diq_out[47:32]     AI(1)=diq_out[47:32]
      --    BQ=diq_out[64:48]     AQ(1)=diq_out[64:48]
   diq_out     <= diq_in;
   
   xp_valid <= xp_valid_reg(1);
   
   PAEN0 <= '0';
   PAEN1 <= '0';
   DCEN0 <= '0';
   DCEN1 <= '0';   
   rf_sw <= (others=>'0');
   
   
   xp_ai <= ai_in;
   xp_aq <= aq_in;
   xp_bi <= bi_in;
   xp_bq <= bq_in;
   yp_ai <= ai_in;
   yp_aq <= aq_in;
   yp_bi <= bi_in;
   yp_bq <= bq_in;




  
end arch;   


