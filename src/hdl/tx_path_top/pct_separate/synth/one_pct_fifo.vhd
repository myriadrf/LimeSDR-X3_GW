-- ----------------------------------------------------------------------------
-- FILE:          one_pct_fifo.vhd
-- DESCRIPTION:   Reads from FIFO data and stores to other FIFO only one packet 
-- DATE:          10:51 AM Wednesday, January 16, 2019
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
use work.FIFO_PACK.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity one_pct_fifo is
   generic(
      dev_family              : string := "Cyclone IV E";
      g_INFIFO_DATA_WIDTH     : integer := 32;
      g_PCT_MAX_SIZE          : integer := 4096; -- Maximum packet size in bytes 
      g_PCT_HDR_SIZE          : integer := 16;   -- Packet header size in bytes
      g_PCTFIFO_RDATA_WIDTH   : integer := 128;
      g_dual_onepctfifo       : boolean := false
   );
   port (
      clk               : in  std_logic;
      reset_n           : in  std_logic;
      infifo_rdreq      : out std_logic;
      infifo_data       : in  std_logic_vector(g_INFIFO_DATA_WIDTH-1 downto 0);
      infifo_rdempty    : in  std_logic;
      pct_rdclk         : in  std_logic;
      pct_aclr_n        : in  std_logic;
      pct_rdy           : out std_logic_vector(1 downto 0);
      pct_header        : out std_logic_vector(g_PCT_HDR_SIZE*8-1 downto 0);
      pct_data_rdreq    : in  std_logic;
      pct_data          : out std_logic_vector(g_PCTFIFO_RDATA_WIDTH-1 downto 0);
      pct_data_rdempty  : out std_logic;
      
      ext_rd_fifo_sel      : in  std_logic;
      
      pct_counter       : out std_logic_vector(31 downto 0);
      pct_counter_rst   : in  std_logic

   );
end one_pct_fifo;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of one_pct_fifo is
--declare signals,  components here
-- Constants
constant c_MAX_PCT_WORDS         : integer := g_PCT_MAX_SIZE*8/g_PCTFIFO_RDATA_WIDTH;
constant c_PCT_HDR_WORDS         : integer := g_PCT_HDR_SIZE*8/g_PCTFIFO_RDATA_WIDTH;
constant c_RD_RATIO              : integer := g_PCTFIFO_RDATA_WIDTH/8;

-- inst0
signal inst0_pct_wrreq           : std_logic;          
signal inst0_pct_data            : std_logic_vector(g_INFIFO_DATA_WIDTH-1 downto 0);
signal inst0_pct_header          : std_logic_vector(g_PCT_HDR_SIZE*8-1 downto 0);
signal inst0_pct_header_reg      : std_logic_vector(g_PCT_HDR_SIZE*8-1 downto 0);
signal inst0_pct_header_valid    : std_logic;
signal inst0_pct_header_valid_reg          : std_logic;

-- inst1
constant c_INST1_WRUSEDW_WIDTH   : integer := FIFO_WORDS_TO_Nbits(g_PCT_MAX_SIZE*2/(g_INFIFO_DATA_WIDTH/8),true);
constant c_INST1_RDUSEDW_WIDTH   : integer := FIFO_WORDS_TO_Nbits(g_PCT_MAX_SIZE*2/(g_PCTFIFO_RDATA_WIDTH/8),true);
signal inst1_reset_n             : std_logic;

signal inst1_wrusedw             : std_logic_vector(c_INST1_WRUSEDW_WIDTH-1 downto 0);



signal inst1_rd_rst_busy         : std_logic;

-- inst2
signal inst2_rdreq               : std_logic;
signal inst2_q                   : std_logic_vector(g_PCT_HDR_SIZE*8-1 downto 0);
signal inst2_rdempty             : std_logic;

-- internal signals
signal pct_header_valid          : std_logic;

signal pct_rdy_reg               : std_logic_vector(1 downto 0);

signal fifo_sel                  : std_logic;
signal inst0_fifo_sel            : std_logic;
signal rd_fifo_sel               : std_logic;

--second fifo signals
signal inst1_0_wr_rst_busy         : std_logic;
signal inst1_1_wr_rst_busy       : std_logic;

signal inst1_0_pct_wrreq         : std_logic;
signal inst1_1_pct_wrreq         : std_logic;

signal inst1_0_pct_data          : std_logic_vector(g_INFIFO_DATA_WIDTH-1 downto 0);
signal inst1_1_pct_data          : std_logic_vector(g_INFIFO_DATA_WIDTH-1 downto 0);

signal inst1_0_pct_wrreq_reg     : std_logic;
signal inst1_1_pct_wrreq_reg     : std_logic;

signal inst1_0_pct_data_reg      : std_logic_vector(g_INFIFO_DATA_WIDTH-1 downto 0);
signal inst1_1_pct_data_reg      : std_logic_vector(g_INFIFO_DATA_WIDTH-1 downto 0);

signal inst1_0_wrempty          : std_logic;
signal inst1_1_wrempty          : std_logic;

signal inst1_0_rdreq            : std_logic;
signal inst1_1_rdreq            : std_logic;

signal inst1_0_fifooutdata      : std_logic_vector(g_PCTFIFO_RDATA_WIDTH-1 downto 0);
signal inst1_1_fifooutdata      : std_logic_vector(g_PCTFIFO_RDATA_WIDTH-1 downto 0);

signal inst1_0_rdempty             : std_logic;
signal inst1_1_rdempty             : std_logic;

signal inst1_0_rdusedw             : std_logic_vector(c_INST1_RDUSEDW_WIDTH-1 downto 0);
signal inst1_1_rdusedw             : std_logic_vector(c_INST1_RDUSEDW_WIDTH-1 downto 0);

signal inst1_0_pct_rdy_reg         : std_logic;
signal inst1_1_pct_rdy_reg         : std_logic;

signal inst1_0_pct_words           : unsigned(15 downto 0);
signal inst1_1_pct_words           : unsigned(15 downto 0);



signal inst1_0_reset_n             : std_logic;
signal inst1_1_reset_n             : std_logic;


signal inst0_wrempty               : std_logic;


-- attribute MARK_DEBUG : string;
-- attribute MARK_DEBUG of infifo_rdreq : signal is "TRUE";
-- attribute MARK_DEBUG of infifo_data  : signal is "TRUE";

-- attribute MARK_DEBUG of inst0_pct_wrreq  : signal is "TRUE";
-- attribute MARK_DEBUG of pct_data_rdreq  : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_0_rdusedw  : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_1_rdusedw  : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_reset_n  : signal is "TRUE";
-- attribute MARK_DEBUG of fifo_sel  : signal is "TRUE";
 
-- attribute MARK_DEBUG of inst1_0_rdempty    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_1_rdempty    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_0_pct_wrreq  : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_1_pct_wrreq  : signal is "TRUE";
-- attribute MARK_DEBUG of ext_rd_fifo_sel    : signal is "TRUE";
-- attribute MARK_DEBUG of inst0_wrempty    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_0_fifooutdata    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_1_fifooutdata    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_0_reset_n    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_1_reset_n    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_0_rdreq    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_1_rdreq    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_0_pct_words    : signal is "TRUE";
-- attribute MARK_DEBUG of inst1_1_pct_words    : signal is "TRUE";
				
				  
begin


fifo_sel_gen_true : if g_dual_onepctfifo = true generate 
    rd_fifo_sel <= ext_rd_fifo_sel;
    fifo_sel    <= inst0_fifo_sel;
    pct_rdy(0)  <= inst1_0_pct_rdy_reg;
    pct_rdy(1)  <= inst1_1_pct_rdy_reg;
end generate;

fifo_sel_gen_false : if g_dual_onepctfifo = false generate 
    rd_fifo_sel <= '0';
    fifo_sel    <= '0';
    pct_rdy(0)  <= inst1_0_pct_rdy_reg;
    pct_rdy(1)  <= inst1_0_pct_rdy_reg;
end generate;

---- Fifo selection muxes
--internal selector
inst0_wrempty <= (inst1_0_wrempty and  not inst1_0_wr_rst_busy) when fifo_sel = '0' else (inst1_1_wrempty and not inst1_1_wr_rst_busy);
inst1_0_pct_wrreq <= inst0_pct_wrreq when fifo_sel = '0' else '0';
inst1_1_pct_wrreq <= inst0_pct_wrreq when fifo_sel = '1' else '0';
inst1_0_pct_data <= inst0_pct_data when fifo_sel = '0' else (others => '0');
inst1_1_pct_data <= inst0_pct_data when fifo_sel = '1' else (others => '0');
--external selector
inst1_0_rdreq <= pct_data_rdreq when rd_fifo_sel = '0' else '0';
inst1_1_rdreq <= pct_data_rdreq when rd_fifo_sel = '1' else '0';
pct_data <= inst1_0_fifooutdata when rd_fifo_sel = '0' else inst1_1_fifooutdata;
pct_data_rdempty <= inst1_0_rdempty when rd_fifo_sel = '0' else inst1_1_rdempty;
inst1_0_reset_n  <= pct_aclr_n  when rd_fifo_sel = '0' else '1';
inst1_1_reset_n  <= pct_aclr_n  when rd_fifo_sel = '1' else '1';

-- ----------------------------------------------------------------------------
-- Reset logic
-- ----------------------------------------------------------------------------  
   sync_reg0 : entity work.sync_reg 
   port map(clk, reset_n, '1', inst1_reset_n);

-- ----------------------------------------------------------------------------
-- Packet separate state machine
-- ----------------------------------------------------------------------------    
   inst0_pct_separate_fsm : entity work.pct_separate_fsm
   generic map(
      g_DATA_WIDTH   => g_INFIFO_DATA_WIDTH,
      g_PCT_MAX_SIZE => g_PCT_MAX_SIZE,
      g_PCT_HDR_SIZE => g_PCT_HDR_SIZE
   )
   port map(
      clk               => clk,
      reset_n           => reset_n,
      infifo_rdreq      => infifo_rdreq,
      infifo_data       => infifo_data,
      infifo_rdempty    => infifo_rdempty,
      pct_wrreq         => inst0_pct_wrreq,
      pct_data          => inst0_pct_data,
      pct_wrempty       => inst0_wrempty,
      pct_header        => inst0_pct_header,    
      pct_header_valid  => inst0_pct_header_valid,
      pct_counter       => pct_counter    ,
      pct_counter_rst   => pct_counter_rst,
      fifo_sel          => inst0_fifo_sel
   );
   
-- ----------------------------------------------------------------------------
-- Registering fifo write signals to aid timing
-- ----------------------------------------------------------------------------  
  fifo_wr_reg_proc : process(clk)
  begin
    if rising_edge(clk) then
        inst1_0_pct_wrreq_reg <= inst1_0_pct_wrreq;
        inst1_1_pct_wrreq_reg <= inst1_1_pct_wrreq;
                              
        inst1_0_pct_data_reg  <= inst1_0_pct_data;
        inst1_1_pct_data_reg  <= inst1_1_pct_data;
    end if; 
  end process;
   
-- ----------------------------------------------------------------------------
-- FIFO for storing one packet
-- ----------------------------------------------------------------------------   
   inst1_0_fifo_inst : entity work.fifo_inst   
   generic map(
      dev_family     => dev_family,
      wrwidth        => g_INFIFO_DATA_WIDTH,
      wrusedw_witdth => c_INST1_WRUSEDW_WIDTH, 
      rdwidth        => g_PCTFIFO_RDATA_WIDTH,
      rdusedw_width  => c_INST1_RDUSEDW_WIDTH,   
      show_ahead     => "OFF"
   )
   port map(
      reset_n        => inst1_0_reset_n and inst1_reset_n,
      wr_rst_busy    => inst1_0_wr_rst_busy,
      rd_rst_busy    => inst1_rd_rst_busy,
      wrclk          => clk,
      wrreq          => inst1_0_pct_wrreq_reg,
      data           => inst1_0_pct_data_reg,
      wrfull         => open,
      wrempty        => inst1_0_wrempty,
      wrusedw        => inst1_wrusedw,
      rdclk          => pct_rdclk,
      rdreq          => inst1_0_rdreq,
      q              => inst1_0_fifooutdata,
      rdempty        => inst1_0_rdempty,
      rdusedw        => inst1_0_rdusedw           
   );
   
   gen_secondfifo : if g_dual_onepctfifo = true generate
   
       inst1_1_fifo_inst : entity work.fifo_inst   
       generic map(
          dev_family     => dev_family,
          wrwidth        => g_INFIFO_DATA_WIDTH,
          wrusedw_witdth => c_INST1_WRUSEDW_WIDTH, 
          rdwidth        => g_PCTFIFO_RDATA_WIDTH,
          rdusedw_width  => c_INST1_RDUSEDW_WIDTH,   
          show_ahead     => "OFF"
       )
       port map(
          reset_n        => inst1_1_reset_n and inst1_reset_n,
          wr_rst_busy    => inst1_1_wr_rst_busy,
          rd_rst_busy    => open,
          wrclk          => clk,
          wrreq          => inst1_1_pct_wrreq_reg,
          data           => inst1_1_pct_data_reg,
          wrfull         => open,
          wrempty        => inst1_1_wrempty,
          wrusedw        => open,
          rdclk          => pct_rdclk,
          rdreq          => inst1_1_rdreq,
          q              => inst1_1_fifooutdata,
          rdempty        => inst1_1_rdempty,
          rdusedw        => inst1_1_rdusedw -- internal out         
       );
   end generate;
    
   
   header_reg : process(clk) 
   begin
    if rising_edge(clk) then
        inst0_pct_header_valid_reg <= inst0_pct_header_valid;
--        if inst0_pct_header_valid = '1' then
            inst0_pct_header_reg <= inst0_pct_header;
--        end if;    
    end if;
   end process;

-- ----------------------------------------------------------------------------
-- Internal processes 
-- ----------------------------------------------------------------------------
--   -- Packet header valid
--   pct_hdr_valid_proc : process(pct_rdclk, reset_n)
--   begin
--      if reset_n = '0' then 
--         pct_header_valid <= '0';
--      elsif (pct_rdclk'event AND pct_rdclk='1') then 
--         pct_header_valid <= inst2_rdreq;
--      end if;
--   end process;
      
   
   pct_words_proc_0 : process(pct_rdclk, reset_n)
   begin
      if reset_n = '0' then 
         inst1_0_pct_words  <= (others=>'1');
      elsif inst1_0_pct_rdy_reg = '1' and inst1_0_rdreq = '1' then
         inst1_0_pct_words  <= (others => '1');
      elsif (pct_rdclk'event AND pct_rdclk='1') then
         if inst0_pct_header_valid_reg = '1' then
            -- For compatibility: if there are no packet size inserted in packet header
            --                    then  pct_words = max number of packet words
            if inst0_pct_header_reg(23 downto 8) = "0000000000000000" then 
                if fifo_sel = '0' then
                    inst1_0_pct_words <= to_unsigned(c_MAX_PCT_WORDS,inst1_0_pct_words'length);
                end if;
            else 
                if fifo_sel = '0' then
                    inst1_0_pct_words <= unsigned(inst0_pct_header_reg(23 downto 8))/c_RD_RATIO + c_PCT_HDR_WORDS;
                end if;
            end if;
         else 
            inst1_0_pct_words <= inst1_0_pct_words;
         end if;
      end if;
   end process;
      
   pct_words_proc_1 : process(pct_rdclk, reset_n)
   begin
      if reset_n = '0' then 
         inst1_1_pct_words  <= (others=>'1');
      elsif inst1_1_pct_rdy_reg = '1' and inst1_1_rdreq = '1' then
         inst1_1_pct_words  <= (others => '1');
      elsif (pct_rdclk'event AND pct_rdclk='1') then
         if inst0_pct_header_valid_reg = '1' then
            -- For compatibility: if there are no packet size inserted in packet header
            --                    then  pct_words = max number of packet words
            if inst0_pct_header_reg(23 downto 8) = "0000000000000000" then 
                if fifo_sel = '1' then
                    inst1_1_pct_words <= to_unsigned(c_MAX_PCT_WORDS,inst1_1_pct_words'length);
                end if;
            else 
                if fifo_sel = '1' then
                    inst1_1_pct_words <= unsigned(inst0_pct_header_reg(23 downto 8))/c_RD_RATIO + c_PCT_HDR_WORDS;
                end if;
            end if;
         else 
            inst1_1_pct_words <= inst1_1_pct_words;
         end if;
         
      end if;
   end process;
      
-- ----------------------------------------------------------------------------
-- Output registers
-- ---------------------------------------------------------------------------- 
   out_reg : process(pct_rdclk, reset_n)
   begin
      if reset_n = '0' then 
         inst1_0_pct_rdy_reg <= '0';
         inst1_1_pct_rdy_reg <= '0';
      elsif (pct_rdclk'event AND pct_rdclk='1') then 
      
         if unsigned(inst1_0_rdusedw) >= inst1_0_pct_words  then 
            inst1_0_pct_rdy_reg <= '1';
         else
            inst1_0_pct_rdy_reg <= '0';
         end if;
         
         if unsigned(inst1_1_rdusedw) >= inst1_1_pct_words  then 
            inst1_1_pct_rdy_reg <= '1';
         else
            inst1_1_pct_rdy_reg <= '0';
         end if;
         
      end if;
   end process;
   
-- ----------------------------------------------------------------------------
-- Output ports
-- ----------------------------------------------------------------------------   
   pct_rdy           <= pct_rdy_reg;
   pct_header        <= inst2_q;
--   pct_data_rdempty  <= inst1_rdempty;
  
end arch;   


