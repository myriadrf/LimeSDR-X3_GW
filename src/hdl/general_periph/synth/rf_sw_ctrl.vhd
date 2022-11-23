-- ----------------------------------------------------------------------------
-- FILE:          rf_sw_ctrl.vhd
-- DESCRIPTION:   Module to control rf switches
-- DATE:          10:38 AM Tuesday, November 8, 2022
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.periphcfg_pkg.all;
--! Local libraries
library work;

--! Entity/Package Description
entity rf_sw_ctrl is
   port (
	--general ports
	CLK                : in std_logic;
	CLK_LMS1           : in std_logic;
	CLK_LMS2           : in std_logic;
	RESET_N            : in std_logic;
	--config port
	FROM_PERIPHCFG 	   : in t_FROM_PERIPHCFG;
	TO_PERIPHCFG       : out t_TO_PERIPHCFG;
	--Switches
	RFSW_LMS1_RX1_V1   : out std_logic;
	RFSW_LMS1_RX2_V1   : out std_logic;
	RFSW_LMS1_TX1_V1   : out std_logic;
	RFSW_LMS1_TX2_V1   : out std_logic;
					   
	RFSW_LMS2_RX1C_V1  : out std_logic;
	RFSW_LMS2_RX2IN_V1 : out std_logic;
	RFSW_LMS2_TRX1_V1  : out std_logic;
	RFSW_LMS2_TRX1T_V1 : out std_logic;
					   
	RFSW_LMS2_RX1IN_V1 : out std_logic;
	RFSW_LMS2_RX2C_V1  : out std_logic;
	RFSW_LMS2_TRX2_V1  : out std_logic;
	RFSW_LMS2_TRX2T_V1 : out std_logic;
					   
	RFSW1_LMS3_RX1_V1  : out std_logic;
	RFSW1_LMS3_RX2_V1  : out std_logic;
	LMS1_TX1_EN        : out std_logic;
	LMS1_TX2_EN        : out std_logic;
	LMS2_TX1_1_EN      : out std_logic;
	LMS2_TX2_1_EN      : out std_logic;
	LMS2_RX1_LNA_SD    : out std_logic;
	LMS2_RX2_LNA_SD    : out std_logic;
	--control
	LMS1_TXANT_EN	   : in  std_logic;
	LMS2_TXANT_EN	   : in  std_logic
   );
end entity rf_sw_ctrl;

architecture rtl of rf_sw_ctrl is

signal rfsw_lms1_rx1_v1_int   : std_logic;
signal rfsw_lms1_rx2_v1_int   : std_logic;
signal rfsw_lms1_tx1_v1_int   : std_logic;
signal rfsw_lms1_tx2_v1_int   : std_logic;

signal rfsw_lms2_rx1c_v1_int  : std_logic;
signal rfsw_lms2_rx2in_v1_int : std_logic;
signal rfsw_lms2_trx1_v1_int  : std_logic;
signal rfsw_lms2_trx1t_v1_int : std_logic;

signal rfsw_lms2_rx1in_v1_int : std_logic;
signal rfsw_lms2_rx2c_v1_int  : std_logic;
signal rfsw_lms2_trx2_v1_int  : std_logic;
signal rfsw_lms2_trx2t_v1_int : std_logic;

signal rfsw1_lms3_rx1_v1_int  : std_logic;
signal rfsw1_lms3_rx2_v1_int  : std_logic;
signal lms1_tx1_en_int        : std_logic;
signal lms1_tx2_en_int        : std_logic;
signal lms2_tx1_1_en_int      : std_logic;
signal lms2_tx2_1_en_int      : std_logic;
signal lms2_rx1_lna_sd_int    : std_logic;
signal lms2_rx2_lna_sd_int    : std_logic;

--RFSW constants
----LMS1 A channel
constant C_LMS1_LOFREQ_RFSW_UL_A : std_logic_vector(1 downto 0) := "01"; --RX1 & TX1
constant C_LMS1_LOFREQ_RFSW_DL_A : std_logic_vector(1 downto 0) := "10";
constant C_LMS1_HIFREQ_RFSW_UL_A : std_logic_vector(1 downto 0) := "10";
constant C_LMS1_HIFREQ_RFSW_DL_A : std_logic_vector(1 downto 0) := "01";
----LMS1 B channel 
constant C_LMS1_LOFREQ_RFSW_UL_B : std_logic_vector(1 downto 0) := C_LMS1_LOFREQ_RFSW_UL_A;-- Assume channel controls the same
constant C_LMS1_LOFREQ_RFSW_DL_B : std_logic_vector(1 downto 0) := C_LMS1_LOFREQ_RFSW_DL_A;-- Assume channel controls the same
constant C_LMS1_HIFREQ_RFSW_UL_B : std_logic_vector(1 downto 0) := C_LMS1_HIFREQ_RFSW_UL_A;-- Assume channel controls the same
constant C_LMS1_HIFREQ_RFSW_DL_B : std_logic_vector(1 downto 0) := C_LMS1_HIFREQ_RFSW_DL_A;-- Assume channel controls the same
----LMS2 A channel                                                                        
constant C_LMS2_RFSW_UL_A          : std_logic_vector(3 downto 0) := "0101"; --RX1C & RX1IN & TRX1 & TRX1T
constant C_LMS2_RFSW_DL_A          : std_logic_vector(3 downto 0) := "0110";
----LMS2 B channel
constant C_LMS2_RFSW_UL_B          : std_logic_vector(3 downto 0) := "0100";--C_LMS2_RFSW_UL_A;-- Assume channel controls the same
constant C_LMS2_RFSW_DL_B          : std_logic_vector(3 downto 0) := "0111";--C_LMS2_RFSW_DL_A;-- Assume channel controls the same


--RFAMP constants
----LMS1 A channel
constant C_LMS1_RFAMP_UL_A		 : std_logic_vector(0 downto 0) := "0"; --RF amp
constant C_LMS1_RFAMP_DL_A		 : std_logic_vector(0 downto 0) := "1";
----LMS1 B channel
constant C_LMS1_RFAMP_UL_B		 : std_logic_vector(0 downto 0) := C_LMS1_RFAMP_UL_A;-- Assume channel controls the same
constant C_LMS1_RFAMP_DL_B		 : std_logic_vector(0 downto 0) := C_LMS1_RFAMP_DL_A;-- Assume channel controls the same
----LMS2 A channel
constant C_LMS2_RFAMP_UL_A	     : std_logic_vector(1 downto 0) := "00"; --RX amp(LNA) & TX amp
constant C_LMS2_RFAMP_DL_A	     : std_logic_vector(1 downto 0) := "11";
----LMS2 B channel
constant C_LMS2_RFAMP_UL_B	     : std_logic_vector(1 downto 0) := C_LMS2_RFAMP_UL_A;-- Assume channel controls the same
constant C_LMS2_RFAMP_DL_B	     : std_logic_vector(1 downto 0) := C_LMS2_RFAMP_DL_A;-- Assume channel controls the same

signal lms1_rfsw_mode_a          : std_logic_vector(3 downto 0);
signal lms1_rfsw_mode_b          : std_logic_vector(3 downto 0);
signal lms2_rfsw_mode_a          : std_logic_vector(3 downto 0);
signal lms2_rfsw_mode_b          : std_logic_vector(3 downto 0);

--Register mapping SWITCHES         
signal rf_switches_spi		     : std_logic_vector(13 downto 0);
signal rf_switches_spi_LMS1A : std_logic_vector(1 downto 0);-- is rf_switches_spi(11) & rf_switches_spi(13);
signal rf_switches_spi_LMS1B : std_logic_vector(1 downto 0);-- is rf_switches_spi(10) & rf_switches_spi(12);
signal rf_switches_spi_LMS2A : std_logic_vector(3 downto 0);-- is rf_switches_spi(2) & rf_switches_spi(3) & rf_switches_spi(6) & rf_switches_spi(7);  
signal rf_switches_spi_LMS2B : std_logic_vector(3 downto 0);-- is rf_switches_spi(4) & rf_switches_spi(5) & rf_switches_spi(8) & rf_switches_spi(9);
signal rf_switches_spi_LMS3A : std_logic_vector(0 downto 0);-- is rf_switches_spi(0);  
signal rf_switches_spi_LMS3B : std_logic_vector(0 downto 0);-- is rf_switches_spi(1); 
 
signal rf_switches_int	         : std_logic_vector(13 downto 0);
signal rf_switches_int_LMS1A : std_logic_vector(1 downto 0);-- is rf_switches_int(11) & rf_switches_int(13);
signal rf_switches_int_LMS1B : std_logic_vector(1 downto 0);-- is rf_switches_int(10) & rf_switches_int(12);
signal rf_switches_int_LMS2A : std_logic_vector(3 downto 0);-- is rf_switches_int(2) & rf_switches_int(3) & rf_switches_int(6) & rf_switches_int(7);  
signal rf_switches_int_LMS2B : std_logic_vector(3 downto 0);-- is rf_switches_int(4) & rf_switches_int(5) & rf_switches_int(8) & rf_switches_int(9);
signal rf_switches_int_LMS3A : std_logic_vector(0 downto 0);-- is rf_switches_int(0);  
signal rf_switches_int_LMS3B : std_logic_vector(0 downto 0);-- is rf_switches_int(1);
--Register mapping AMPS                                   
signal rf_amps_spi               : std_logic_vector(5 downto 0);
signal rf_amps_spi_LMS1A : std_logic_vector(0 downto 0);-- is rf_amps_spi(5);
signal rf_amps_spi_LMS1B : std_logic_vector(0 downto 0);-- is rf_amps_spi(4);
signal rf_amps_spi_LMS2A : std_logic_vector(1 downto 0);-- is rf_amps_spi(1) & rf_amps_spi(3);
signal rf_amps_spi_LMS2B : std_logic_vector(1 downto 0);-- is rf_amps_spi(0) & rf_amps_spi(2);
 
signal rf_amps_int               : std_logic_vector(5 downto 0);	
signal rf_amps_int_LMS1A : std_logic_vector(0 downto 0);-- is rf_amps_spi(5);
signal rf_amps_int_LMS1B : std_logic_vector(0 downto 0);-- is rf_amps_spi(4);
signal rf_amps_int_LMS2A : std_logic_vector(1 downto 0);-- is rf_amps_spi(1) & rf_amps_spi(3);
signal rf_amps_int_LMS2B : std_logic_vector(1 downto 0);-- is rf_amps_spi(0) & rf_amps_spi(2);

signal lms1_txant_en_sync : std_logic;
signal lms2_txant_en_sync : std_logic;

signal RF_switches_manual_override : std_logic_vector(13 downto 0);
signal RF_amp_ctrl_manual_override : std_logic_vector(5  downto 0);

begin

RF_switches_manual_override <= FROM_PERIPHCFG.RF_switches_manual_override;
RF_amp_ctrl_manual_override <= FROM_PERIPHCFG.RF_amp_ctrl_manual_override;



--Get manual control values
-- rf_switches_spi<= FROM_PERIPHCFG.RF_SWITCHES;
-- rf_amps_spi    <= FROM_PERIPHCFG.RF_AMP_CTRL;
--Return actually used values TODO: ADD REGISTERING
-- TO_PERIPHCFG.RF_SWITCHES <= rf_switches_int;
-- TO_PERIPHCFG.RF_AMP_CTRL <= rf_amps_int;

--logic map
   -- RFSW_LMS1_RX1_V1   <= inst0_from_periphcfg.RF_SWITCHES(11);
   -- RFSW_LMS1_RX2_V1   <= inst0_from_periphcfg.RF_SWITCHES(10);
   -- RFSW_LMS1_TX1_V1   <= inst0_from_periphcfg.RF_SWITCHES(13);
   -- RFSW_LMS1_TX2_V1   <= inst0_from_periphcfg.RF_SWITCHES(12);
         
   -- RFSW_LMS2_RX1C_V1  <= inst0_from_periphcfg.RF_SWITCHES(2);
   -- RFSW_LMS2_RX2IN_V1 <= inst0_from_periphcfg.RF_SWITCHES(5);
   -- RFSW_LMS2_TRX1_V1  <= inst0_from_periphcfg.RF_SWITCHES(6);
   -- RFSW_LMS2_TRX1T_V1 <= inst0_from_periphcfg.RF_SWITCHES(7);
         
   -- RFSW_LMS2_RX1IN_V1 <= inst0_from_periphcfg.RF_SWITCHES(3);
   -- RFSW_LMS2_RX2C_V1  <= inst0_from_periphcfg.RF_SWITCHES(4);
   -- RFSW_LMS2_TRX2_V1  <= inst0_from_periphcfg.RF_SWITCHES(8);
   -- RFSW_LMS2_TRX2T_V1 <= inst0_from_periphcfg.RF_SWITCHES(9);
         
   -- RFSW1_LMS3_RX1_V1  <= inst0_from_periphcfg.RF_SWITCHES(0);
   -- RFSW1_LMS3_RX2_V1  <= inst0_from_periphcfg.RF_SWITCHES(1);
   
   -- LMS1_TX1_EN     <= inst0_from_periphcfg.RF_AMP_CTRL(5);
   -- LMS1_TX2_EN     <= inst0_from_periphcfg.RF_AMP_CTRL(4);
   -- LMS2_TX1_1_EN   <= inst0_from_periphcfg.RF_AMP_CTRL(3);
   -- LMS2_TX2_1_EN   <= inst0_from_periphcfg.RF_AMP_CTRL(2);
   -- LMS2_RX1_LNA_SD <= inst0_from_periphcfg.RF_AMP_CTRL(1);
   -- LMS2_RX2_LNA_SD <= inst0_from_periphcfg.RF_AMP_CTRL(0);
------
-- WIRES
------  

    --assignment logic
    -- FromPeriphcfg -> switches_spi 
    -- Swithches -> switches_int -> ToPeriphcfg 
rf_switches_spi_LMS1A     <= rf_switches_spi(11) & rf_switches_spi(13);
rf_switches_spi_LMS1B     <= rf_switches_spi(10) & rf_switches_spi(12);
rf_switches_spi_LMS2A     <= rf_switches_spi(2) & rf_switches_spi(3) & rf_switches_spi(6) & rf_switches_spi(7);
rf_switches_spi_LMS2B     <= rf_switches_spi(4) & rf_switches_spi(5) & rf_switches_spi(8) & rf_switches_spi(9);
rf_switches_spi_LMS3A(0)  <= rf_switches_spi(0);  
rf_switches_spi_LMS3B(0)  <= rf_switches_spi(1); 

rf_switches_int( 0 ) <= rf_switches_int_LMS3A(0) when RF_switches_manual_override( 0 ) = '0' else rf_switches_spi( 0 );
rf_switches_int( 1 ) <= rf_switches_int_LMS3B(0) when RF_switches_manual_override( 1 ) = '0' else rf_switches_spi( 1 );
rf_switches_int( 2 ) <= rf_switches_int_LMS2A(3) when RF_switches_manual_override( 2 ) = '0' else rf_switches_spi( 2 );
rf_switches_int( 3 ) <= rf_switches_int_LMS2A(2) when RF_switches_manual_override( 3 ) = '0' else rf_switches_spi( 3 );
rf_switches_int( 4 ) <= rf_switches_int_LMS2B(3) when RF_switches_manual_override( 4 ) = '0' else rf_switches_spi( 4 );
rf_switches_int( 5 ) <= rf_switches_int_LMS2B(2) when RF_switches_manual_override( 5 ) = '0' else rf_switches_spi( 5 );
rf_switches_int( 6 ) <= rf_switches_int_LMS2A(1) when RF_switches_manual_override( 6 ) = '0' else rf_switches_spi( 6 );
rf_switches_int( 7 ) <= rf_switches_int_LMS2A(0) when RF_switches_manual_override( 7 ) = '0' else rf_switches_spi( 7 );
rf_switches_int( 8 ) <= rf_switches_int_LMS2B(1) when RF_switches_manual_override( 8 ) = '0' else rf_switches_spi( 8 );
rf_switches_int( 9 ) <= rf_switches_int_LMS2B(0) when RF_switches_manual_override( 9 ) = '0' else rf_switches_spi( 9 );
rf_switches_int( 10) <= rf_switches_int_LMS1B(1) when RF_switches_manual_override( 10) = '0' else rf_switches_spi( 10);
rf_switches_int( 11) <= rf_switches_int_LMS1A(1) when RF_switches_manual_override( 11) = '0' else rf_switches_spi( 11);
rf_switches_int( 12) <= rf_switches_int_LMS1B(0) when RF_switches_manual_override( 12) = '0' else rf_switches_spi( 12);
rf_switches_int( 13) <= rf_switches_int_LMS1A(0) when RF_switches_manual_override( 13) = '0' else rf_switches_spi( 13);

rf_amps_spi_LMS1A(0) <= rf_amps_spi(5);
rf_amps_spi_LMS1B(0) <= rf_amps_spi(4);
rf_amps_spi_LMS2A    <= rf_amps_spi(1) & rf_amps_spi(3);
rf_amps_spi_LMS2B    <= rf_amps_spi(0) & rf_amps_spi(2);

rf_amps_int( 0 ) <= rf_amps_int_LMS2B(1) when RF_amp_ctrl_manual_override( 0 ) = '0' else rf_amps_spi( 0 );
rf_amps_int( 1 ) <= rf_amps_int_LMS2A(1) when RF_amp_ctrl_manual_override( 1 ) = '0' else rf_amps_spi( 1 );
rf_amps_int( 2 ) <= rf_amps_int_LMS2B(0) when RF_amp_ctrl_manual_override( 2 ) = '0' else rf_amps_spi( 2 );
rf_amps_int( 3 ) <= rf_amps_int_LMS2A(0) when RF_amp_ctrl_manual_override( 3 ) = '0' else rf_amps_spi( 3 );
rf_amps_int( 4 ) <= rf_amps_int_LMS1B(0) when RF_amp_ctrl_manual_override( 4 ) = '0' else rf_amps_spi( 4 );
rf_amps_int( 5 ) <= rf_amps_int_LMS1A(0) when RF_amp_ctrl_manual_override( 5 ) = '0' else rf_amps_spi( 5 );

------
-- SYNC LOGIC
------

    ------
    -- Control
    ------
      LMS1_TXANTEN_sync : entity work.sync_reg
      port map (
                clk      => CLK_LMS1,
                reset_n  => reset_n,
                async_in => LMS1_TXANT_EN,
                sync_out => lms1_txant_en_sync
         );
         
      LMS2_TXANTEN_sync : entity work.sync_reg
      port map (
                clk      => CLK_LMS2,
                reset_n  => reset_n,
                async_in => LMS2_TXANT_EN,
                sync_out => lms2_txant_en_sync
         );
    
    
       LMS1_control_in_A : entity work.bus_sync_reg
          generic map (
                       bus_width => 4
       )
          port map (
                    clk      => CLK_LMS1,
                    reset_n  => '1',
                    async_in => FROM_PERIPHCFG.LMS1_RFSW_MODE_A,
                    sync_out => lms1_rfsw_mode_a
       );
       
       LMS1_control_in_B : entity work.bus_sync_reg
          generic map (
                       bus_width => 4
       )
          port map (
                    clk      => CLK_LMS1,
                    reset_n  => '1',
                    async_in => FROM_PERIPHCFG.LMS1_RFSW_MODE_B,
                    sync_out => lms1_rfsw_mode_b
       );
       
       LMS2_control_in_A : entity work.bus_sync_reg
          generic map (
                       bus_width => 4
       )
          port map (
                    clk      => CLK_LMS2,
                    reset_n  => '1',
                    async_in => FROM_PERIPHCFG.LMS2_RFSW_MODE_A,
                    sync_out => lms2_rfsw_mode_a
       );
       
       LMS2_control_in_B : entity work.bus_sync_reg
          generic map (
                       bus_width => 4
       )
          port map (
                    clk      => CLK_LMS2,
                    reset_n  => '1',
                    async_in => FROM_PERIPHCFG.LMS2_RFSW_MODE_B,
                    sync_out => lms2_rfsw_mode_b
       );
       
       
       
    ------
    -- LMS1
    ------
       LMS1_rfsw_control_sync_in : entity work.bus_sync_reg
          generic map (
                       bus_width => 4
       )
          port map (
                    clk      => CLK_LMS1,
                    reset_n  => '1',
                    async_in => FROM_PERIPHCFG.RF_SWITCHES(13 downto 10),
                    sync_out => rf_switches_spi(13 downto 10)
       );
       
       LMS1_rfamp_control_sync_in : entity work.bus_sync_reg
          generic map (
                       bus_width => 2
       )
          port map (
                    clk      => CLK_LMS1,
                    reset_n  => '1',
                    async_in => FROM_PERIPHCFG.RF_AMP_CTRL(5 downto 4),
                    sync_out => rf_amps_spi(5 downto 4)
       );
       
       LMS1_rfsw_control_sync_out : entity work.bus_sync_reg
          generic map (
                       bus_width => 4
       )
          port map (
                    clk      => CLK,
                    reset_n  => '1',
                    async_in => rf_switches_int(13 downto 10),
                    sync_out => TO_PERIPHCFG.RF_SWITCHES(13 downto 10)
       );
       
       LMS1_rfamp_control_sync_out : entity work.bus_sync_reg
          generic map (
                       bus_width => 2
       )
          port map (
                    clk      => CLK,
                    reset_n  => '1',
                    async_in => rf_amps_int(5 downto 4),
                    sync_out => TO_PERIPHCFG.RF_AMP_CTRL(5 downto 4)
       );
       
    ------
    -- LMS2
    ------
       LMS2_rfsw_control_sync_in : entity work.bus_sync_reg
          generic map (
                       bus_width => 8
       )
          port map (
                    clk      => CLK_LMS2,
                    reset_n  => '1',
                    async_in => FROM_PERIPHCFG.RF_SWITCHES(9 downto 2),
                    sync_out => rf_switches_spi(9 downto 2)
       );
       
       LMS2_rfamp_control_sync_in : entity work.bus_sync_reg
          generic map (
                       bus_width => 4
       )
          port map (
                    clk      => CLK_LMS2,
                    reset_n  => '1',
                    async_in => FROM_PERIPHCFG.RF_AMP_CTRL(3 downto 0),
                    sync_out => rf_amps_spi(3 downto 0)
       );
       
       LMS2_rfsw_control_sync_out : entity work.bus_sync_reg
          generic map (
                       bus_width => 8
       )
          port map (
                    clk      => CLK,
                    reset_n  => '1',
                    async_in => rf_switches_int(9 downto 2),
                    sync_out => TO_PERIPHCFG.RF_SWITCHES(9 downto 2)--rf_switches_spi(13 downto 10)
       );
       
       LMS2_rfamp_control_sync_out : entity work.bus_sync_reg
          generic map (
                       bus_width => 4
       )
          port map (
                    clk      => CLK,
                    reset_n  => '1',
                    async_in => rf_amps_int(3 downto 0),
                    sync_out => TO_PERIPHCFG.RF_AMP_CTRL(3 downto 0)--rf_amps_spi(5 downto 4)
       );
       
    ------
    -- LMS3 (manual control only, no need to sync anything)
    ------
    TO_PERIPHCFG.RF_SWITCHES(1 downto 0) <= FROM_PERIPHCFG.RF_SWITCHES(1 downto 0);

------
-- CONTROL LOGIC
------
    ------
    -- LMS 1 A channel control
    ------
    LMS1_A_CTRL : process(all)
    begin
        case lms1_rfsw_mode_a is
            --Manual control
            when "0000" =>
                rf_switches_int_LMS1A <= rf_switches_spi_LMS1A;
                rf_amps_int_LMS1A     <= rf_amps_spi_LMS1A;
                
            --Force hi frequency uplink
            when "0001" =>
                rf_switches_int_LMS1A <= C_LMS1_HIFREQ_RFSW_UL_A;
                rf_amps_int_LMS1A     <= C_LMS1_RFAMP_UL_A;
                
            --Force hi frequency downlink
            when "0010" =>
                rf_switches_int_LMS1A <= C_LMS1_HIFREQ_RFSW_DL_A;
                rf_amps_int_LMS1A     <= C_LMS1_RFAMP_DL_A;
                
            --Force hi frequency tdd uplink/downlink control
            when "0011" =>
                if lms1_txant_en_sync = '1' then
                    rf_switches_int_LMS1A <= C_LMS1_HIFREQ_RFSW_DL_A;
                    rf_amps_int_LMS1A     <= C_LMS1_RFAMP_DL_A;
                else
                    rf_switches_int_LMS1A <= C_LMS1_HIFREQ_RFSW_UL_A;
                    rf_amps_int_LMS1A     <= C_LMS1_RFAMP_UL_A;
                end if;
                
            --Force lo frequency uplink
            when "0100" =>
                rf_switches_int_LMS1A <= C_LMS1_LOFREQ_RFSW_UL_A;
                rf_amps_int_LMS1A     <= C_LMS1_RFAMP_UL_A;
                
            --Force lo frequency downlink
            when "0101" =>
                rf_switches_int_LMS1A <= C_LMS1_LOFREQ_RFSW_DL_A;
                rf_amps_int_LMS1A     <= C_LMS1_RFAMP_DL_A;
                
            --Force lo frequency tdd uplink/downlink control
            when "0110" =>
                if lms1_txant_en_sync = '1' then
                    rf_switches_int_LMS1A <= C_LMS1_LOFREQ_RFSW_DL_A;
                    rf_amps_int_LMS1A     <= C_LMS1_RFAMP_DL_A;
                else
                    rf_switches_int_LMS1A <= C_LMS1_LOFREQ_RFSW_UL_A;
                    rf_amps_int_LMS1A     <= C_LMS1_RFAMP_UL_A;
                end if;
                
            when others => --If mode value undefined - use manual control
                rf_switches_int_LMS1A <= rf_switches_spi_LMS1A;
                rf_amps_int_LMS1A     <= rf_amps_spi_LMS1A;
        end case; 
    end process;


    ------
    -- LMS 1 B channel control
    ------
    LMS1_B_CTRL : process(all)
    begin
        case lms1_rfsw_mode_b is
            --Manual control
            when "0000" =>
                rf_switches_int_LMS1B <= rf_switches_spi_LMS1B;
                rf_amps_int_LMS1B     <= rf_amps_spi_LMS1B;
                
            --Force hi frequency uplink
            when "0001" =>
                rf_switches_int_LMS1B <= C_LMS1_HIFREQ_RFSW_UL_B;
                rf_amps_int_LMS1B     <= C_LMS1_RFAMP_UL_B;
                
            --Force hi frequency downlink
            when "0010" =>
                rf_switches_int_LMS1B <= C_LMS1_HIFREQ_RFSW_DL_B;
                rf_amps_int_LMS1B     <= C_LMS1_RFAMP_DL_B;
                
            --Force hi frequency tdd uplink/downlink control
            when "0011" =>
                if lms1_txant_en_sync = '1' then
                    rf_switches_int_LMS1B <= C_LMS1_HIFREQ_RFSW_DL_B;
                    rf_amps_int_LMS1B     <= C_LMS1_RFAMP_DL_B;
                else
                    rf_switches_int_LMS1B <= C_LMS1_HIFREQ_RFSW_UL_B;
                    rf_amps_int_LMS1B     <= C_LMS1_RFAMP_UL_B;
                end if;
                
            --Force lo frequency uplink
            when "0100" =>
                rf_switches_int_LMS1B <= C_LMS1_LOFREQ_RFSW_UL_B;
                rf_amps_int_LMS1B     <= C_LMS1_RFAMP_UL_B;
                
            --Force lo frequency downlink
            when "0101" =>
                rf_switches_int_LMS1B <= C_LMS1_LOFREQ_RFSW_DL_B;
                rf_amps_int_LMS1B     <= C_LMS1_RFAMP_DL_B;
                
            --Force lo frequency tdd uplink/downlink control
            when "0110" =>
                if lms1_txant_en_sync = '1' then
                    rf_switches_int_LMS1B <= C_LMS1_LOFREQ_RFSW_DL_B;
                    rf_amps_int_LMS1B     <= C_LMS1_RFAMP_DL_B;
                else
                    rf_switches_int_LMS1B <= C_LMS1_LOFREQ_RFSW_UL_B;
                    rf_amps_int_LMS1B     <= C_LMS1_RFAMP_UL_B;
                end if;
                
            when others => --If mode value undefined - use manual control
                rf_switches_int_LMS1B <= rf_switches_spi_LMS1B;
                rf_amps_int_LMS1B     <= rf_amps_spi_LMS1B;
        end case; 
    end process;

    ------
    -- LMS 2 A channel control
    ------
    LMS2_A_CTRL : process(all)
    begin
        case lms2_rfsw_mode_a is
            --Manual control
            when "0000" =>
                rf_switches_int_LMS2A <= rf_switches_spi_LMS2A;
                rf_amps_int_LMS2A     <= rf_amps_spi_LMS2A;
                
            --Force hi frequency uplink
            when "0001" =>
                rf_switches_int_LMS2A <= C_LMS2_RFSW_UL_A;
                rf_amps_int_LMS2A     <= C_LMS2_RFAMP_UL_A;
                
            --Force hi frequency downlink
            when "0010" =>
                rf_switches_int_LMS2A <= C_LMS2_RFSW_DL_A;
                rf_amps_int_LMS2A     <= C_LMS2_RFAMP_DL_A;
                
            --Force hi frequency tdd uplink/downlink control
            when "0011" =>
                if lms2_txant_en_sync = '1' then
                    rf_switches_int_LMS2A <= C_LMS2_RFSW_DL_A;
                    rf_amps_int_LMS2A     <= C_LMS2_RFAMP_DL_A;
                else
                    rf_switches_int_LMS2A <= C_LMS2_RFSW_UL_A;
                    rf_amps_int_LMS2A     <= C_LMS2_RFAMP_UL_A;
                end if;
            
            when others => --If mode value undefined - use manual control
                rf_switches_int_LMS2A <= rf_switches_spi_LMS2A;
                rf_amps_int_LMS2A     <= rf_amps_spi_LMS2A;
        end case; 
    end process;

    ------
    -- LMS 2 B channel control
    ------
    LMS2_B_CTRL : process(all)
    begin
        case lms2_rfsw_mode_b is
            --Manual control
            when "0000" =>
                rf_switches_int_LMS2B <= rf_switches_spi_LMS2B;
                rf_amps_int_LMS2B     <= rf_amps_spi_LMS2B;
                
            --Force hi frequency uplink
            when "0001" =>
                rf_switches_int_LMS2B <= C_LMS2_RFSW_UL_B;
                rf_amps_int_LMS2B     <= C_LMS2_RFAMP_UL_B;
                
            --Force hi frequency downlink
            when "0010" =>
                rf_switches_int_LMS2B <= C_LMS2_RFSW_DL_B;
                rf_amps_int_LMS2B     <= C_LMS2_RFAMP_DL_B;
                
            --Force hi frequency tdd uplink/downlink control
            when "0011" =>
                if lms2_txant_en_sync = '1' then
                    rf_switches_int_LMS2B <= C_LMS2_RFSW_DL_B;
                    rf_amps_int_LMS2B     <= C_LMS2_RFAMP_DL_B;
                else
                    rf_switches_int_LMS2B <= C_LMS2_RFSW_UL_B;
                    rf_amps_int_LMS2B     <= C_LMS2_RFAMP_UL_B;
                end if;
            
            when others => --If mode value undefined - use manual control
                rf_switches_int_LMS2B <= rf_switches_spi_LMS2B;
                rf_amps_int_LMS2B     <= rf_amps_spi_LMS2B;
        end case; 
    end process;
    
------
-- Output registering
------
lms1_outreg : process(CLK_LMS1)
begin
    if rising_edge(CLK_LMS1) then
        RFSW_LMS1_RX1_V1   <= rf_switches_int(11);
        RFSW_LMS1_RX2_V1   <= rf_switches_int(10);
        RFSW_LMS1_TX1_V1   <= rf_switches_int(13);
        RFSW_LMS1_TX2_V1   <= rf_switches_int(12);
        LMS1_TX1_EN        <= rf_amps_int(5);
        LMS1_TX2_EN        <= rf_amps_int(4);
    end if;
end process;

lms2_outreg : process(CLK_LMS2)
begin
    if rising_edge(CLK_LMS2) then
       RFSW_LMS2_RX1C_V1  <= rf_switches_int(2);
       RFSW_LMS2_RX2IN_V1 <= rf_switches_int(5);
       RFSW_LMS2_TRX1_V1  <= rf_switches_int(6);
       RFSW_LMS2_TRX1T_V1 <= rf_switches_int(7);
             
       RFSW_LMS2_RX1IN_V1 <= rf_switches_int(3);
       RFSW_LMS2_RX2C_V1  <= rf_switches_int(4);
       RFSW_LMS2_TRX2_V1  <= rf_switches_int(8);
       RFSW_LMS2_TRX2T_V1 <= rf_switches_int(9);  
       
       LMS2_TX1_1_EN   <= rf_amps_int(3);
       LMS2_TX2_1_EN   <= rf_amps_int(2);
       LMS2_RX1_LNA_SD <= rf_amps_int(1);
       LMS2_RX2_LNA_SD <= rf_amps_int(0);
    
    end if;
end process;
       
    RFSW1_LMS3_RX1_V1  <= FROM_PERIPHCFG.RF_SWITCHES(0);
    RFSW1_LMS3_RX2_V1  <= FROM_PERIPHCFG.RF_SWITCHES(1);

end architecture rtl;