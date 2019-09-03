-- ----------------------------------------------------------------------------
-- FILE:          io_buff.vhd
-- DESCRIPTION:   IO buffers for PCIe_5GRadio
-- DATE:          12:14 PM Thursday, May 23, 2019
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
--NOTES:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.io_buff_pkg.all;

Library UNISIM;
use UNISIM.vcomponents.all;



-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity io_buff is
   port (
      -- 14-bit ADC external ports
      ADC_CLK_P         : out    std_logic;
      ADC_CLK_N         : out    std_logic;
      ADC_CLKOUT_P      : in     std_logic;
      ADC_CLKOUT_N      : in     std_logic;
      ADC_DA_P          : in     std_logic_vector(6 downto 0);
      ADC_DA_N          : in     std_logic_vector(6 downto 0);
      ADC_DB_P          : in     std_logic_vector(6 downto 0);
      ADC_DB_N          : in     std_logic_vector(6 downto 0);
      FPGA_ADC_RESET    : out    std_logic;
      -- Internal ports 
      adc_o             : out    t_FROM_ADC;
      adc_i             : in     t_TO_ADC
      );
end io_buff;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of io_buff is
--declare signals,  components here
 
begin
-- ----------------------------------------------------------------------------
-- ADC buffers
-- ----------------------------------------------------------------------------
   -- Diffrential buffer for data clock from ADC
   inst0 : IBUFDS
      generic map (
         DIFF_TERM      => TRUE, -- Differential Termination 
         IBUF_LOW_PWR   => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => adc_o.CLKOUT,         -- Buffer output
         I  => ADC_CLKOUT_P,     -- Diff_p buffer input (connect directly to top-level port)
         IB => ADC_CLKOUT_N      -- Diff_n buffer input (connect directly to top-level port)
      );
      
   inst1 : OBUFDS
   generic map (
      IOSTANDARD  => "LVDS_25", -- Specify the output I/O standard
      SLEW        => "SLOW")    -- Specify the output slew rate
   port map (
      O  => ADC_CLK_P,     -- Diff_p output (connect directly to top-level port)
      OB => ADC_CLK_N,     -- Diff_n output (connect directly to top-level port)
      I  => adc_i.CLK      -- Buffer input 
   );
    
   -- Diferential DA (data A chanel) buffers
   DA_buff : for i in 0 to 6 generate
   IBUFDS_inst : IBUFDS
      generic map (
         DIFF_TERM      => TRUE, -- Differential Termination 
         IBUF_LOW_PWR   => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => adc_o.DA(i),   -- Buffer output
         I  => ADC_DA_P(i),   -- Diff_p buffer input (connect directly to top-level port)
         IB => ADC_DA_N(i)    -- Diff_n buffer input (connect directly to top-level port)
      );
   end generate DA_buff;
   
   -- Diferential DB (data B chanel) buffers
   DB_buff : for i in 0 to 6 generate
   IBUFDS_inst : IBUFDS
      generic map (
         DIFF_TERM      => TRUE, -- Differential Termination 
         IBUF_LOW_PWR   => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => adc_o.DB(i),   -- Buffer output
         I  => ADC_DB_P(i),   -- Diff_p buffer input (connect directly to top-level port)
         IB => ADC_DB_N(i)    -- Diff_n buffer input (connect directly to top-level port)
      );
   end generate DB_buff;
   

   
   FPGA_ADC_RESET <= '0';

  
end arch;   


