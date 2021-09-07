-- ----------------------------------------------------------------------------   
-- FILE:    lms7002_ddout.vhd
-- DESCRIPTION:   takes data in SDR and ouputs double data rate
-- DATE:   Mar 14, 2016
-- AUTHOR(s):   Lime Microsystems
-- REVISIONS:
-- Apr 17, 2019 - added Xilinx support
-- ----------------------------------------------------------------------------   
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.fpgacfg_pkg.all;

LIBRARY altera_mf;
USE altera_mf.all;
Library UNISIM;
use UNISIM.vcomponents.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity lms7002_ddout is
   generic(
      vendor        : string := "GENERIC"; -- valid vals are "ALTERA", "XILINX", "GENERIC"
      dev_family    : string := "Cyclone IV E";
      iq_width      : integer:= 12
   );
   port (
      from_fpgacfg  : in  t_FROM_FPGACFG;
      --input ports 
      clk           : in std_logic;
      reset_n       : in std_logic;
      data_in_h     : in std_logic_vector(iq_width downto 0);
      data_in_l     : in std_logic_vector(iq_width downto 0);
      --output ports 
      txiq          : out std_logic_vector(iq_width-1 downto 0);
      txiqsel       : out std_logic
      
        );
end lms7002_ddout;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of lms7002_ddout is
--declare signals,  components here

signal aclr            : std_logic;
signal datout          : std_logic_vector(iq_width downto 0);
signal dataout_delayed : std_logic_vector(iq_width-1 downto 0);
type sel_array_type is array (0 to 11) of std_logic_vector(1 downto 0);
signal dly_sel_array :  sel_array_type;


COMPONENT ALTDDIO_OUT
GENERIC(
      intended_device_family   :   string := "unused";
      extend_oe_disable        :   string := "OFF";
      invert_output            :   string := "OFF";
      oe_reg                   :   string := "UNREGISTERED";
      power_up_high            :   string := "OFF";
      width                    :   natural;
      lpm_hint                 :   string := "UNUSED";
      lpm_type                 :   string := "altddio_out"
);
PORT(
      aclr         :   in std_logic := '0';
      aset         :   in std_logic := '0';
      datain_h     :   in std_logic_vector(width-1 downto 0);
      datain_l     :   in std_logic_vector(width-1 downto 0);
      dataout      :   out std_logic_vector(width-1 downto 0);
      oe           :   in std_logic := '1';
      oe_out       :   out std_logic_vector(width-1 downto 0);
      outclock     :   in std_logic;
      outclocken   :   in std_logic := '1';
      sclr         :   in std_logic := '0';
      sset         :   in std_logic := '0'
);
END COMPONENT;

-- XILINX DDR OUTPUT REGISTER
--COMPONENT ODDR
--GENERIC(
--   DDR_CLK_EDGE   : string    := "SAME_EDGE";
--   INIT           : std_logic := '0';
--   SRTYPE         : string    := "ASYNC"
--);
--PORT(
--Q   : out std_Logic;
--C   : in  std_Logic;
--CE  : in  std_Logic;
--D1  : in  std_Logic;
--D2  : in  std_Logic;
--R   : in  std_Logic;
--S   : in  std_Logic
--);
--END COMPONENT;


begin


   aclr<=not reset_n;

   ALTERA_DDR_OUT : if vendor = "ALTERA" generate
   
      ALTDDIO_OUT_component : ALTDDIO_OUT
      GENERIC MAP (
         extend_oe_disable         => "OFF",
         intended_device_family    => "Cyclone IV E",
         invert_output             => "OFF",
         lpm_hint                  => "UNUSED",
         lpm_type                  => "altddio_out",
         oe_reg                    => "UNREGISTERED",
         power_up_high             => "OFF",
         width                     => iq_width+1
      )
      PORT MAP (
         aclr          => aclr,
         datain_h      => data_in_h,
         datain_l      => data_in_l,
         outclock      => clk,
         dataout       => datout
      );
   end generate;
   
   
   XILINX_DDR_OUT : if vendor = "XILINX" generate
   
      XILINX_DDR_OUT_REG : for i in 0 to iq_width generate
         ODDR_inst : ODDR
         GENERIC MAP(
            DDR_CLK_EDGE => "SAME_EDGE", -- "OPPOSITE_EDGE" or "SAME_EDGE" 
            INIT         => '0',   -- Initial value for Q port ('1' or '0')
            SRTYPE       => "ASYNC" -- Reset Type ("ASYNC" or "SYNC"
         )
         PORT MAP(
            Q  => datout(i),   -- 1-bit DDR output
            C  => clk,    -- 1-bit clock input
            CE => '1',  -- 1-bit clock enable input
            D1 => data_in_h(i),  -- 1-bit data input (positive edge)
            D2 => data_in_l(i),  -- 1-bit data input (negative edge)
            R  => aclr,    -- 1-bit reset input
            S  => '0'     -- 1-bit set input
         );      
      end generate;
   end generate;
   
   GENERIC_DDR_OUT : if vendor = "GENERIC" generate
      GENERIC_DDR_OUT_REG : for i in 0 to iq_width generate
         ODDR_inst : entity work.generic_oddr
         port map (
            aclr     => aclr,
            datain_h => data_in_h(i),
            datain_l => data_in_l(i),
            outclk   => clk, 
            dataout	=> datout(i)
         );
      end generate;
   end generate;
   
   dly_sel_array( 0) <= from_fpgacfg.tx_0_dly_sel;
   dly_sel_array( 1) <= from_fpgacfg.tx_1_dly_sel;
   dly_sel_array( 2) <= from_fpgacfg.tx_2_dly_sel;
   dly_sel_array( 3) <= from_fpgacfg.tx_3_dly_sel;
   dly_sel_array( 4) <= from_fpgacfg.tx_4_dly_sel;
   dly_sel_array( 5) <= from_fpgacfg.tx_5_dly_sel;
   dly_sel_array( 6) <= from_fpgacfg.tx_6_dly_sel;
   dly_sel_array( 7) <= from_fpgacfg.tx_7_dly_sel;
   dly_sel_array( 8) <= from_fpgacfg.tx_8_dly_sel;
   dly_sel_array( 9) <= from_fpgacfg.tx_9_dly_sel;
   dly_sel_array(10) <= from_fpgacfg.tx_10_dly_sel;
   dly_sel_array(11) <= from_fpgacfg.tx_11_dly_sel;
 
   DLY_INST_GEN : for i in 0 to iq_width-1 generate
      DLY_inst : entity work.lut_delay
      port map (
         d   => datout(i),
         q   => dataout_delayed(i),
         sel => dly_sel_array(i)
      );
   end generate;
 
   txiq      <= dataout_delayed;
   txiqsel   <= datout(12);
   
  
end arch;   





