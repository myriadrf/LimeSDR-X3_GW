-- ----------------------------------------------------------------------------
-- FILE:          lms7_trx_top.vhd
-- DESCRIPTION:   Top level file for LimeSDR-PCIe board
-- DATE:          10:06 AM Friday, May 11, 2018
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
use work.pllcfg_pkg.all;
use work.tstcfg_pkg.all;
use work.txtspcfg_pkg.all;
use work.rxtspcfg_pkg.all;
use work.periphcfg_pkg.all;
use work.tamercfg_pkg.all;
use work.gnsscfg_pkg.all;
use work.memcfg_pkg.all;
use work.cdcmcfg_pkg.all;
use work.FIFO_PACK.all;
use work.io_buff_pkg.all;
use work.axi_pkg.all;

use work.litepcie_pkg.all; -- B.J.
use work.fircfg_pkg.all; -- B.J.

--library altera; 
--use altera.altera_primitives_components.all;

Library UNISIM;
use UNISIM.vcomponents.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity lms7_trx_top is
   generic(
      -- General parameters
      g_DEV_FAMILY            : string := "Cyclone V";
      -- LMS7002 related 
      g_LMS_DIQ_WIDTH         : integer := 12;
      g_EXT_ADC_D_WIDTH       : integer := 14;
      g_EXT_DAC_D_WIDTH       : integer := 16;
      -- Resource saving
      g_DISABLE_BITPACKING_14B: boolean := true;  -- 14bit samples are incompatible with 4kB packets, as such
                                                   -- this function remains unused and may be disabled to save resources
                                                   -- SET THIS TO TRUE, IF 128BIT bus is used for RX
      -- Host related
      g_HOST2FPGA_S0_0_SIZE   : integer := 4096;   -- Stream, Host->FPGA, TX FIFO size in bytes, 
      g_HOST2FPGA_S0_1_SIZE   : integer := 4096;   -- Stream, Host->FPGA, WFM FIFO size in bytes
      g_HOST2FPGA_S1_0_SIZE   : integer := 4096;   -- Stream, Host->FPGA, TX FIFO size in bytes, 
      g_HOST2FPGA_S1_1_SIZE   : integer := 4096;   -- Stream, Host->FPGA, WFM FIFO size in bytes
      g_HOST2FPGA_S2_0_SIZE   : integer := 4096;   -- Stream, Host->FPGA, TX FIFO size in bytes, 
      g_HOST2FPGA_S2_1_SIZE   : integer := 4096;   -- Stream, Host->FPGA, WFM FIFO size in bytes
      g_FPGA2HOST_S0_0_SIZE   : integer := 8192;   -- Stream, FPGA->Host, FIFO size in bytes
      g_FPGA2HOST_S1_0_SIZE   : integer := 8192;   -- Stream, FPGA->Host, FIFO size in bytes
      g_FPGA2HOST_S2_0_SIZE   : integer := 8192;   -- Stream, FPGA->Host, FIFO size in bytes
      g_HOST2FPGA_C0_0_SIZE   : integer := 1024;   -- Control, Host->FPGA, FIFO size in bytes
      g_FPGA2HOST_C0_0_SIZE   : integer := 1024;   -- Control, FPGA->Host, FIFO size in bytes
      -- TX interface 
      g_TX_N_BUFF             : integer := 4;      -- N 4KB buffers in TX interface (2 OR 4)
      g_TX_PCT_SIZE           : integer := 4096;   -- TX packet size in bytes
      g_TX_IN_PCT_HDR_SIZE    : integer := 16;
      g_WFM_INFIFO_SIZE       : integer := 4096;   -- WFM in FIFO buffer size in bytes 
      -- Internal configuration memory 
      g_FPGACFG_START_ADDR    : integer := 0;
      g_PLLCFG_START_ADDR     : integer := 32;
      g_TSTCFG_START_ADDR     : integer := 96;
      g_TXTSPCFG_START_ADDR   : integer := 128;
      g_RXTSPCFG_START_ADDR   : integer := 160;
      g_PERIPHCFG_START_ADDR  : integer := 192;
      g_TAMERCFG_START_ADDR   : integer := 224;
      g_GNSSCFG_START_ADDR    : integer := 256;

      g_RXTSPCFG_START_ADDR_3   : integer := 352; -- B.J.
      g_ADPDCFG_START_ADDR   : integer := 416;  -- B.J.
      
      g_CFR0CFG_START_ADDR   : integer := 448;  -- B.J.
      g_CFR1CFG_START_ADDR   : integer := 512;  -- B.J.
      g_FIR0CFG_START_ADDR   : integer := 576;  -- B.J.
      g_FIR1CFG_START_ADDR   : integer := 640;  -- B.J.

      g_FIRCFG_TX_START_ADDR    : integer := 704;  -- B.J. (LMS#2 equaliser, for Transmitter)
      g_FIRCFG_RX_START_ADDR    : integer := 736; -- B.J. (LMS#2 equaliser, for Receiver)

      g_CFR2CFG_START_ADDR  : integer := 768;  -- B.J
      g_CFR3CFG_START_ADDR  : integer := 832;  -- B.J
      g_FIR2CFG_START_ADDR  : integer := 896;  -- B.J
      g_FIR3CFG_START_ADDR  : integer := 960;  -- B.J

      g_MEMCFG_START_ADDR     : integer := 65504;
      -- External periphery
      g_GPIO_N                : integer := 16;

      DPD_enable : INTEGER := 1  -- B.J.
   );
   port (
      -- ----------------------------------------------------------------------------
      -- External GND pin for reset
     -- EXT_GND           : in     std_logic;
      -- ----------------------------------------------------------------------------
      -- Clock sources
         -- Reference clock, coming from LMK clock buffer.
      LMK1_SEL          : out    std_logic;
      LMK2_SEL          : out    std_logic;
      LMK1_CLK1         : in     std_logic;
      LMK1_CLK2         : in     std_logic;
      LMK2_CLKIN1       : out    std_logic;
         -- On-board oscillators
      CLK100_FPGA_P     : in     std_logic;
      CLK100_FPGA_N     : in     std_logic;
      -- ----------------------------------------------------------------------------
      -- LMS7002 #1  (Full LML interface)
         -- PORT1
      LMS1_MCLK1        : in     std_logic;
      LMS1_FCLK1        : out    std_logic;
      LMS1_TXNRX1       : out    std_logic;
      LMS1_ENABLE_IQSEL1: out    std_logic;
      LMS1_DIQ1_D       : out    std_logic_vector(g_LMS_DIQ_WIDTH-1 downto 0);
         -- PORT2
      LMS1_MCLK2        : in     std_logic;
      LMS1_FCLK2        : out    std_logic;
      LMS1_TXNRX2       : out    std_logic;
      LMS1_ENABLE_IQSEL2: in     std_logic;
      LMS1_DIQ2_D       : in     std_logic_vector(g_LMS_DIQ_WIDTH-1 downto 0);
         --MISC
      LMS1_RESET        : out    std_logic;
      LMS1_TXEN         : out    std_logic;
      LMS1_RXEN         : out    std_logic;
      LMS1_TX1_EN       : out    std_logic;
      LMS1_TX2_EN       : out    std_logic;
      
      -- LMS7002 #2 (With external DACs and ADCs, No LML interface)  
         --MISC
      LMS2_RESET        : out    std_logic;
      LMS2_TXEN         : out    std_logic;
      LMS2_RXEN         : out    std_logic;
      
      -- LMS7002 #3 Calibration (One port of LML interface)
      --MISC
      LMS3_RESET        : out    std_logic;
      LMS3_TXEN         : out    std_logic;
      LMS3_RXEN         : out    std_logic;
      -- ----------------------------------------------------------------------------
      -- PCIe
         -- Clock source
      PCIE_REFCLK_P     : in     std_logic;
      PCIE_REFCLK_N     : in     std_logic;
         -- Control     
      PCIE_PERSTN       : in     std_logic;
      PCIE_SMCLK        : inout  std_logic;
      PCIE_SMDAT        : inout  std_logic;
      PCIE_WAKEN        : in     std_logic;
         -- DATA     
      PCIE_HSO_P        : in     std_logic_vector(3 downto 0);
      PCIE_HSO_N        : in     std_logic_vector(3 downto 0);
      PCIE_HSI_IC_P     : out    std_logic_vector(3 downto 0);
      PCIE_HSI_IC_N     : out    std_logic_vector(3 downto 0);
      -- ----------------------------------------------------------------------------
      -- 14-bit ADC#1 (Connected to LMS#2)
      LMS2_BB_ADC1_CLKOUT_P      : in     std_logic;
      LMS2_BB_ADC1_CLKOUT_N      : in     std_logic;
      LMS2_BB_ADC1_DA_P          : in     std_logic_vector(6 downto 0);
      LMS2_BB_ADC1_DA_N          : in     std_logic_vector(6 downto 0);
      LMS2_BB_ADC1_DB_P          : in     std_logic_vector(6 downto 0);
      LMS2_BB_ADC1_DB_N          : in     std_logic_vector(6 downto 0);
      FPGA_LMS2_BB_ADC1_RESET    : out    std_logic;
      
      -- 14-bit ADC#2 (Connected to LMS#2)
      LMS2_BB_ADC2_CLKOUT_P      : in     std_logic;
      LMS2_BB_ADC2_CLKOUT_N      : in     std_logic;
      LMS2_BB_ADC2_DA_P          : in     std_logic_vector(6 downto 0);
      LMS2_BB_ADC2_DA_N          : in     std_logic_vector(6 downto 0);
      LMS2_BB_ADC2_DB_P          : in     std_logic_vector(6 downto 0);
      LMS2_BB_ADC2_DB_N          : in     std_logic_vector(6 downto 0);
      FPGA_LMS2_BB_ADC2_RESET    : out    std_logic;
      
      -- 14-bit ADC#2 (Connected to LMS#3)
      LMS3_BB_ADC1_CLKOUT_P      : in     std_logic;
      LMS3_BB_ADC1_CLKOUT_N      : in     std_logic;
      LMS3_BB_ADC1_DA_P          : in     std_logic_vector(6 downto 0);
      LMS3_BB_ADC1_DA_N          : in     std_logic_vector(6 downto 0);
      LMS3_BB_ADC1_DB_P          : in     std_logic_vector(6 downto 0);
      LMS3_BB_ADC1_DB_N          : in     std_logic_vector(6 downto 0);
      FPGA_LMS3_BB_ADC1_RESET    : out    std_logic;
      
      -- 14-bit ADC#2 (Connected to LMS#3)
      LMS3_BB_ADC2_CLKOUT_P      : in     std_logic;
      LMS3_BB_ADC2_CLKOUT_N      : in     std_logic;
      LMS3_BB_ADC2_DA_P          : in     std_logic_vector(6 downto 0);
      LMS3_BB_ADC2_DA_N          : in     std_logic_vector(6 downto 0);
      LMS3_BB_ADC2_DB_P          : in     std_logic_vector(6 downto 0);
      LMS3_BB_ADC2_DB_N          : in     std_logic_vector(6 downto 0);
      FPGA_LMS3_BB_ADC2_RESET    : out    std_logic;
      
      
      -- ----------------------------------------------------------------------------
      -- Two 16-bit DAC
         --DAC #1
      CDCM_LMS2_BB_DAC1_REFC_P  : in     std_logic;     -- Reference clock for DAC sampling rate
      CDCM_LMS2_BB_DAC1_REFC_N  : in     std_logic;
      FPGA_LMS2_BB_DAC1_CLK_P    : out    std_logic;     --  Differential clock for DAC
      FPGA_LMS2_BB_DAC1_CLK_N    : out    std_logic;
      LMS2_BB_DAC1_B_P           : out    std_logic_vector(15 downto 0);   -- DAC data bits
      LMS2_BB_DAC1_B_N           : out    std_logic_vector(15 downto 0);
      LMS2_BB_DAC1_SELIQ_P       : out    std_logic;     -- SELIQN low and SELIQP high -  data to the I-DAC outputs
      LMS2_BB_DAC1_SELIQ_N       : out    std_logic;     -- SELIQP low and SELIQN high -  data to the Q-DAC outputs
      LMS2_BB_DAC1_PD            : out    std_logic;-- := '0';-- '1' -  power-down, 0 -  normal operation.
      --LMS2_BB_DAC1_TORB          : out    std_logic;     -- '1' - complement input format,  '0' - binary input format
      --LMS2_BB_DAC1_XOR_P         : out    std_logic;     -- XORN high and XORP low - data stream unchanged, 
      --LMS2_BB_DAC1_XOR_N         : out    std_logic;     -- XORN low and XORP high -  invert the DAC input data
         -- DAC #2   
      CDCM_LMS2_BB_DAC2_REFC_P  : in     std_logic;     -- Reference clock for DAC sampling rate
      CDCM_LMS2_BB_DAC2_REFC_N  : in     std_logic;
      FPGA_LMS2_BB_DAC2_CLK_P    : out    std_logic;     --  Differential clock for DAC
      FPGA_LMS2_BB_DAC2_CLK_N    : out    std_logic;
      LMS2_BB_DAC2_B_P           : out    std_logic_vector(15 downto 0);   -- DAC data bits
      LMS2_BB_DAC2_B_N           : out    std_logic_vector(15 downto 0);
      LMS2_BB_DAC2_SELIQ_P       : out    std_logic;     -- SELIQN low and SELIQP high -  data to the I-DAC outputs
      LMS2_BB_DAC2_SELIQ_N       : out    std_logic;     -- SELIQP low and SELIQN high -  data to the Q-DAC outputs
      LMS2_BB_DAC2_PD            : out    std_logic;--:= '0'; -- '1' -  power-down, 0 -  normal operation.   
      --LMS2_BB_DAC2_TORB          : out    std_logic;     -- '1' - complement input format,  '0' - binary input format
      --LMS2_BB_DAC2_XOR_P         : out    std_logic;     -- XORN high and XORP low - data stream unchanged, 
      --LMS2_BB_DAC2_XOR_N         : out    std_logic;     -- XORN low and XORP high -  invert the DAC input data
      -- ----------------------------------------------------------------------------
      -- Clock generator
      CDCM_RESET_N        : out std_logic;
      CDCM_SYNCN          : out std_logic;
      CDCM_STATUS0        : in  std_logic;
      CDCM_STATUS1        : in  std_logic;
      
      LMS2_RX1_LNA_SD       : out    std_logic;-- := '0';
      LMS2_RX2_LNA_SD       : out    std_logic;-- := '0';
      LMS2_TX1_1_EN         : out    std_logic;-- := '0';
      LMS2_TX2_1_EN         : out    std_logic;-- := '0';

      PD_LMS2_BB_ADC1_DRV   : out    std_logic;-- := '0';
      PD_LMS2_BB_ADC2_DRV   : out    std_logic;-- := '0';
      PD_LMS3_BB_ADC1_DRV   : out    std_logic;-- := '0';
      PD_LMS3_BB_ADC2_DRV   : out    std_logic;-- := '0';
      
      RFSW_LMS1_RX1_V1      : out    std_logic;
      RFSW_LMS1_RX2_V1      : out    std_logic;
      RFSW_LMS1_TX1_V1      : out    std_logic;
      RFSW_LMS1_TX2_V1      : out    std_logic;
      
      RFSW_LMS2_RX1C_V1     : out    std_logic;
      RFSW_LMS2_RX2IN_V1    : out    std_logic;
      RFSW_LMS2_TRX1_V1     : out    std_logic;
      RFSW_LMS2_TRX1T_V1    : out    std_logic;
      
      RFSW_LMS2_RX1IN_V1    : out    std_logic;
      RFSW_LMS2_RX2C_V1     : out    std_logic;
      RFSW_LMS2_TRX2_V1     : out    std_logic;
      RFSW_LMS2_TRX2T_V1    : out    std_logic;
      
      RFSW1_LMS3_RX1_V1     : out    std_logic;
      RFSW1_LMS3_RX2_V1     : out    std_logic;
      
      -- ----------------------------------------------------------------------------
      -- External communication interfaces
         -- FPGA_SPI0
      FPGA_SPI0_SCLK             : out    std_logic;
      FPGA_SPI0_MOSI             : out    std_logic;
      FPGA_SPI0_LMS1_MISO        : in     std_logic;
      FPGA_SPI0_LMS2_MISO        : in     std_logic;
      FPGA_SPI0_LMS3_MISO        : in     std_logic;
      FPGA_SPI0_LMS1_SS          : out    std_logic;
      FPGA_SPI0_LMS2_SS          : out    std_logic;
      FPGA_SPI0_LMS3_SS          : out    std_logic;
         -- FPGA_SPI1
      FPGA_SPI1_SCLK             : out    std_logic;
      FPGA_SPI1_MOSI             : out    std_logic;
      FPGA_SPI1_MISO             : in     std_logic;
      FPGA_SPI1_MISO_BB_ADC      : in     std_logic;
      FPGA_SPI1_LMS2_BB_ADC1_SS  : out    std_logic; 
      FPGA_SPI1_LMS2_BB_ADC2_SS  : out    std_logic;
      FPGA_SPI1_LMS3_BB_ADC1_SS  : out    std_logic; 
      FPGA_SPI1_LMS3_BB_ADC2_SS  : out    std_logic;
      FPGA_SPI1_CDCM_SS          : out    std_logic; 
         -- FPGA_SPI2
      FPGA_SPI2_SCLK             : out    std_logic;
      FPGA_SPI2_MOSI             : out    std_logic;
      FPGA_SPI2_XO_DAC_SS        : out    std_logic;
      FPGA_SPI2_ADF_SS           : out    std_logic;
      FPGA_SPI2_LMS1_TX1DAC_SS   : out    std_logic;
      FPGA_SPI2_LMS1_TX2DAC_SS   : out    std_logic;
      FPGA_SPI2_XO_25_DAC_SS     : out    std_logic;
      FPGA_SPI2_XO_20_DAC_SS     : out    std_logic;
         -- FPGA I2C
      FPGA_I2C_SCL               : inout  std_logic;
      FPGA_I2C_SDA               : inout  std_logic;
      -- ----------------------------------------------------------------------------
      -- General periphery
         -- Switch
      FPGA_SW           : in     std_logic_vector(3 downto 0);
         -- LEDs          
      FPGA_LED1_R       : out    std_logic;
      FPGA_LED1_G       : out    std_logic;
      FPGA_LED2_R       : out    std_logic;
      FPGA_LED2_G       : out    std_logic;
      FPGA_LED3_R       : out    std_logic;
      FPGA_LED3_G       : out    std_logic;
      FPGA_LED4_R       : out    std_logic;
      FPGA_LED4_G       : out    std_logic;
         -- Temperature sensor
      LM75_OS           : in     std_logic;
         -- Fan control 
      FAN_CTRL          : out    std_logic := '1';
         -- XO tune
      XO_VC_FPGA        : out    std_logic := '0';
         --GNSS
      GNSS_UART_TX      : in     std_logic;
      GNSS_UART_RX      : out    std_logic := '1';
      GNSS_TPULSE       : in     std_logic;
         -- PPS
      PPS_OUT           : out    std_logic;
      PPS_IN_EXT        : out    std_logic;
      -- EXT SYNC
      EXT_SYNC_OUT      : out    std_logic;
      EXT_SYNC_IN       : in     std_logic;
         -- ADF 
      ADF_MUXOUT        : in     std_logic;
         -- PMODs
       PMOD_B_PIN1      : inout std_logic;
       PMOD_B_PIN2      : inout std_logic;
       PMOD_B_PIN3      : inout std_logic;
       PMOD_B_PIN4      : inout std_logic;
                        
       PMOD_B_PIN7      : inout std_logic;
       PMOD_B_PIN8      : inout std_logic;
       PMOD_B_PIN9      : inout std_logic;
       PMOD_B_PIN10     : inout std_logic;
                        
       PMOD_A_PIN1      : inout std_logic;
       PMOD_A_PIN2      : inout std_logic;
       PMOD_A_PIN3      : inout std_logic;
       PMOD_A_PIN4      : inout std_logic;
                        
       PMOD_A_PIN7      : inout std_logic;
       PMOD_A_PIN8      : inout std_logic;
       PMOD_A_PIN9      : inout std_logic;
       PMOD_A_PIN10     : inout std_logic; 
       
         -- Bill Of material and hardware version 
      BOM_VER           : in     std_logic_vector(3 downto 0);
      HW_VER            : in     std_logic_vector(3 downto 0);
      DUMMY_PIN         : inout  std_logic

   );
end lms7_trx_top;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of lms7_trx_top is
--declare signals,  components here

constant c_S0_DATA_WIDTH            : integer := 32;     -- Stream data width
constant c_S1_DATA_WIDTH            : integer := 32;     -- Stream data width
constant c_S2_DATA_WIDTH            : integer := 32;     -- Stream data width
constant c_C0_DATA_WIDTH            : integer := 32;     -- Control data width
constant c_H2F_S0_0_RWIDTH          : integer := 128;    -- Host->FPGA stream, FIFO rd width, FIFO number - 0
constant c_H2F_S1_0_RWIDTH          : integer := 128;    -- Host->FPGA stream, FIFO rd width, FIFO number - 0
constant c_H2F_S2_0_RWIDTH          : integer := 128;    -- Host->FPGA stream, FIFO rd width, FIFO number - 0
constant c_H2F_S0_1_RWIDTH          : integer := 64;     -- Host->FPGA stream, FIFO rd width, FIFO number - 1
constant c_H2F_S1_1_RWIDTH          : integer := 64;     -- Host->FPGA stream, FIFO rd width, FIFO number - 1 
constant c_H2F_S2_1_RWIDTH          : integer := 64;     -- Host->FPGA stream, FIFO rd width, FIFO number - 1  
constant c_F2H_S0_WWIDTH            : integer := 64;     -- FPGA->Host stream, FIFO wr width
constant c_F2H_S1_WWIDTH            : integer := 128;     -- FPGA->Host stream, FIFO wr width
constant c_F2H_S2_WWIDTH            : integer := 128;     -- FPGA->Host stream, FIFO wr width
constant c_H2F_C0_RWIDTH            : integer := 32;     -- Host->FPGA control, rd width
constant c_F2H_C0_WWIDTH            : integer := 32;     -- FPGA->Host control, wr width 

constant c_SPI0_FPGA_SS_NR          : integer := 0;
constant c_SPI0_LMS1_SS_NR          : integer := 1;
constant c_SPI0_LMS2_SS_NR          : integer := 2;
constant c_SPI0_LMS3_SS_NR          : integer := 3;

constant c_SPI1_LMS2_BB_ADC1_SS_NR  : integer := 0;
constant c_SPI1_LMS2_BB_ADC2_SS_NR  : integer := 1;
constant c_SPI1_LMS3_BB_ADC1_SS_NR  : integer := 2;
constant c_SPI1_LMS3_BB_ADC2_SS_NR  : integer := 3;
constant c_SPI1_CDCM_SS_NR          : integer := 4;

constant c_SPI2_XO_DAC_SS_NR        : integer := 0;
constant c_SPI2_ADF_SS_NR           : integer := 1;  
constant c_SPI2_TX1_DAC             : integer := 2;
constant c_SPI2_TX2_DAC             : integer := 3;

     

signal reset_n                   : std_logic;
signal reset_n_lmk_clk           : std_logic;
signal reset_n_clk100_fpga       : std_logic;
signal reset_n_si_clk0           : std_logic;

signal lms2_bb_adc1_clkout       : std_logic;
signal lms2_bb_adc1_clkout_global: std_logic;
signal lms2_bb_adc1_da           : std_logic_vector(6 downto 0);
signal lms2_bb_adc1_db           : std_logic_vector(6 downto 0);

signal lms2_bb_adc2_clkout       : std_logic;
signal lms2_bb_adc2_clkout_global: std_logic;
signal lms2_bb_adc2_da           : std_logic_vector(6 downto 0);
signal lms2_bb_adc2_db           : std_logic_vector(6 downto 0);

signal lms3_bb_adc1_clkout       : std_logic;
signal lms3_bb_adc1_clkout_global: std_logic;
signal lms3_bb_adc1_da           : std_logic_vector(6 downto 0);
signal lms3_bb_adc1_db           : std_logic_vector(6 downto 0);

signal lms3_bb_adc2_clkout       : std_logic;
signal lms3_bb_adc2_clkout_global: std_logic;
signal lms3_bb_adc2_da           : std_logic_vector(6 downto 0);
signal lms3_bb_adc2_db           : std_logic_vector(6 downto 0);

--inst0 (NIOS CPU instance)
signal inst0_exfifo_if_rd        : std_logic;
signal inst0_exfifo_of_d         : std_logic_vector(c_C0_DATA_WIDTH-1 downto 0);
signal inst0_exfifo_of_wr        : std_logic;
signal inst0_exfifo_of_rst       : std_logic;
signal inst0_gpo                 : std_logic_vector(7 downto 0);
signal inst0_lms_ctr_gpio        : std_logic_vector(3 downto 0);
signal inst0_spi_0_MISO          : std_logic;
signal inst0_spi_0_MOSI          : std_logic;
signal inst0_spi_0_SCLK          : std_logic;
signal inst0_spi_0_SS_n          : std_logic_vector(3 downto 0);
signal inst0_spi_1_MOSI          : std_logic;
signal inst0_spi_1_SCLK          : std_logic;
signal inst0_spi_1_SS_n          : std_logic_vector(5 downto 0);
signal inst0_spi_2_MISO          : std_logic;
signal inst0_spi_2_MOSI          : std_logic;
signal inst0_spi_2_SCLK          : std_logic;
signal inst0_spi_2_SS_n          : std_logic_vector(3 downto 0);
signal inst0_pll_stat            : std_logic_vector(9 downto 0);
signal inst0_pll_rst             : std_logic_vector(31 downto 0);
signal inst0_pll_rcfg_to_pll_0   : std_logic_vector(63 downto 0);
signal inst0_pll_rcfg_to_pll_1   : std_logic_vector(63 downto 0);
signal inst0_pll_rcfg_to_pll_2   : std_logic_vector(63 downto 0);
signal inst0_pll_rcfg_to_pll_3   : std_logic_vector(63 downto 0);
signal inst0_pll_rcfg_to_pll_4   : std_logic_vector(63 downto 0);
signal inst0_pll_rcfg_to_pll_5   : std_logic_vector(63 downto 0);
signal inst0_avmm_s0_readdata    : std_logic_vector(31 downto 0);
signal inst0_avmm_s0_waitrequest : std_logic;
signal inst0_avmm_s1_readdata    : std_logic_vector(31 downto 0);
signal inst0_avmm_s1_waitrequest : std_logic;
signal inst0_avmm_m0_address     : std_logic_vector(7 downto 0);
signal inst0_avmm_m0_read        : std_logic;
signal inst0_avmm_m0_write       : std_logic;
signal inst0_avmm_m0_writedata   : std_logic_vector(7 downto 0);
signal inst0_avmm_m0_clk_clk     : std_logic;
signal inst0_avmm_m0_reset_reset : std_logic;
signal inst0_from_fpgacfg_0      : t_FROM_FPGACFG;
signal inst0_from_fpgacfg_mod_0  : t_FROM_FPGACFG;
signal inst0_to_fpgacfg_0        : t_TO_FPGACFG;
signal inst0_from_fpgacfg_1      : t_FROM_FPGACFG;
signal inst0_from_fpgacfg_mod_1  : t_FROM_FPGACFG;
signal inst0_to_fpgacfg_1        : t_TO_FPGACFG;
signal inst0_from_fpgacfg_2      : t_FROM_FPGACFG;
signal inst0_from_fpgacfg_mod_2  : t_FROM_FPGACFG;
signal inst0_to_fpgacfg_2        : t_TO_FPGACFG;
signal inst0_from_pllcfg         : t_FROM_PLLCFG;
signal inst0_to_pllcfg           : t_TO_PLLCFG;
signal inst0_from_tstcfg         : t_FROM_TSTCFG;
signal inst0_to_tstcfg           : t_TO_TSTCFG;
signal inst0_from_txtspcfg_0     : t_FROM_TXTSPCFG;
signal inst0_to_txtspcfg_0       : t_TO_TXTSPCFG;
signal inst0_from_txtspcfg_1     : t_FROM_TXTSPCFG;
signal inst0_to_txtspcfg_1       : t_TO_TXTSPCFG;
--signal inst0_from_rxtspcfg       : t_FROM_RXTSPCFG;
--signal inst0_to_rxtspcfg         : t_TO_RXTSPCFG;
signal inst0_from_rxtspcfg_2a, inst0_from_rxtspcfg_2b : t_FROM_RXTSPCFG; -- B.J.
signal inst0_to_rxtspcfg_2a, inst0_to_rxtspcfg_2b : t_TO_RXTSPCFG; -- B.J.

signal inst0_from_periphcfg      : t_FROM_PERIPHCFG;
signal inst0_to_periphcfg        : t_TO_PERIPHCFG;
signal inst0_from_tamercfg       : t_FROM_TAMERCFG;
signal inst0_to_tamercfg         : t_TO_TAMERCFG;
signal inst0_from_gnsscfg        : t_FROM_GNSSCFG;
signal inst0_to_gnsscfg          : t_TO_GNSSCFG;
signal inst0_to_memcfg           : t_TO_MEMCFG;
signal inst0_from_memcfg         : t_FROM_MEMCFG;
signal inst0_from_cdcmcfg        : t_FROM_CDCMCFG;
signal inst0_pll_from_axim       : t_FROM_AXIM_32x32;
signal inst0_pll_axi_sel         : std_logic_vector(3 downto 0);
signal inst0_pll_axi_resetn_out  : std_logic_vector(0 downto 0);
signal inst0_smpl_cmp_en         : std_logic_vector(3 downto 0);
signal inst0_smpl_cmp_status     : std_logic_vector(1 downto 0);
signal inst0_smpl_cmp_sel        : std_logic_vector(0 downto 0);

--test_out
signal inst0_pll_c0              : std_logic;
signal inst0_pll_c1              : std_logic;
signal inst0_pll_locked          : std_logic;


--inst1 (pll_top instance)
signal inst1_lms1_txpll_c0             : std_logic;
signal inst1_lms1_txpll_c1             : std_logic;
signal inst1_lms1_txpll_locked         : std_logic;
signal inst1_lms1_txpll_rcnfg_from_pll : std_logic_vector(63 downto 0);
signal inst1_lms1_rxpll_c0             : std_logic;
signal inst1_lms1_rxpll_c1             : std_logic;
signal inst1_lms1_rxpll_locked         : std_logic;
signal inst1_lms1_rxpll_rcnfg_from_pll : std_logic_vector(63 downto 0);
signal inst1_lms1_smpl_cmp_en          : std_logic;
signal inst1_lms1_smpl_cmp_cnt         : std_logic_vector(15 downto 0);

signal inst1_lms2_txpll_c1             : std_logic;
signal inst1_lms2_txpll_c2             : std_logic;
signal inst1_lms2_txpll_locked         : std_logic;
signal inst1_lms2_txpll_rcnfg_from_pll : std_logic_vector(63 downto 0);
signal inst1_lms2_rxpll_c0             : std_logic;
signal inst1_lms2_rxpll_c1             : std_logic;
signal inst1_lms2_rxpll_locked         : std_logic;
signal inst1_lms2_rxpll_rcnfg_from_pll : std_logic_vector(63 downto 0);
signal inst1_lms2_smpl_cmp_en          : std_logic;
signal inst1_lms2_smpl_cmp_cnt         : std_logic_vector(15 downto 0);

signal inst1_pll_0_c0                  : std_logic;
signal inst1_pll_0_c0_pin              : std_logic;
signal inst1_pll_0_c1                  : std_logic;
signal inst1_pll_0_locked              : std_logic;
signal inst1_pll_0_rcnfg_from_pll      : std_logic_vector(63 downto 0);

signal inst1_pll_1_c0                  : std_logic;
signal inst1_pll_1_c1                  : std_logic;
signal inst1_pll_1_c2                  : std_logic;
signal inst1_pll_1_locked              : std_logic;
signal inst1_rcnfg_0_mgmt_read         : std_logic;
signal inst1_rcnfg_0_mgmt_write        : std_logic;
signal inst1_rcnfg_0_mgmt_address      : std_logic_vector(8 downto 0);
signal inst1_rcnfg_0_mgmt_writedata    : std_logic_vector(31 downto 0);

signal inst1_rcnfg_1_mgmt_read         : std_logic;
signal inst1_rcnfg_1_mgmt_write        : std_logic;
signal inst1_rcnfg_1_mgmt_address      : std_logic_vector(8 downto 0);
signal inst1_rcnfg_1_mgmt_writedata    : std_logic_vector(31 downto 0);

signal inst1_rcnfg_to_axim             : t_TO_AXIM_32x32;


--inst2
constant c_H2F_S0_0_RDUSEDW_WIDTH: integer := FIFO_WORDS_TO_Nbits(g_HOST2FPGA_S0_0_SIZE/(c_H2F_S0_0_RWIDTH/8),true);
constant c_H2F_S0_1_RDUSEDW_WIDTH: integer := FIFO_WORDS_TO_Nbits(g_HOST2FPGA_S0_1_SIZE/(c_H2F_S0_1_RWIDTH/8),true);
constant c_H2F_S1_0_RDUSEDW_WIDTH: integer := FIFO_WORDS_TO_Nbits(g_HOST2FPGA_S1_0_SIZE/(c_H2F_S1_0_RWIDTH/8),true);
constant c_H2F_S1_1_RDUSEDW_WIDTH: integer := FIFO_WORDS_TO_Nbits(g_HOST2FPGA_S1_1_SIZE/(c_H2F_S1_1_RWIDTH/8),true);
constant c_H2F_S2_0_RDUSEDW_WIDTH: integer := FIFO_WORDS_TO_Nbits(g_HOST2FPGA_S2_0_SIZE/(c_H2F_S2_0_RWIDTH/8),true);
constant c_H2F_S2_1_RDUSEDW_WIDTH: integer := FIFO_WORDS_TO_Nbits(g_HOST2FPGA_S2_1_SIZE/(c_H2F_S2_1_RWIDTH/8),true);
constant c_F2H_S0_WRUSEDW_WIDTH  : integer := FIFO_WORDS_TO_Nbits(g_FPGA2HOST_S0_0_SIZE/(c_F2H_S0_WWIDTH/8),true);
constant c_F2H_S1_WRUSEDW_WIDTH  : integer := FIFO_WORDS_TO_Nbits(g_FPGA2HOST_S1_0_SIZE/(c_F2H_S1_WWIDTH/8),true);
constant c_F2H_S2_WRUSEDW_WIDTH  : integer := FIFO_WORDS_TO_Nbits(g_FPGA2HOST_S2_0_SIZE/(c_F2H_S2_WWIDTH/8),true);
constant c_H2F_C0_RDUSEDW_WIDTH  : integer := FIFO_WORDS_TO_Nbits(g_HOST2FPGA_C0_0_SIZE/(c_H2F_C0_RWIDTH/8),true);
constant c_F2H_C0_WRUSEDW_WIDTH  : integer := FIFO_WORDS_TO_Nbits(g_FPGA2HOST_C0_0_SIZE/(c_F2H_C0_WWIDTH/8),true);
signal inst2_F2H_S0_wfull        : std_logic;
signal inst2_F2H_S0_wrusedw      : std_logic_vector(c_F2H_S0_WRUSEDW_WIDTH-1 downto 0);
signal inst2_F2H_S1_wfull        : std_logic;
signal inst2_F2H_S1_wrusedw      : std_logic_vector(c_F2H_S1_WRUSEDW_WIDTH-1 downto 0);
signal inst2_F2H_S2_wfull        : std_logic;
signal inst2_F2H_S2_wrusedw      : std_logic_vector(c_F2H_S2_WRUSEDW_WIDTH-1 downto 0);
signal inst2_H2F_C0_rdata        : std_logic_vector(c_H2F_C0_RWIDTH-1 downto 0);
signal inst2_H2F_C0_rempty       : std_logic;
signal inst2_F2H_C0_wfull        : std_logic;
signal inst2_s0_dma_en           : std_logic;
signal inst2_H2F_S0_0_rdata      : std_logic_vector(c_H2F_S0_0_RWIDTH-1 downto 0);
signal inst2_H2F_S0_0_rempty     : std_logic;
signal inst2_H2F_S0_0_rdusedw    : std_logic_vector(c_H2F_S0_0_RDUSEDW_WIDTH-1 downto 0);
signal inst2_H2F_S0_1_rdata      : std_logic_vector(c_H2F_S0_1_RWIDTH-1 downto 0);
signal inst2_H2F_S0_1_rempty     : std_logic;
signal inst2_H2F_S0_1_rdusedw    : std_logic_vector(c_H2F_S0_1_RDUSEDW_WIDTH-1 downto 0);
signal inst2_s1_dma_en           : std_logic;
signal inst2_H2F_S1_0_rdata      : std_logic_vector(c_H2F_S1_0_RWIDTH-1 downto 0);
signal inst2_H2F_S1_0_rempty     : std_logic;
signal inst2_H2F_S1_0_rdusedw    : std_logic_vector(c_H2F_S1_0_RDUSEDW_WIDTH-1 downto 0);
signal inst2_H2F_S1_1_rdata      : std_logic_vector(c_H2F_S1_1_RWIDTH-1 downto 0);
signal inst2_H2F_S1_1_rempty     : std_logic;
signal inst2_H2F_S1_1_rdusedw    : std_logic_vector(c_H2F_S1_1_RDUSEDW_WIDTH-1 downto 0);
signal inst2_s2_dma_en           : std_logic;
signal inst2_H2F_S2_0_rdata      : std_logic_vector(c_H2F_S2_0_RWIDTH-1 downto 0);
signal inst2_H2F_S2_0_rempty     : std_logic;
signal inst2_H2F_S2_0_rdusedw    : std_logic_vector(c_H2F_S2_0_RDUSEDW_WIDTH-1 downto 0);
signal inst2_H2F_S2_1_rdata      : std_logic_vector(c_H2F_S2_1_RWIDTH-1 downto 0);
signal inst2_H2F_S2_1_rempty     : std_logic;
signal inst2_H2F_S2_1_rdusedw    : std_logic_vector(c_H2F_S2_1_RDUSEDW_WIDTH-1 downto 0);
signal inst2_F2H_S0_open         : std_logic;
signal inst2_F2H_S1_open         : std_logic;
signal inst2_F2H_S2_open         : std_logic;


				

--inst5
signal inst5_busy : std_logic;

--inst6
signal inst6_rx_data_valid          : std_logic;
signal inst6_rx_data                : std_logic_vector(g_LMS_DIQ_WIDTH*4-1 downto 0);
signal inst6_tx_fifo_0_wrfull       : std_logic;
signal inst6_tx_fifo_0_wrusedw      : std_logic_vector(8 downto 0);
signal inst6_tx_fifo_1_wrfull       : std_logic;
signal inst6_tx_fifo_1_wrusedw      : std_logic_vector(8 downto 0); 
signal inst6_rx_smpl_cmp_done       : std_logic;
signal inst6_rx_smpl_cmp_err        : std_logic; 
signal inst6_sdout                  : std_logic;
signal inst6_tx_ant_en              : std_logic; 
signal inst6_rx_smpl_cnt_en         : std_logic;
signal inst6_rx_smpl_cmp_start      : std_logic;
signal LMS1_DIQ1_INT                : std_logic_vector(g_LMS_DIQ_WIDTH-1 downto 0);
signal LMS1_DIQ1_11_DELAYED         : std_logic;

--inst7
--constant c_WFM_INFIFO_SIZE          : integer := FIFO_WORDS_TO_Nbits(g_WFM_INFIFO_SIZE/(c_S0_DATA_WIDTH/8),true);
signal inst7_tx_pct_loss_flg        : std_logic;
signal inst7_tx_txant_en            : std_logic;
signal inst7_tx_in_pct_full         : std_logic;
signal inst7_rx_pct_fifo_wrreq      : std_logic;
signal inst7_rx_pct_fifo_wdata      : std_logic_vector(63 downto 0);
signal inst7_to_tstcfg_from_rxtx    : t_TO_TSTCFG_FROM_RXTX;
signal inst7_rx_pct_fifo_aclrn_req  : std_logic;
signal inst7_tx_in_pct_rdreq        : std_logic;
signal inst7_tx_in_pct_reset_n_req  : std_logic;
signal inst7_wfm_in_pct_reset_n_req : std_logic;
signal inst7_wfm_in_pct_rdreq       : std_logic;
signal inst7_wfm_phy_clk            : std_logic;
signal inst7_tx_smpl_fifo_wrreq     : std_logic;
signal inst7_tx_smpl_fifo_data      : std_logic_vector(127 downto 0);

--inst8
signal inst8_rx_data_valid          : std_logic;
signal inst8_rx_data                : std_logic_vector(g_LMS_DIQ_WIDTH*4-1 downto 0);
signal inst8_tx_fifo_0_wrfull       : std_logic;
signal inst8_tx_fifo_0_wrusedw      : std_logic_vector(8 downto 0);
signal inst8_tx_fifo_1_wrfull       : std_logic;
signal inst8_tx_fifo_1_wrusedw      : std_logic_vector(8 downto 0); 
signal inst8_rx_smpl_cmp_done       : std_logic;
signal inst8_rx_smpl_cmp_err        : std_logic;
signal inst8_sdout                  : std_logic; 
signal inst8_tx_ant_en              : std_logic; 
signal inst8_rx_smpl_cnt_en         : std_logic;
signal inst8_rx_smpl_cmp_start      : std_logic;

--inst9
signal inst9_tx_pct_loss_flg        : std_logic;
signal inst9_tx_txant_en            : std_logic;
signal inst9_tx_in_pct_full         : std_logic;
signal inst9_rx_pct_fifo_wrreq      : std_logic;
signal inst9_rx_pct_fifo_wdata      : std_logic_vector(c_F2H_S1_WWIDTH-1 downto 0);
signal inst9_to_tstcfg_from_rxtx    : t_TO_TSTCFG_FROM_RXTX;
signal inst9_rx_pct_fifo_aclrn_req  : std_logic;
signal inst9_tx_in_pct_rdreq        : std_logic;
signal inst9_tx_in_pct_reset_n_req  : std_logic;
signal inst9_wfm_in_pct_reset_n_req : std_logic;
signal inst9_wfm_in_pct_rdreq       : std_logic;
signal inst9_wfm_phy_clk            : std_logic;
signal inst9_tx_smpl_fifo_wrreq     : std_logic;
signal inst9_tx_smpl_fifo_data      : std_logic_vector(127 downto 0);

--inst10
signal inst10_adc1_rx_data_valid    : std_logic;
signal inst10_adc1_rx_data          : std_logic_vector(14*4-1 downto 0);
signal inst10_adc1_tx_wrfull        : std_logic;
signal inst10_adc1_tx_wrusedw       : std_logic_vector(8 downto 0); 
signal inst10_adc1_data_ch_a        : std_logic_vector(g_EXT_ADC_D_WIDTH-1 downto 0);
signal inst10_adc1_data_ch_b        : std_logic_vector(g_EXT_ADC_D_WIDTH-1 downto 0);

signal inst10_adc2_rx_data_valid    : std_logic;
signal inst10_adc2_rx_data          : std_logic_vector(14*4-1 downto 0);
signal inst10_adc2_tx_wrfull        : std_logic;
signal inst10_adc2_tx_wrusedw       : std_logic_vector(8 downto 0); 
signal inst10_adc2_data_ch_a        : std_logic_vector(g_EXT_ADC_D_WIDTH-1 downto 0);
signal inst10_adc2_data_ch_b        : std_logic_vector(g_EXT_ADC_D_WIDTH-1 downto 0); 

signal inst10_adc3_rx_data_valid    : std_logic;
signal inst10_adc3_rx_data          : std_logic_vector(14*4-1 downto 0);
signal inst10_adc3_tx_wrfull        : std_logic;
signal inst10_adc3_tx_wrusedw       : std_logic_vector(8 downto 0); 
signal inst10_adc3_data_ch_a        : std_logic_vector(g_EXT_ADC_D_WIDTH-1 downto 0);
signal inst10_adc3_data_ch_b        : std_logic_vector(g_EXT_ADC_D_WIDTH-1 downto 0); 

signal inst10_adc4_rx_data_valid    : std_logic;
signal inst10_adc4_rx_data          : std_logic_vector(14*4-1 downto 0);
signal inst10_adc4_tx_wrfull        : std_logic;
signal inst10_adc4_tx_wrusedw       : std_logic_vector(8 downto 0); 
signal inst10_adc4_data_ch_a        : std_logic_vector(g_EXT_ADC_D_WIDTH-1 downto 0);
signal inst10_adc4_data_ch_b        : std_logic_vector(g_EXT_ADC_D_WIDTH-1 downto 0);

signal inst10_data                  : std_logic_vector(14*4-1 downto 0);
signal inst10_data_valid            : std_logic;

--inst11
signal inst11_tx_pct_loss_flg        : std_logic;
signal inst11_tx_txant_en            : std_logic;
signal inst11_tx_in_pct_full         : std_logic;
signal inst11_rx_pct_fifo_wrreq      : std_logic;
signal inst11_rx_pct_fifo_wdata      : std_logic_vector(c_F2H_S2_WWIDTH-1 downto 0);
signal inst11_rx_smpl_cmp_done       : std_logic;
signal inst11_rx_smpl_cmp_err        : std_logic;
signal inst11_to_tstcfg_from_rxtx    : t_TO_TSTCFG_FROM_RXTX;
signal inst11_rx_pct_fifo_aclrn_req  : std_logic;
signal inst11_tx_in_pct_rdreq        : std_logic;
signal inst11_tx_in_pct_reset_n_req  : std_logic;
signal inst11_wfm_in_pct_reset_n_req : std_logic;
signal inst11_wfm_in_pct_rdreq       : std_logic;
signal inst11_wfm_phy_clk            : std_logic;
signal inst11_tx_smpl_fifo_wrreq     : std_logic;
signal inst11_tx_smpl_fifo_data      : std_logic_vector(127 downto 0);

signal inst11_data                   : std_logic_vector(14*4-1 downto 0);
signal inst11_data_valid             : std_logic;


--inst12 
signal inst12_sdout                    : std_logic;
signal inst12_fpga_led_g               : std_logic;
signal inst12_fpga_led_r               : std_logic;
signal inst12_en                       : std_logic;
signal inst12_mm_rd_data               : std_logic_vector(7 downto 0);
signal inst12_mm_rd_datav              : std_logic;
signal inst12_mm_wait_req              : std_logic;
signal inst12_mm_irq                   : std_logic;
signal inst12_uart_tx                  : std_logic;
signal inst12_smpl_cnt_en              : std_logic;



signal inst12_tx0_wrfull               : std_logic;
signal inst12_tx0_wrusedw              : std_logic_vector(8 downto 0);
signal inst12_tx1_wrfull               : std_logic;
signal inst12_tx1_wrreq                : std_logic;
signal inst12_tx1_data                 : std_logic_vector(27 downto 0);
signal inst12_tx_src_sel               : std_logic_vector(1 downto 0);

--inst19
signal inst19_phy_clk                  : std_logic;
signal inst19_wfm_0_infifo_rdreq       : std_logic;
signal inst19_wfm_1_infifo_rdreq       : std_logic;
signal inst19_wfm_0_Aiq_h              : std_logic_vector(12 downto 0);
signal inst19_wfm_0_Aiq_l              : std_logic_vector(12 downto 0);
signal inst19_wfm_0_outfifo_reset_n    : std_logic;
signal inst19_wfm_0_outfifo_wrreq      : std_logic;
signal inst19_wfm_0_outfifo_data       : std_logic_vector(127 downto 0);

--inst20
signal inst20_phy_clk                  : std_logic;
signal inst20_wfm_0_infifo_rdreq       : std_logic;
signal inst20_wfm_1_infifo_rdreq       : std_logic;
signal inst20_wfm_0_Aiq_h              : std_logic_vector(12 downto 0);
signal inst20_wfm_0_Aiq_l              : std_logic_vector(12 downto 0);
signal inst20_wfm_0_outfifo_reset_n    : std_logic;
signal inst20_wfm_0_outfifo_wrreq      : std_logic;
signal inst20_wfm_0_outfifo_data       : std_logic_vector(127 downto 0);

signal CLK100_FPGA                     : std_logic;
signal CDCM_LMS2_BB_DAC2_REFC          : std_logic;


attribute DONT_TOUCH : string;
attribute KEEP_HIERARCHY : string;


--attribute DONT_TOUCH of inst0_cpu         : label is "TRUE";
--attribute DONT_TOUCH of inst1_pll_top     : label is "TRUE";
--attribute DONT_TOUCH of inst7_rxtx_top    : label is "TRUE";
--attribute DONT_TOUCH of inst6_lms7002_top : label is "TRUE";
--attribute KEEP_HIERARCHY of inst6_lms7002_top : label is "TRUE";

--attribute DONT_TOUCH of inst10_adc1_top   : label is "TRUE";
--attribute DONT_TOUCH of inst10_adc2_top   : label is "TRUE";
--attribute DONT_TOUCH of inst10_adc3_top   : label is "TRUE";
--attribute DONT_TOUCH of inst10_adc4_top   : label is "TRUE";

--attribute DONT_TOUCH of inst2_pcie_top    : label is "TRUE";

--attribute DONT_TOUCH of inst9_rxtx_top    : label is "TRUE";
--attribute DONT_TOUCH of inst11_rxtx_top   : label is "TRUE";


signal gpio_o : std_logic_vector(15 downto 0);
signal gpio_i : std_logic_vector(15 downto 0);
signal gpio_t : std_logic_vector(15 downto 0);

signal spi0_lms1_miso   : std_logic;
signal spi0_lms2_miso   : std_logic;

--attribute DONT_TOUCH of inst10_adc1_top   : label is "TRUE";
--attribute DONT_TOUCH of inst10_adc2_top   : label is "TRUE";
--attribute DONT_TOUCH of inst10_adc3_top   : label is "TRUE";
--attribute DONT_TOUCH of inst10_adc4_top   : label is "TRUE";

--attribute DONT_TOUCH of inst2_pcie_top    : label is "TRUE";

--attribute DONT_TOUCH of inst0_cpu         : label is "TRUE";
--attribute DONT_TOUCH of inst1_pll_top     : label is "TRUE";
--attribute DONT_TOUCH of inst7_rxtx_top    : label is "TRUE";


-- B.J.
component data_cap_buffer is
	port (	
	   --
      -- sample rate 61.44 MSps
      wclk0 : IN STD_LOGIC;  -- clk for xp_a,  clock is 122.88 MHz
		wclk1 : IN STD_LOGIC;  -- clk for yp_a,  clock is 122.88 MHz
		wclk2 : IN STD_LOGIC;  -- clk for x_a (from ext. ADC - 61.44 MHz)
		wclk3 : IN STD_LOGIC;  -- clk for xp_b,  clock is 122.88 MHz
		wclk4 : IN STD_LOGIC;  -- clk for yp_b,  clock is 122.88 MHz
		wclk5 : IN STD_LOGIC;  -- clk for x_b (from ext. ADC - 61.44 MHz)
      wclk6 : IN STD_LOGIC;  -- clk for x_a (from LMS#1)
		wclk7 : IN STD_LOGIC;  -- clk for x_b (from LMS#1)
		rdclk : IN STD_LOGIC;  
		clk : IN STD_LOGIC;
		reset_n : IN STD_LOGIC;
		
		--capture data
		ch_0_valid : IN STD_LOGIC; -- xp_a_valid 
		ch_0_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --xp_ai
		ch_0_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --xp_aq		
		ch_1_valid : IN STD_LOGIC;  --yp_a_valid
		ch_1_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --yp_ai
		ch_1_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --yp_aq
		ch_2_valid : IN STD_LOGIC;  --x_a_valid 
		ch_2_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --x_ai (LMS#3)
		ch_2_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --x_aq (LMS#3)
		ch_3_valid : IN STD_LOGIC;  --xp_b_valid
		ch_3_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --xp_bi
		ch_3_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --xp_bq		
		ch_4_valid : IN STD_LOGIC;  --yp_b_valid
		ch_4_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --yp_bi
		ch_4_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --yp_bq
		ch_5_valid : IN STD_LOGIC;  --x_b_valid
		ch_5_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --x_bi (LMS#3)
		ch_5_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --x_bq (LMS#3)
		ch_6_valid : IN STD_LOGIC;
		ch_6_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --x_ai (LMS#1) 
		ch_6_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --x_aq (LMS#1)
		ch_7_valid : IN STD_LOGIC;
		ch_7_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --x_bi (LMS#1) 
		ch_7_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0);  --x_bq (LMS#1)

		--capture control signals
		cap_en : IN STD_LOGIC;
		cap_cont_en : IN STD_LOGIC;
		cap_size : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		cap_done : OUT STD_LOGIC;		

		to_dma_reader         : out t_TO_DMA_READER;
		from_dma_reader       : in t_FROM_DMA_READER;

		test_data_en : IN STD_LOGIC := '0';
      lms3_monitoring : IN STD_LOGIC:= '1'
	);
end component data_cap_buffer;

signal xp_ai, xp_aq, xp_bi, xp_bq, x_ai_lms1, x_aq_lms1, x_ai_lms3, x_aq_lms3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal yp_ai, yp_aq, yp_bi, yp_bq, x_bi_lms1, x_bq_lms1, x_bi_lms3, x_bq_lms3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal xp_data_valid, x_data_valid_lms1, lms3_monitoring : STD_LOGIC;
signal cap_en, cap_cont_en, cap_resetn : STD_LOGIC;
signal cap_size : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal DPD_to_dma_reader  : t_TO_DMA_READER;
signal DPD_from_dma_reader  : t_FROM_DMA_READER;
signal pcie_bus_clk: std_logic;
signal inst0_to_rxtspcfg_3a : t_TO_RXTSPCFG;    -- B.J.
signal inst0_from_rxtspcfg_3a : t_FROM_RXTSPCFG;  -- B.J.
signal inst0_to_rxtspcfg_3b : t_TO_RXTSPCFG;    -- B.J.
signal inst0_from_rxtspcfg_3b : t_FROM_RXTSPCFG;   -- B.J.  
signal dpd_tx_en, dpd_capture_en, reset_n_soft: std_logic; --B.J.
signal inst0_from_fircfg_tx_a       : t_FROM_FIRCFG; -- B.J.
signal inst0_from_fircfg_tx_b       : t_FROM_FIRCFG; -- B.J.
signal inst0_from_fircfg_rx_a       : t_FROM_FIRCFG; -- B.J.
signal inst0_from_fircfg_rx_b       : t_FROM_FIRCFG; -- B.J.
      
-- end B.J.

begin

-- ----------------------------------------------------------------------------
-- Input buffers
-- ----------------------------------------------------------------------------

   -- Diffrential buffer for CLK100_FPGA
   IBUFDS_inst0 : IBUFDS
      generic map (
         DIFF_TERM      => FALSE, -- Differential Termination 
         IBUF_LOW_PWR   => TRUE,  -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
         IOSTANDARD     => "LVDS_25")
      port map (
         O  => clk100_fpga,       -- Buffer output
         I  => CLK100_FPGA_P,     -- Diff_p buffer input (connect directly to top-level port)
         IB => CLK100_FPGA_N      -- Diff_n buffer input (connect directly to top-level port)
      );
   
-- ----------------------------------------------------------------------------
-- ADC IO 
-- ----------------------------------------------------------------------------     
   -- Only one delay controller has to be instantiated   `
   IDELAYCTRL_inst : IDELAYCTRL
   port map (
      RDY      => open,             -- 1-bit output: Ready output
      REFCLK   => inst1_pll_0_c0,   -- 1-bit input: Reference clock input
      RST      => '0'               -- 1-bit input: Active high reset input
   );
   
   -- LMS2_RX1_BB_ADC1
   inst0_LMS2_RX1_BB_ADC1 : entity work.ADS4246_io
   port map(
      -- Connect directly to ADS4246 ports
      i_CLKOUT_P  => LMS2_BB_ADC1_CLKOUT_P,
      i_CLKOUT_N  => LMS2_BB_ADC1_CLKOUT_N,
      i_DA_P      => LMS2_BB_ADC1_DA_P,
      i_DA_N      => LMS2_BB_ADC1_DA_N,
      i_DB_P      => LMS2_BB_ADC1_DB_P,
      i_DB_N      => LMS2_BB_ADC1_DB_N,
      o_RESET     => FPGA_LMS2_BB_ADC1_RESET,
      -- Connect to FPGA logic
      clkout_bufr => lms2_bb_adc1_clkout,
      clkout_bufg => lms2_bb_adc1_clkout_global,
      reset       => inst0_gpo(0),
      da          => lms2_bb_adc1_da,
      db          => lms2_bb_adc1_db
      );

   -- LMS2_RX1_BB_ADC2
   inst0_LMS2_RX1_BB_ADC2 : entity work.ADS4246_io
   port map(
      -- Connect directly to ADS4246 ports
      i_CLKOUT_P  => LMS2_BB_ADC2_CLKOUT_P,
      i_CLKOUT_N  => LMS2_BB_ADC2_CLKOUT_N,
      i_DA_P      => LMS2_BB_ADC2_DA_P,
      i_DA_N      => LMS2_BB_ADC2_DA_N,
      i_DB_P      => LMS2_BB_ADC2_DB_P,
      i_DB_N      => LMS2_BB_ADC2_DB_N,
      o_RESET     => FPGA_LMS2_BB_ADC2_RESET,
      -- Connect to FPGA logic
      clkout_bufr => lms2_bb_adc2_clkout,
      clkout_bufg => lms2_bb_adc2_clkout_global,
      reset       => inst0_gpo(1),
      da          => lms2_bb_adc2_da,
      db          => lms2_bb_adc2_db
      );
      
   -- LMS3_RX1_BB_ADC1
   inst0_LMS3_RX1_BB_ADC1 : entity work.ADS4246_io
   port map(
      -- Connect directly to ADS4246 ports
      i_CLKOUT_P  => LMS3_BB_ADC1_CLKOUT_P,
      i_CLKOUT_N  => LMS3_BB_ADC1_CLKOUT_N,
      i_DA_P      => LMS3_BB_ADC1_DA_P,
      i_DA_N      => LMS3_BB_ADC1_DA_N,
      i_DB_P      => LMS3_BB_ADC1_DB_P,
      i_DB_N      => LMS3_BB_ADC1_DB_N,
      o_RESET     => FPGA_LMS2_BB_ADC1_RESET,
      -- Connect to FPGA logic
      clkout_bufr => lms3_bb_adc1_clkout,
      clkout_bufg => lms3_bb_adc1_clkout_global,
      reset       => inst0_gpo(2),
      da          => lms3_bb_adc1_da,
      db          => lms3_bb_adc1_db
      );
      
      
   -- LMS3_RX1_BB_ADC2
   inst0_LMS3_RX1_BB_ADC2 : entity work.ADS4246_io
   port map(
      -- Connect directly to ADS4246 ports
      i_CLKOUT_P  => LMS3_BB_ADC2_CLKOUT_P,
      i_CLKOUT_N  => LMS3_BB_ADC2_CLKOUT_N,
      i_DA_P      => LMS3_BB_ADC2_DA_P,
      i_DA_N      => LMS3_BB_ADC2_DA_N,
      i_DB_P      => LMS3_BB_ADC2_DB_P,
      i_DB_N      => LMS3_BB_ADC2_DB_N,
      o_RESET     => FPGA_LMS3_BB_ADC2_RESET,
      -- Connect to FPGA logic
      clkout_bufr => lms3_bb_adc2_clkout,
      clkout_bufg => lms3_bb_adc2_clkout_global,
      reset       => inst0_gpo(3),
      da          => lms3_bb_adc2_da,
      db          => lms3_bb_adc2_db
      );
      
      
-- ----------------------------------------------------------------------------
-- Reset logic
-- ----------------------------------------------------------------------------  
   -- Reset from FPGA pin. 
   reset_n <= not BOM_VER(3);
   
   -- Reset signal with synchronous removal to CLK100_FPGA clock domain, 
   sync_reg0 : entity work.sync_reg 
   port map(CLK100_FPGA, reset_n, '1', reset_n_clk100_fpga);
   
--   -- Reset signal with synchronous removal to SI_CLK0 clock domain, 
--   sync_reg1 : entity work.sync_reg 
--   port map(SI_CLK0, reset_n, '1', reset_n_si_clk0);
   
   -- Reset signal with synchronous removal to LMK_CLK clock domain, 
   sync_reg3 : entity work.sync_reg 
   port map(LMK1_CLK1, reset_n, '1', reset_n_lmk_clk); 
   
     
-- ----------------------------------------------------------------------------
-- NIOS CPU instance.
-- CPU is responsible for communication interfaces and control logic
-- ----------------------------------------------------------------------------   
   inst0_cpu : entity work.cpu_top
   generic map (
      FPGACFG_START_ADDR   => g_FPGACFG_START_ADDR,
      PLLCFG_START_ADDR    => g_PLLCFG_START_ADDR,
      TSTCFG_START_ADDR    => g_TSTCFG_START_ADDR,
      TXTSPCFG_START_ADDR  => g_TXTSPCFG_START_ADDR,
      RXTSPCFG_START_ADDR  => g_RXTSPCFG_START_ADDR,
      PERIPHCFG_START_ADDR => g_PERIPHCFG_START_ADDR,
      TAMERCFG_START_ADDR  => g_TAMERCFG_START_ADDR,
      GNSSCFG_START_ADDR   => g_GNSSCFG_START_ADDR,
      MEMCFG_START_ADDR    => g_MEMCFG_START_ADDR,
      RXTSPCFG_START_ADDR_3  => g_RXTSPCFG_START_ADDR_3, -- B.J.
      FIRCFG_TX => g_FIRCFG_TX_START_ADDR,  -- B.J. (for Transmitter side equaliser)
      FIRCFG_RX => g_FIRCFG_RX_START_ADDR   -- B.J. (for Receiver side equaliser)
   )
   port map(
      clk                        => CLK100_FPGA,
      reset_n                    => reset_n_clk100_fpga,
      -- Control data FIFO
      exfifo_if_d                => inst2_H2F_C0_rdata,
      exfifo_if_rd               => inst0_exfifo_if_rd, 
      exfifo_if_rdempty          => inst2_H2F_C0_rempty,
      exfifo_of_d                => inst0_exfifo_of_d, 
      exfifo_of_wr               => inst0_exfifo_of_wr, 
      exfifo_of_wrfull           => inst2_F2H_C0_wfull,
      exfifo_of_rst              => inst0_exfifo_of_rst, 
      -- SPI 0 
      spi_0_MISO                 => inst0_spi_0_MISO OR inst6_sdout OR inst12_sdout,
      spi_0_MOSI                 => inst0_spi_0_MOSI,
      spi_0_SCLK                 => inst0_spi_0_SCLK,
      spi_0_SS_n                 => inst0_spi_0_SS_n,
      -- SPI 1
      spi_1_MISO                 => FPGA_SPI1_MISO OR FPGA_SPI1_MISO_BB_ADC,
      spi_1_MOSI                 => inst0_spi_1_MOSI,
      spi_1_SCLK                 => inst0_spi_1_SCLK,
      spi_1_SS_n                 => inst0_spi_1_SS_n,
      -- SPI 1
      spi_2_MISO                 => '0',
      spi_2_MOSI                 => inst0_spi_2_MOSI,
      spi_2_SCLK                 => inst0_spi_2_SCLK,
      spi_2_SS_n                 => inst0_spi_2_SS_n,
      -- I2C
      i2c_scl                    => FPGA_I2C_SCL,
      i2c_sda                    => FPGA_I2C_SDA,
      -- Genral purpose I/O
      gpi                        => "00000000",--"0000" & FPGA_SW,
      gpo                        => inst0_gpo, 
      -- LMS7002 control 
      lms_ctr_gpio               => inst0_lms_ctr_gpio,
      -- VCTCXO tamer control
      vctcxo_tune_en             => inst12_en,
      vctcxo_irq                 => inst12_mm_irq,
      -- PLL reconfiguration
      pll_rst                    => inst0_pll_rst,
      pll_axi_resetn_out         => inst0_pll_axi_resetn_out,
      pll_from_axim              => inst0_pll_from_axim,
      pll_to_axim                => inst1_rcnfg_to_axim, 
      pll_axi_sel                => inst0_pll_axi_sel,
      pll_rcfg_from_pll_0        => inst1_lms1_txpll_rcnfg_from_pll,
      pll_rcfg_to_pll_0          => inst0_pll_rcfg_to_pll_0,
      pll_rcfg_from_pll_1        => inst1_lms1_rxpll_rcnfg_from_pll,
      pll_rcfg_to_pll_1          => inst0_pll_rcfg_to_pll_1,
      pll_rcfg_from_pll_2        => inst1_lms2_txpll_rcnfg_from_pll,
      pll_rcfg_to_pll_2          => inst0_pll_rcfg_to_pll_2,
      pll_rcfg_from_pll_3        => inst1_lms2_rxpll_rcnfg_from_pll,
      pll_rcfg_to_pll_3          => inst0_pll_rcfg_to_pll_3,
      pll_rcfg_from_pll_4        => inst1_pll_0_rcnfg_from_pll,
      pll_rcfg_to_pll_4          => inst0_pll_rcfg_to_pll_4,
      pll_rcfg_from_pll_5        => (others=>'0'),
      pll_rcfg_to_pll_5          => inst0_pll_rcfg_to_pll_5,
      -- Avalon Slave port 0
      avmm_s0_address            => inst1_rcnfg_0_mgmt_address,
      avmm_s0_read               => inst1_rcnfg_0_mgmt_read,
      avmm_s0_readdata           => inst0_avmm_s0_readdata, 
      avmm_s0_write              => inst1_rcnfg_0_mgmt_write,
      avmm_s0_writedata          => inst1_rcnfg_0_mgmt_writedata, 
      avmm_s0_waitrequest        => inst0_avmm_s0_waitrequest,
      -- Avalon Slave port 1
      avmm_s1_address            => inst1_rcnfg_1_mgmt_address,
      avmm_s1_read               => inst1_rcnfg_1_mgmt_read,
      avmm_s1_readdata           => inst0_avmm_s1_readdata,
      avmm_s1_write              => inst1_rcnfg_1_mgmt_write,
      avmm_s1_writedata          => inst1_rcnfg_1_mgmt_writedata, 
      avmm_s1_waitrequest        => inst0_avmm_s1_waitrequest,
      -- Avalon master
      avmm_m0_address            => inst0_avmm_m0_address,
      avmm_m0_read               => inst0_avmm_m0_read,
      avmm_m0_waitrequest        => inst12_mm_wait_req,
      avmm_m0_readdata           => inst12_mm_rd_data,
      avmm_m0_readdatavalid      => inst12_mm_rd_datav,
      avmm_m0_write              => inst0_avmm_m0_write,
      avmm_m0_writedata          => inst0_avmm_m0_writedata,
      avmm_m0_clk_clk            => inst0_avmm_m0_clk_clk,
      avmm_m0_reset_reset        => inst0_avmm_m0_reset_reset,
      -- Configuration registers
      from_cdcmcfg               => inst0_from_cdcmcfg,
      from_fpgacfg_0             => inst0_from_fpgacfg_0,
      to_fpgacfg_0               => inst0_to_fpgacfg_0,
      from_fpgacfg_1             => inst0_from_fpgacfg_1,
      to_fpgacfg_1               => inst0_to_fpgacfg_1,
      from_fpgacfg_2             => inst0_from_fpgacfg_2,
      to_fpgacfg_2               => inst0_to_fpgacfg_2,
      from_pllcfg                => inst0_from_pllcfg,
      to_pllcfg                  => inst0_to_pllcfg,
      from_tstcfg                => inst0_from_tstcfg,
      to_tstcfg                  => inst0_to_tstcfg,
      to_tstcfg_from_rxtx        => inst7_to_tstcfg_from_rxtx,
      from_txtspcfg_0            => inst0_from_txtspcfg_0,
      to_txtspcfg_0              => inst0_to_txtspcfg_0, 
      from_txtspcfg_1            => inst0_from_txtspcfg_1,
      to_txtspcfg_1              => inst0_to_txtspcfg_1, 

      --from_rxtspcfg              => inst0_from_rxtspcfg,
      --to_rxtspcfg                => inst0_to_rxtspcfg,
      from_rxtspcfg_2a              => inst0_from_rxtspcfg_2a, -- B.J.
      to_rxtspcfg_2a                => inst0_to_rxtspcfg_2a,
      from_rxtspcfg_2b              => inst0_from_rxtspcfg_2b,
      to_rxtspcfg_2b                => inst0_to_rxtspcfg_2b,          
      
      from_periphcfg             => inst0_from_periphcfg,
      to_periphcfg               => inst0_to_periphcfg,
      from_tamercfg              => inst0_from_tamercfg,
      to_tamercfg                => inst0_to_tamercfg,
      from_gnsscfg               => inst0_from_gnsscfg,
      to_gnsscfg                 => inst0_to_gnsscfg,
      to_memcfg                  => inst0_to_memcfg,
      from_memcfg                => inst0_from_memcfg,
      pll_c0                     => inst0_pll_c0,
      pll_c1                     => inst0_pll_c1,
      pll_locked                 => inst0_pll_locked,
      smpl_cmp_sel               => inst0_smpl_cmp_sel,
      smpl_cmp_en                => inst0_smpl_cmp_en, 
      smpl_cmp_status            => inst0_smpl_cmp_status,
      
      to_rxtspcfg_3a          => inst0_to_rxtspcfg_3a,   -- B.J.
      from_rxtspcfg_3a        => inst0_from_rxtspcfg_3a, -- B.J.
      to_rxtspcfg_3b          => inst0_to_rxtspcfg_3b,   -- B.J.
      from_rxtspcfg_3b        => inst0_from_rxtspcfg_3b, -- B.J.
      from_fircfg_tx_a        => inst0_from_fircfg_tx_a, -- B.J.
      from_fircfg_tx_b        => inst0_from_fircfg_tx_b, -- B.J.
      from_fircfg_rx_a        => inst0_from_fircfg_rx_a, -- B.J.
      from_fircfg_rx_b        => inst0_from_fircfg_rx_b  -- B.J.    
   );
   
   
   inst0_smpl_cmp_status(0)   <= inst6_rx_smpl_cmp_done when inst0_smpl_cmp_sel(0)='0' else
                                 inst8_rx_smpl_cmp_done;
   
   inst0_smpl_cmp_status(1)   <= inst6_rx_smpl_cmp_err when inst0_smpl_cmp_sel(0)='0' else
                                 inst8_rx_smpl_cmp_err;
                                 
                                 
   inst6_rx_smpl_cmp_start <= inst0_smpl_cmp_en(0) when inst0_smpl_cmp_sel(0)='0' else '0';
   inst8_rx_smpl_cmp_start <= inst0_smpl_cmp_en(0) when inst0_smpl_cmp_sel(0)='1' else '0';
                                 
                                                     

   --process( inst1_lms1_txpll_locked, inst1_lms1_rxpll_locked, inst1_lms2_txpll_locked, inst1_lms2_rxpll_locked,
   --         inst1_pll_0_locked)
   --begin 
   --   inst0_to_pllcfg.pll_lock(0) <= inst1_lms1_txpll_locked;
   --   inst0_to_pllcfg.pll_lock(1) <= inst1_lms1_rxpll_locked;
   --   inst0_to_pllcfg.pll_lock(2) <= inst1_lms2_txpll_locked;
   --   inst0_to_pllcfg.pll_lock(3) <= inst1_lms2_rxpll_locked;
   --   inst0_to_pllcfg.pll_lock(4) <= inst1_pll_0_locked;
   --end process;
   

   
   
--   inst0_to_fpgacfg_0.HW_VER    <= HW_VER;
--   inst0_to_fpgacfg_0.BOM_VER   <= BOM_VER; 
--   inst0_to_fpgacfg_0.PWR_SRC   <= '0';
                        
   -- TODO: Check LMS MISO connection !!
   inst0_spi_0_MISO <= FPGA_SPI0_LMS1_MISO OR FPGA_SPI0_LMS2_MISO OR FPGA_SPI0_LMS3_MISO;
   
-- ----------------------------------------------------------------------------
-- pll_top instance.
-- Clock source for LMS#1, LMS#2 RX and TX logic
-- ---------------------------------------------------------------------------- 
   inst1_pll_top : entity work.pll_top
   generic map(
      INTENDED_DEVICE_FAMILY  => g_DEV_FAMILY,
      N_PLL                   => 5,
      -- TX pll parameters
      LMS1_TXPLL_DRCT_C0_NDLY => 1,
      LMS1_TXPLL_DRCT_C1_NDLY => 2,
      -- RX pll parameters
      LMS1_RXPLL_DRCT_C0_NDLY => 1,
      LMS1_RXPLL_DRCT_C1_NDLY => 2,
      -- TX pll parameters
      LMS2_TXPLL_DRCT_C0_NDLY => 1,
      LMS2_TXPLL_DRCT_C1_NDLY => 2,
      -- RX pll parameters
      LMS2_RXPLL_DRCT_C0_NDLY => 1,
      LMS2_RXPLL_DRCT_C1_NDLY => 2
   )
   port map(
      -- LMS#1 TX PLL 0 ports
      lms1_txpll_inclk           => LMS1_MCLK1,
      lms1_txpll_reconfig_clk    => CLK100_FPGA,
      lms1_txpll_rcnfg_to_pll    => inst0_pll_rcfg_to_pll_0,
      lms1_txpll_rcnfg_from_pll  => inst1_lms1_txpll_rcnfg_from_pll,
      lms1_txpll_logic_reset_n   => not inst0_pll_rst(0),
      lms1_txpll_clk_ena         => inst0_from_fpgacfg_0.CLK_ENA(1 downto 0),
      lms1_txpll_drct_clk_en     => inst0_from_fpgacfg_0.drct_clk_en(0) & inst0_from_fpgacfg_0.drct_clk_en(0),
      lms1_txpll_c0              => LMS1_FCLK1,
      lms1_txpll_c1              => inst1_lms1_txpll_c1,
      lms1_txpll_locked          => inst1_lms1_txpll_locked,
      -- LMS#1 RX PLL ports
      lms1_rxpll_inclk           => LMS1_MCLK2,
      lms1_rxpll_reconfig_clk    => CLK100_FPGA,
      lms1_rxpll_rcnfg_to_pll    => inst0_pll_rcfg_to_pll_1,
      lms1_rxpll_rcnfg_from_pll  => inst1_lms1_rxpll_rcnfg_from_pll,
      lms1_rxpll_logic_reset_n   => not inst0_pll_rst(1),
      lms1_rxpll_clk_ena         => inst0_from_fpgacfg_0.CLK_ENA(3 downto 2),
      lms1_rxpll_drct_clk_en     => inst0_from_fpgacfg_0.drct_clk_en(1) & inst0_from_fpgacfg_0.drct_clk_en(1),
      lms1_rxpll_c0              => inst1_lms1_rxpll_c0, --LMS1_FCLK2,
      lms1_rxpll_c1              => inst1_lms1_rxpll_c1,
      lms1_rxpll_locked          => inst1_lms1_rxpll_locked,
      -- Sample comparing ports from LMS#1 RX interface
      lms1_smpl_cmp_en           => inst1_lms1_smpl_cmp_en,      
      lms1_smpl_cmp_done         => inst6_rx_smpl_cmp_done,
      lms1_smpl_cmp_error        => inst6_rx_smpl_cmp_err,
      lms1_smpl_cmp_cnt          => inst1_lms1_smpl_cmp_cnt, 
    
      -- LMS#2 TX PLL 0 ports
      lms2_txpll_inclk           => '0',--LMS2_MCLK1,
      lms2_txpll_reconfig_clk    => CLK100_FPGA,
      lms2_txpll_rcnfg_to_pll    => inst0_pll_rcfg_to_pll_2,
      lms2_txpll_rcnfg_from_pll  => inst1_lms2_txpll_rcnfg_from_pll,
      lms2_txpll_logic_reset_n   => not inst0_pll_rst(2),
      lms2_txpll_clk_ena         => inst0_from_fpgacfg_0.CLK_ENA(5 downto 4),
      lms2_txpll_drct_clk_en     => inst0_from_fpgacfg_0.drct_clk_en(2) & inst0_from_fpgacfg_0.drct_clk_en(2),
      lms2_txpll_c0              => open,--LMS2_FCLK1,
      lms2_txpll_c1              => inst1_lms2_txpll_c1,
      lms2_txpll_c2              => inst1_lms2_txpll_c2,
      lms2_txpll_locked          => inst1_lms2_txpll_locked,
      -- LMS#2 RX PLL  0 ports
      lms2_rxpll_inclk           => '0', --LMS2_MCLK2,
      lms2_rxpll_reconfig_clk    => CLK100_FPGA,
      lms2_rxpll_rcnfg_to_pll    => inst0_pll_rcfg_to_pll_3,
      lms2_rxpll_rcnfg_from_pll  => inst1_lms2_rxpll_rcnfg_from_pll,
      lms2_rxpll_logic_reset_n   => not inst0_pll_rst(3),
      lms2_rxpll_clk_ena         => inst0_from_fpgacfg_0.CLK_ENA(7 downto 6),
      lms2_rxpll_drct_clk_en     => inst0_from_fpgacfg_0.drct_clk_en(3) & inst0_from_fpgacfg_0.drct_clk_en(3),
      lms2_rxpll_c0              => open, --LMS2_FCLK2,
      lms2_rxpll_c1              => inst1_lms2_rxpll_c1,
      lms2_rxpll_locked          => inst1_lms2_rxpll_locked,
      -- Sample comparing ports from LMS#2 RX interface 
      lms2_smpl_cmp_en           => inst1_lms2_smpl_cmp_en,      
      lms2_smpl_cmp_done         => inst8_rx_smpl_cmp_done,
      lms2_smpl_cmp_error        => inst8_rx_smpl_cmp_err,
      lms2_smpl_cmp_cnt          => inst1_lms2_smpl_cmp_cnt,
      -- PLL for DAC, ADC
      pll_0_inclk                => CLK100_FPGA, 
      pll_0_rcnfg_to_pll         => inst0_pll_rcfg_to_pll_4,
      pll_0_rcnfg_from_pll       => inst1_pll_0_rcnfg_from_pll,
      pll_0_logic_reset_n        => not inst0_pll_rst(4),
      pll_0_c0                   => inst1_pll_0_c0,
      pll_0_c1                   => inst1_pll_0_c1,
      pll_0_locked               => inst1_pll_0_locked,
      
      pll_1_inclk_p              => CDCM_LMS2_BB_DAC1_REFC_P, 
      pll_1_inclk_n              => CDCM_LMS2_BB_DAC1_REFC_N, 
      pll_1_logic_reset_n        => not inst0_pll_rst(5),
      pll_1_c0                   => inst1_pll_1_c0,
      pll_1_c1                   => inst1_pll_1_c1,
      pll_1_c2                   => inst1_pll_1_c2,
      pll_1_locked               => inst1_pll_1_locked,
      -- Reconfiguration AXI ports
      rcnfg_axi_clk              => CLK100_FPGA,
      rcnfg_axi_reset_n          => inst0_pll_axi_resetn_out(0),
      rcnfg_from_axim            => inst0_pll_from_axim, 
      rcnfg_to_axim              => inst1_rcnfg_to_axim,
      rcnfg_sel                  => inst0_pll_axi_sel, 
         --Reconfiguration  0 ports
      rcnfg_0_mgmt_readdata      => inst0_avmm_s0_readdata,		
      rcnfg_0_mgmt_waitrequest   => inst0_avmm_s0_waitrequest,
      rcnfg_0_mgmt_read          => inst1_rcnfg_0_mgmt_read,
      rcnfg_0_mgmt_write         => inst1_rcnfg_0_mgmt_write,
      rcnfg_0_mgmt_address       => inst1_rcnfg_0_mgmt_address,
      rcnfg_0_mgmt_writedata     => inst1_rcnfg_0_mgmt_writedata,
         --Reconfiguration  1 ports
      rcnfg_1_mgmt_readdata      => inst0_avmm_s1_readdata,		
      rcnfg_1_mgmt_waitrequest   => inst0_avmm_s1_waitrequest,
      rcnfg_1_mgmt_read          => inst1_rcnfg_1_mgmt_read,
      rcnfg_1_mgmt_write         => inst1_rcnfg_1_mgmt_write,
      rcnfg_1_mgmt_address       => inst1_rcnfg_1_mgmt_address,
      rcnfg_1_mgmt_writedata     => inst1_rcnfg_1_mgmt_writedata,        
      -- pllcfg ports
      from_pllcfg                => inst0_from_pllcfg,
      to_pllcfg                  => inst0_to_pllcfg
   );
   
   LMS1_FCLK2 <= inst1_lms1_rxpll_c0;  -- 122.88 MHz
   
      
-- ----------------------------------------------------------------------------
-- pcie_top instance.
-- PCIe interface 
-- ----------------------------------------------------------------------------
  inst2_pcie_top : entity work.pcie_top
  generic map(
     g_DEV_FAMILY               => g_DEV_FAMILY,
     g_S0_DATA_WIDTH            => c_S0_DATA_WIDTH,
     g_S1_DATA_WIDTH            => c_S1_DATA_WIDTH,
     g_S2_DATA_WIDTH            => c_S2_DATA_WIDTH,
     g_C0_DATA_WIDTH            => c_C0_DATA_WIDTH,
     -- Stream (Host->FPGA) 
     g_H2F_S0_0_RDUSEDW_WIDTH   => c_H2F_S0_0_RDUSEDW_WIDTH,
     g_H2F_S0_0_RWIDTH          => c_H2F_S0_0_RWIDTH,
     g_H2F_S0_1_RDUSEDW_WIDTH   => c_H2F_S0_1_RDUSEDW_WIDTH,
     g_H2F_S0_1_RWIDTH          => c_H2F_S0_1_RWIDTH,
     g_H2F_S1_0_RDUSEDW_WIDTH   => c_H2F_S1_0_RDUSEDW_WIDTH,
     g_H2F_S1_0_RWIDTH          => c_H2F_S1_0_RWIDTH,
     g_H2F_S1_1_RDUSEDW_WIDTH   => c_H2F_S1_1_RDUSEDW_WIDTH,
     g_H2F_S1_1_RWIDTH          => c_H2F_S1_1_RWIDTH,
     g_H2F_S2_0_RDUSEDW_WIDTH   => c_H2F_S2_0_RDUSEDW_WIDTH,
     g_H2F_S2_0_RWIDTH          => c_H2F_S2_0_RWIDTH,
     g_H2F_S2_1_RDUSEDW_WIDTH   => c_H2F_S2_1_RDUSEDW_WIDTH,
     g_H2F_S2_1_RWIDTH          => c_H2F_S2_1_RWIDTH,
     -- Stream (FPGA->Host)
     g_F2H_S0_WRUSEDW_WIDTH     => c_F2H_S0_WRUSEDW_WIDTH,
     g_F2H_S0_WWIDTH            => c_F2H_S0_WWIDTH,
     g_F2H_S1_WRUSEDW_WIDTH     => c_F2H_S1_WRUSEDW_WIDTH,
     g_F2H_S1_WWIDTH            => c_F2H_S1_WWIDTH,
     g_F2H_S2_WRUSEDW_WIDTH     => c_F2H_S2_WRUSEDW_WIDTH,
     g_F2H_S2_WWIDTH            => c_F2H_S2_WWIDTH,
     -- Control (Host->FPGA)
     g_H2F_C0_RDUSEDW_WIDTH     => c_H2F_C0_RDUSEDW_WIDTH,
     g_H2F_C0_RWIDTH            => c_H2F_C0_RWIDTH,
     -- Control (FPGA->Host)
     g_F2H_C0_WRUSEDW_WIDTH     => c_F2H_C0_WRUSEDW_WIDTH,
     g_F2H_C0_WWIDTH            => c_F2H_C0_WWIDTH 
  )
  port map(
     clk                  => CLK100_FPGA,    -- Input clock for PLL
     reset_n              => reset_n,
     -- PCIe interface
     pcie_perstn          => PCIE_PERSTN, 
     pcie_refclk_p        => PCIE_REFCLK_P, 
     pcie_refclk_N        => PCIE_REFCLK_N, 
     pcie_rx_p            => PCIE_HSO_P,
     pcie_rx_n            => PCIE_HSO_N,
     pcie_tx_p            => PCIE_HSI_IC_P,
     pcie_tx_n            => PCIE_HSI_IC_N,
     
     pcie_bus_clk         => pcie_bus_clk,  -- B.J. 
     -- PCIe data clock output
   
     H2F_S0_sel           => inst0_from_fpgacfg_0.wfm_load,
     H2F_S1_sel           => inst0_from_fpgacfg_1.wfm_load,
     H2F_S2_sel           => inst0_from_fpgacfg_2.wfm_load,
     --Stream endpoint FIFO (Host->FPGA) 
     H2F_S0_dma_en        => inst2_s0_dma_en,
     H2F_S0_0_rdclk       => inst1_lms1_txpll_c1,
     H2F_S0_0_aclrn       => inst7_tx_in_pct_reset_n_req,
     H2F_S0_0_rd          => inst7_tx_in_pct_rdreq,
     H2F_S0_0_rdata       => inst2_H2F_S0_0_rdata,
     H2F_S0_0_rempty      => inst2_H2F_S0_0_rempty,
     H2F_S0_0_rdusedw     => inst2_H2F_S0_0_rdusedw,
  
     H2F_S0_1_rdclk       => inst19_phy_clk,
     H2F_S0_1_aclrn       => inst0_from_fpgacfg_0.wfm_load,
     H2F_S0_1_rd          => inst19_wfm_0_infifo_rdreq,
     H2F_S0_1_rdata       => inst2_H2F_S0_1_rdata,
     H2F_S0_1_rempty      => inst2_H2F_S0_1_rempty,
     H2F_S0_1_rdusedw     => inst2_H2F_S0_1_rdusedw,

     H2F_S1_dma_en        => inst2_s1_dma_en,
     H2F_S1_0_rdclk       => inst1_pll_1_c1,
     H2F_S1_0_aclrn       => inst9_tx_in_pct_reset_n_req,
     H2F_S1_0_rd          => inst9_tx_in_pct_rdreq,
     H2F_S1_0_rdata       => inst2_H2F_S1_0_rdata,
     H2F_S1_0_rempty      => inst2_H2F_S1_0_rempty,
     H2F_S1_0_rdusedw     => inst2_H2F_S1_0_rdusedw,
  
     H2F_S1_1_rdclk       => inst1_pll_1_c1,
     H2F_S1_1_aclrn       => inst0_from_fpgacfg_1.wfm_load,
     H2F_S1_1_rd          => inst20_wfm_0_infifo_rdreq,
     H2F_S1_1_rdata       => inst2_H2F_S1_1_rdata,
     H2F_S1_1_rempty      => inst2_H2F_S1_1_rempty,
     H2F_S1_1_rdusedw     => inst2_H2F_S1_1_rdusedw, 

     H2F_S2_dma_en        => inst2_s2_dma_en,
     H2F_S2_0_rdclk       => '0',--inst1_pll_1_c1,
     H2F_S2_0_aclrn       => '0',--inst11_tx_in_pct_reset_n_req,
     H2F_S2_0_rd          => '0',--inst11_tx_in_pct_rdreq,
     H2F_S2_0_rdata       => open,--inst2_H2F_S2_0_rdata,
     H2F_S2_0_rempty      => open,--inst2_H2F_S2_0_rempty,
     H2F_S2_0_rdusedw     => open,--inst2_H2F_S2_0_rdusedw,
  
     H2F_S2_1_rdclk       => '0',--inst1_pll_1_c1,
     H2F_S2_1_aclrn       => '0',--inst0_from_fpgacfg_2.wfm_load,
     H2F_S2_1_rd          => '0',--inst11_wfm_in_pct_rdreq,
     H2F_S2_1_rdata       => open,--inst2_H2F_S2_1_rdata,
     H2F_S2_1_rempty      => open,--inst2_H2F_S2_1_rempty,
     H2F_S2_1_rdusedw     => open,--inst2_H2F_S2_1_rdusedw,       
     --Stream endpoint FIFO (FPGA->Host)
     F2H_S0_wclk          => inst1_lms1_rxpll_c1,
     F2H_S0_aclrn         => inst7_rx_pct_fifo_aclrn_req,
     F2H_S0_wr            => inst7_rx_pct_fifo_wrreq,
     F2H_S0_wdata         => inst7_rx_pct_fifo_wdata,
     F2H_S0_wfull         => inst2_F2H_S0_wfull,
     F2H_S0_wrusedw       => inst2_F2H_S0_wrusedw,
   
     F2H_S1_wclk          => lms2_bb_adc1_clkout_global,
     F2H_S1_aclrn         => inst9_rx_pct_fifo_aclrn_req,
     F2H_S1_wr            => inst9_rx_pct_fifo_wrreq,
     F2H_S1_wdata         => inst9_rx_pct_fifo_wdata,
     F2H_S1_wfull         => inst2_F2H_S1_wfull,
     F2H_S1_wrusedw       => inst2_F2H_S1_wrusedw,
   
     F2H_S2_wclk          => lms3_bb_adc1_clkout_global,  -- !!!!!! change to ADC_CLKOUT,
     F2H_S2_aclrn         => inst11_rx_pct_fifo_aclrn_req,
     F2H_S2_wr            => inst11_rx_pct_fifo_wrreq,
     F2H_S2_wdata         => inst11_rx_pct_fifo_wdata,
     F2H_S2_wfull         => inst2_F2H_S2_wfull,
     F2H_S2_wrusedw       => inst2_F2H_S2_wrusedw,
     --Control endpoint FIFO (Host->FPGA)
     H2F_C0_rdclk         => CLK100_FPGA,
     H2F_C0_aclrn         => reset_n,
     H2F_C0_rd            => inst0_exfifo_if_rd,
     H2F_C0_rdata         => inst2_H2F_C0_rdata,
     H2F_C0_rempty        => inst2_H2F_C0_rempty,
     --Control endpoint FIFO (FPGA->Host)
     F2H_C0_wclk          => CLK100_FPGA,
     F2H_C0_aclrn         => not inst0_exfifo_of_rst,
     F2H_C0_wr            => inst0_exfifo_of_wr,
     F2H_C0_wdata         => inst0_exfifo_of_d,
     F2H_C0_wfull         => inst2_F2H_C0_wfull,
     S0_rx_en             => inst0_from_fpgacfg_0.rx_en,
     S1_rx_en             => inst0_from_fpgacfg_1.rx_en,
     S2_rx_en             => inst0_from_fpgacfg_2.rx_en,
     F2H_S0_open          => inst2_F2H_S0_open,
     F2H_S1_open          => inst2_F2H_S1_open, 
     F2H_S2_open          => inst2_F2H_S2_open,

     to_dma_reader   => DPD_to_dma_reader, -- B.J.
     from_dma_reader  => DPD_from_dma_reader, -- B.J.
     dpd_capture_en => dpd_capture_en -- B.J.    
     );

--xilinx_pcie_2_1_ep_7x_inst : entity work.xilinx_pcie_2_1_ep_7x
--  generic map(
--  INIT_PATTERN_WIDTH            => 8,
--  INIT_PATTERN1                 => X"12",
--  INIT_PATTERN2                 => X"9a",
--  PCIE_EXT_CLK                  => "TRUE",  -- Use External Clocking Module
--  PCIE_EXT_GT_COMMON            => "FALSE",
--  PL_FAST_TRAIN                 => "FALSE",
--  C_DATA_WIDTH                  =>  64
--  )
--  port map(
--  pci_exp_txp                   => PCIE_HSI_IC_P,
--  pci_exp_txn                   => PCIE_HSI_IC_N,
--  pci_exp_rxp                   => PCIE_HSO_P,
--  pci_exp_rxn                   => PCIE_HSO_N,
--
--  sys_clk_p                     => PCIE_REFCLK_P,
--  sys_clk_n                     => PCIE_REFCLK_N,
--  sys_rst_n                     => PCIE_PERSTn
--
--);
      
---- ----------------------------------------------------------------------------
---- tst_top instance.
---- Clock and External DDR2 memroy test logic
---- ----------------------------------------------------------------------------
----   inst3_tst_top : entity work.tst_top
----   port map(
----      --input ports 
----      FX3_clk           => CLK100_FPGA,
----      reset_n           => reset_n_clk100_fpga,    
----      Si5351C_clk_0     => SI_CLK0,
----      Si5351C_clk_1     => SI_CLK1,
----      Si5351C_clk_2     => SI_CLK2,
----      Si5351C_clk_3     => SI_CLK3,
----      Si5351C_clk_5     => SI_CLK5,
----      Si5351C_clk_6     => SI_CLK6,
----      Si5351C_clk_7     => SI_CLK7,
----      LMK_CLK           => LMK_CLK,
----      ADF_MUXOUT        => ADF_MUXOUT,    
----      --DDR2 external memory signals
----      mem_pllref_clk    => SI_CLK1,
----      mem_odt           => DDR2_2_ODT,
----      mem_cs_n          => DDR2_2_CS_N,
----      mem_cke           => DDR2_2_CKE,
----      mem_addr          => DDR2_2_ADDR,
----      mem_ba            => DDR2_2_BA,
----      mem_ras_n         => DDR2_2_RAS_N,
----      mem_cas_n         => DDR2_2_CAS_N,
----      mem_we_n          => DDR2_2_WE_N,
----      mem_dm            => DDR2_2_DM,
----      mem_clk           => DDR2_2_CLK,
----      mem_clk_n         => DDR2_2_CLK_N,
----      mem_dq            => DDR2_2_DQ,
----      mem_dqs           => DDR2_2_DQS,     
----      -- To configuration memory
----      to_tstcfg         => inst0_to_tstcfg,
----      from_tstcfg       => inst0_from_tstcfg
----   );    
   
-- ----------------------------------------------------------------------------
-- general_periph_top instance.
-- Control module for external periphery
-- ----------------------------------------------------------------------------
   inst4_general_periph_top : entity work.general_periph_top
   generic map(
      DEV_FAMILY  => g_DEV_FAMILY,
      N_GPIO      => g_GPIO_N
   )
   port map(
      -- General ports
      clk                  => LMK1_CLK1,
      reset_n              => reset_n_lmk_clk,
      -- configuration memory
      from_fpgacfg         => inst0_from_fpgacfg_0,
      to_periphcfg         => inst0_to_periphcfg,
      from_periphcfg       => inst0_from_periphcfg,     
      -- Dual colour LEDs
      -- LED1 (Clock and PLL lock status)
      led1_pll1_locked     => inst1_lms1_txpll_locked AND inst1_lms2_txpll_locked,
      led1_pll2_locked     => inst1_lms1_rxpll_locked AND inst1_lms2_rxpll_locked,
      led1_ctrl            => inst0_from_fpgacfg_0.FPGA_LED1_CTRL,
      led1_g               => FPGA_LED1_G,
      led1_r               => FPGA_LED1_R,      
      --LED2 (TCXO control status)
      led2_clk             => inst0_spi_2_SCLK,
      led2_adf_muxout      => ADF_MUXOUT,
      led2_dac_ss          => inst0_spi_2_SS_n(c_SPI2_XO_DAC_SS_NR),
      led2_adf_ss          => inst0_spi_2_SS_n(c_SPI2_ADF_SS_NR),
      led2_ctrl            => inst0_from_fpgacfg_0.FPGA_LED2_CTRL,
      led2_g               => FPGA_LED2_G,--open,
      led2_r               => FPGA_LED2_R,--open,     
      --LED3 - LED6
      led3_in              => not inst1_lms1_txpll_locked,
      led4_in              => not inst1_lms1_rxpll_locked,
      led5_in              => not inst1_lms2_txpll_locked,
      led6_in              => not inst1_lms2_rxpll_locked,
      led3_out             => open,--FPGA_LED2_R, --FPGA_LED1,
      led4_out             => open,--FPGA_LED2_G, --FPGA_LED2,
      led5_out             => open,--FPGA_LED3_R, --FPGA_LED3,
      led6_out             => FPGA_LED3_G, --FPGA_LED4,    
      --GPIO
      gpio_dir             => (others=>'1'),
      gpio_out_val         => (others=>'0'),
      gpio_rd_val          => open,
      gpio                 => open,      
      --Fan control
      fan_sens_in          => LM75_OS,
      fan_ctrl_out         => FAN_CTRL
   );
   
   
   
--   process(CLK100_FPGA)
--   variable counter : unsigned(26 downto 0);
--   begin
--   if(rising_edge(CLK100_FPGA)) then
--        counter := counter +1 ;
--        FPGA_LED2_R <= counter(25);
--   end if;
--   end process;
   
   process(inst1_lms1_rxpll_c1)
   variable counter : unsigned(26 downto 0);
   begin
   if(rising_edge(inst1_lms1_rxpll_c1)) then
        counter := counter +1 ;
        FPGA_LED3_R <= counter(25);
   end if;
   end process;
   
   
   process(inst1_pll_1_c1)
   variable counter : unsigned(26 downto 0);
   begin
   if(rising_edge(inst1_pll_1_c1)) then
        counter := counter +1 ;
        FPGA_LED4_R <= counter(25);
   end if;
   end process;
   
   
----   inst5_busy_delay : entity work.busy_delay
----   generic map(
----      clock_period   => 10,
----      delay_time     => 200  -- delay time in ms
----      --counter_value=delay_time*1000/clock_period<2^32
----      --delay counter is 32bit wide, 
----   )
----   port map(
----      --input ports 
----      clk      => CLK100_FPGA,
----      reset_n  => reset_n_clk100_fpga,
----      busy_in  => inst0_gpo(0),
----      busy_out => inst5_busy
----   );
    
---- ----------------------------------------------------------------------------
---- Receive and transmit interface for LMS7002 #1
---- ----------------------------------------------------------------------------
   -- Rx interface is enabled only when user_read_32 port is opened from Host. 
   process(inst0_from_fpgacfg_0, inst2_F2H_S0_open)
   begin 
      inst0_from_fpgacfg_mod_0        <= inst0_from_fpgacfg_0;
      inst0_from_fpgacfg_mod_0.rx_en  <= inst0_from_fpgacfg_0.rx_en AND inst2_F2H_S0_open;
   end process;
   
--   --Module for LMS7002 IC
--   inst6_lms7002_top : entity work.lms7002_top

-- Module for LMS7002 IC
-- added by B.J. 
-- LMS#1 has two CFR+FIR+DPD chains for both transmitting channels.
--	for trasmit only LMS#1 is used: both channels A and B are active
inst6_lms7002_top : entity work.lms7002_top_DPD
   generic map(
      DPDTopWrapper_enable    => 1,
      g_DEV_FAMILY            => g_DEV_FAMILY,
      g_IQ_WIDTH              => g_LMS_DIQ_WIDTH,
      g_INV_INPUT_CLK         => "ON",
      g_TX_SMPL_FIFO_0_WRUSEDW  => 9,
      g_TX_SMPL_FIFO_0_DATAW    => 128,
      g_TX_SMPL_FIFO_1_WRUSEDW  => 9,
      g_TX_SMPL_FIFO_1_DATAW    => 128,

      g_ADPDCFG_START_ADDR   => g_ADPDCFG_START_ADDR, -- B.J.
      g_CFR0CFG_START_ADDR   => g_CFR0CFG_START_ADDR, -- B.J.
      g_CFR1CFG_START_ADDR   => g_CFR1CFG_START_ADDR, -- B.J.
      g_FIR0CFG_START_ADDR   => g_FIR0CFG_START_ADDR, -- B.J.
      g_FIR1CFG_START_ADDR   => g_FIR1CFG_START_ADDR,  -- B.J.
      DPD_enable => DPD_enable
   ) 
   port map(  
      from_fpgacfg         => inst0_from_fpgacfg_mod_0,
      from_tstcfg          => inst0_from_tstcfg,
      from_memcfg          => inst0_from_memcfg,
      -- Momory module reset
      mem_reset_n          => reset_n,
      -- PORT1 interface
      MCLK1                => inst1_lms1_txpll_c1, -- 122.88
      FCLK1                => open, 
      --DIQ1                 => LMS1_DIQ1_INT,
      DIQ1                 => LMS1_DIQ1_D,
      ENABLE_IQSEL1        => LMS1_ENABLE_IQSEL1,
      TXNRX1               => LMS1_TXNRX1,
      -- PORT2 interface
      MCLK2                => inst1_lms1_rxpll_c1,
      FCLK2                => open, 
      DIQ2                 => LMS1_DIQ2_D,
      ENABLE_IQSEL2        => LMS1_ENABLE_IQSEL2,
      TXNRX2               => LMS1_TXNRX2,
      -- MISC
      RESET                => LMS1_RESET, 
      TXEN                 => LMS1_TXEN,
      RXEN                 => LMS1_RXEN,
      CORE_LDO_EN          => open,
      -- Internal TX ports
      tx_reset_n           => inst1_lms1_txpll_locked,
      tx_fifo_0_wrclk      => inst1_lms1_txpll_c1,      
      --tx_fifo_0_reset_n    => inst0_from_fpgacfg_mod_0.rx_en,
      tx_fifo_0_reset_n    => inst0_from_fpgacfg_mod_0.rx_en or dpd_tx_en,  -- B.J.

      tx_fifo_0_wrreq      => inst7_tx_smpl_fifo_wrreq,
      tx_fifo_0_data       => inst7_tx_smpl_fifo_data,
      tx_fifo_0_wrfull     => inst6_tx_fifo_0_wrfull,
      tx_fifo_0_wrusedw    => inst6_tx_fifo_0_wrusedw,
      tx_fifo_1_wrclk      => inst19_phy_clk,
      tx_fifo_1_reset_n    => inst19_wfm_0_outfifo_reset_n,
      tx_fifo_1_wrreq      => inst19_wfm_0_outfifo_wrreq,
      tx_fifo_1_data       => inst19_wfm_0_outfifo_data,
      tx_fifo_1_wrfull     => inst6_tx_fifo_1_wrfull,
      tx_fifo_1_wrusedw    => inst6_tx_fifo_1_wrusedw,
      tx_ant_en            => inst6_tx_ant_en, 
      -- Internal RX ports
      rx_reset_n           => inst1_lms1_rxpll_locked,
      rx_diq_h             => open, 
      rx_diq_l             => open,
      rx_data_valid        => inst6_rx_data_valid,
      rx_data              => inst6_rx_data,
      rx_smpl_cmp_start    => inst6_rx_smpl_cmp_start,               --inst1_lms1_smpl_cmp_en,
      rx_smpl_cmp_length   => inst0_from_pllcfg.auto_phcfg_smpls, --inst1_lms1_smpl_cmp_cnt,
      rx_smpl_cmp_done     => inst6_rx_smpl_cmp_done,
      rx_smpl_cmp_err      => inst6_rx_smpl_cmp_err,
      rx_smpl_cnt_en       => inst6_rx_smpl_cnt_en,
            -- SPI for internal modules
      sdin                 => inst0_spi_0_MOSI,  -- Data in
      sclk                 => inst0_spi_0_SCLK,  -- Data clock
      sen                  => inst0_spi_0_SS_n(c_SPI0_FPGA_SS_NR),  -- Enable signal (active low)
      sdout                => inst6_sdout,  -- Data out  
      
       -- B.J. 
       xp_ai                => xp_ai, 
       xp_aq                => xp_aq,
       xp_bi                => xp_bi, 
       xp_bq                => xp_bq,
       yp_ai                => yp_ai, 
       yp_aq                => yp_aq,
       yp_bi                => yp_bi,
       yp_bq                => yp_bq,
       x_ai                 => x_ai_lms1,
       x_aq                 => x_aq_lms1,
       x_bi                 => x_bi_lms1,
       x_bq                 => x_bq_lms1,

       xp_data_valid        => xp_data_valid,
       x_data_valid         => x_data_valid_lms1,

       cap_en               => cap_en, 
       cap_cont_en          => cap_cont_en,
       cap_resetn           => cap_resetn,  -- reset signal for dpd capture buffer
       cap_size             => cap_size,
       tx_en => dpd_tx_en,
       capture_en => dpd_capture_en,  -- enables DPD capture (1) or LMS#3 streaming (0) going to PCIe 
       reset_n_software => reset_n_soft,  -- not used 
       lms3_monitoring => lms3_monitoring  -- when 1 LMS3 is used for DPD monitoring path, otherwise (0) the LMS#1 is used
   );

   inst_data_cap_buffer: data_cap_buffer
      port map (
         
         wclk0 => inst1_lms1_txpll_c1,   -- clk for xp_a (122.88)
         wclk1 => inst1_lms1_txpll_c1,   -- clk for yp_a (122.88)
         wclk2 => lms3_bb_adc1_clkout,   -- clk for x_a, LMS#3 (61.44)
         wclk3 => inst1_lms1_txpll_c1,   -- clk for xp_b (122.88)
         wclk4 => inst1_lms1_txpll_c1,   -- clk for yp_b (122.88)
         wclk5 => lms3_bb_adc2_clkout,   -- clk for x_b, LMS#3 (61.44)
         wclk6 => inst1_lms1_rxpll_c1,   -- clk for x_a, LMS#1 (122.88)
         wclk7 => inst1_lms1_rxpll_c1,   -- clk for x_b, LMS#1 (122.88)
    
         rdclk => pcie_bus_clk, 
         clk =>  inst1_lms1_txpll_c1,   -- inst1_lms1_txpll_c1
         reset_n => cap_resetn, -- reset signal for dpd capture buffer
         
         ch_0_valid => xp_data_valid, 
         ch_0_i => xp_ai, 
         ch_0_q => xp_aq,          
         
         ch_1_valid => xp_data_valid, 
         ch_1_i =>  yp_ai, 
         ch_1_q =>  yp_aq,    
         
         ch_2_valid => '1', 
         
         -- SWAPPED I AND Q FOR 3.1 BOARD,  LMS 3
         ch_2_i => x_ai_lms3, --x_ai, lms#3
         ch_2_q => x_aq_lms3, --x_aq, lms#3
         
         ch_3_valid => xp_data_valid, 
         ch_3_i => xp_bi, 
         ch_3_q => xp_bq,          
         
         ch_4_valid => xp_data_valid, 
         ch_4_i => yp_bi, 
         ch_4_q => yp_bq,   
         
         ch_5_valid => '1', 
         
         -- SWAPPED I AND Q FOR 3.1 BOARD, LMS 3
         ch_5_i => x_bi_lms3, --x_bi, lms#3
         ch_5_q => x_bq_lms3, --x_bq, lms#3 
         
         ch_6_valid => x_data_valid_lms1, 
         ch_6_i => x_aq_lms1, --x_ai 
         ch_6_q => x_ai_lms1, --x_aq, lms#1

         ch_7_valid => not x_data_valid_lms1, 
         ch_7_i => x_bq_lms1, --x_bi, lms#1
         ch_7_q => x_bi_lms1, --x_bq, lms#1 
         
         cap_en => cap_en, 
         cap_cont_en => cap_cont_en, 
         cap_size => cap_size, 
         cap_done => OPEN,    
         
         to_dma_reader   => DPD_to_dma_reader, 
         from_dma_reader  => DPD_from_dma_reader,   
         
         test_data_en =>  '0',
         lms3_monitoring => lms3_monitoring -- when 1 LMS3 is used for DPD monitoring path, otherwise (0) the LMS#1 is used
      );
  
   
   --Trying to add additional delay for LMS1_DIQ1(11)  
   IOBUF_LMS_DIQ11 : IOBUF
      generic map (
         DRIVE       => 16,
         IOSTANDARD  => "LVCMOS25",
         SLEW        => "FAST"
         )
      port map (
         O           => LMS1_DIQ1_11_DELAYED,   -- Buffer output
         IO          => DUMMY_PIN,              -- Buffer inout port (connect directly to top-level port)
         I           => LMS1_DIQ1_INT(11),      -- Buffer input
         T           => '0'                     -- 3-state enable input, high=input, low=output 
         );
   
   --LMS1_DIQ1_D <= LMS1_DIQ1_11_DELAYED & LMS1_DIQ1_INT(10 downto 0);
   
   inst7_rxtx_top : entity work.rxtx_top
   generic map(
      DEV_FAMILY              => g_DEV_FAMILY,
      -- TX parameters
      TX_IQ_WIDTH             => g_LMS_DIQ_WIDTH,
      TX_N_BUFF               => g_TX_N_BUFF,              -- 2,4 valid values
      TX_IN_PCT_SIZE          => g_TX_PCT_SIZE,
      TX_IN_PCT_HDR_SIZE      => g_TX_IN_PCT_HDR_SIZE,
      TX_IN_PCT_DATA_W        => c_H2F_S0_0_RWIDTH,      -- 
      TX_IN_PCT_RDUSEDW_W     => c_H2F_S0_0_RDUSEDW_WIDTH,
      
      -- RX parameters
      RX_DATABUS_WIDTH        => c_F2H_S0_WWIDTH,
      RX_IQ_WIDTH             => g_LMS_DIQ_WIDTH,
      RX_INVERT_INPUT_CLOCKS  => "ON",
      RX_PCT_BUFF_WRUSEDW_W   => c_F2H_S0_WRUSEDW_WIDTH --bus width in bits 
      
   )
   port map(                                             
      from_fpgacfg            => inst0_from_fpgacfg_mod_0,
      to_tstcfg_from_rxtx     => inst7_to_tstcfg_from_rxtx,
      from_tstcfg             => inst0_from_tstcfg,      
      -- TX module signals
      tx_clk                  => inst1_lms1_txpll_c1,      
      tx_clk_reset_n          => inst1_lms1_txpll_locked,
      tx_pct_loss_flg         => inst7_tx_pct_loss_flg,
      tx_txant_en             => inst7_tx_txant_en,  
      --Tx interface data 
      tx_smpl_fifo_wrreq      => inst7_tx_smpl_fifo_wrreq,
      tx_smpl_fifo_wrfull     => inst6_tx_fifo_0_wrfull,
      tx_smpl_fifo_wrusedw    => inst6_tx_fifo_0_wrusedw,
      tx_smpl_fifo_data       => inst7_tx_smpl_fifo_data,
      --TX packet FIFO ports
      tx_in_pct_reset_n_req   => inst7_tx_in_pct_reset_n_req,
      tx_in_pct_rdreq         => inst7_tx_in_pct_rdreq,
      tx_in_pct_data          => inst2_H2F_S0_0_rdata,
      tx_in_pct_rdempty       => inst2_H2F_S0_0_rempty,
      tx_in_pct_rdusedw       => inst2_H2F_S0_0_rdusedw,     
      -- RX path
      rx_clk                  => inst1_lms1_rxpll_c1,
      rx_clk_reset_n          => inst1_lms1_rxpll_locked,
      --RX FIFO for IQ samples   
      rx_smpl_fifo_wrreq      => inst6_rx_data_valid,
      rx_smpl_fifo_data       => inst6_rx_data,
      rx_smpl_fifo_wrfull     => open,
      --RX Packet FIFO ports
      rx_pct_fifo_aclrn_req   => inst7_rx_pct_fifo_aclrn_req,
      rx_pct_fifo_wusedw      => inst2_F2H_S0_wrusedw,
      rx_pct_fifo_wrreq       => inst7_rx_pct_fifo_wrreq,
      rx_pct_fifo_wdata       => inst7_rx_pct_fifo_wdata,
      -- RX sample nr count enable
      rx_smpl_nr_cnt_en       => inst6_rx_smpl_cnt_en,
      
      ext_rx_en => dpd_tx_en,   
      tx_dma_en => inst2_s0_dma_en
   );   
	
---- ----------------------------------------------------------------------------
---- rxtx_top instance.
---- Receive and transmit interface for LMS7002 #2
---- ----------------------------------------------------------------------------
   -- Rx interface is enabled only when user_read_32 port is opened from Host. 
   process(inst0_from_fpgacfg_1, inst2_F2H_S1_open)
   begin 
      inst0_from_fpgacfg_mod_1        <= inst0_from_fpgacfg_1;
      inst0_from_fpgacfg_mod_1.rx_en  <= inst0_from_fpgacfg_1.rx_en AND inst2_F2H_S1_open;
   end process;
   
   --inst10_adc1_top : entity work.adc_top
   inst10_adc1_top : entity work.adc_top_equaliser
   generic map( 
      dev_family           => g_DEV_FAMILY,
      data_width           => 7,
      smpls_to_capture     => 4
      )
   port map(
      clk               => lms2_bb_adc1_clkout,
      clk_io            => lms2_bb_adc1_clkout,
      reset_n           => reset_n,
      en                => inst0_from_fpgacfg_mod_1.rx_en OR inst0_from_fpgacfg_mod_1.dlb_en
                                 OR dpd_tx_en,  -- B.J.           
      ch_a              => lms2_bb_adc1_da,
      ch_b              => lms2_bb_adc1_db,     
      --SDR parallel output data
      data_ch_a         => inst10_adc1_data_ch_a, 
      data_ch_b         => inst10_adc1_data_ch_b,  
      --Interleaved samples of both channels
      data_ch_ab        => inst10_adc1_rx_data,
      data_ch_ab_valid  => inst10_adc1_rx_data_valid,
      test_out          => open,
      to_rxtspcfg       => inst0_to_rxtspcfg_2a,
      from_rxtspcfg     => inst0_from_rxtspcfg_2a,
      from_fircfg       => inst0_from_fircfg_rx_a -- B.J.
   );
   
   --inst10_adc2_top : entity work.adc_top
   inst10_adc2_top : entity work.adc_top_equaliser
   generic map( 
      dev_family           => g_DEV_FAMILY,
      data_width           => 7,
      smpls_to_capture     => 4
      )
   port map(
      clk               => lms2_bb_adc2_clkout,
      clk_io            => lms2_bb_adc2_clkout,
      reset_n           => reset_n,
      en                => inst0_from_fpgacfg_mod_1.rx_en OR inst0_from_fpgacfg_mod_1.dlb_en
                                       OR dpd_tx_en,  -- B.J      
      ch_a              => lms2_bb_adc2_da,
      ch_b              => lms2_bb_adc2_db,     
      --SDR parallel output data
      data_ch_a         => inst10_adc2_data_ch_a, 
      data_ch_b         => inst10_adc2_data_ch_b,  
      --Interleaved samples of both channels
      data_ch_ab        => inst10_adc2_rx_data,
      data_ch_ab_valid  => inst10_adc2_rx_data_valid,
      test_out          => open,
      to_rxtspcfg       => inst0_to_rxtspcfg_2b,
      from_rxtspcfg     => inst0_from_rxtspcfg_2b,
      from_fircfg       => inst0_from_fircfg_rx_b -- B.J.
   );
   
   inst10: entity work.chnl_combine
   generic map(
      diq_width   => 14
   )
   port map (
      -- Combined channels
      clk         => lms2_bb_adc1_clkout_global,
      reset_n     => reset_n,
      ch_en       => inst0_from_fpgacfg_mod_1.ch_en(1 downto 0),
      data        => inst10_data,
      data_valid  => inst10_data_valid,
      -- A chanel
      a_clk       => lms2_bb_adc1_clkout,
      a_reset_n   => reset_n,
      ai          => inst10_adc1_data_ch_a,
      aq          => inst10_adc1_data_ch_b,
      -- B chanel
      b_clk       => lms2_bb_adc2_clkout,
      b_reset_n   => reset_n,
      bi          => inst10_adc2_data_ch_a,
      bq          => inst10_adc2_data_ch_b
      
   );
   

   inst9_rxtx_top : entity work.rxtx_top
   generic map(
      DEV_FAMILY              => g_DEV_FAMILY,
      -- TX parameters
      TX_IQ_WIDTH             => 14,
      TX_N_BUFF               => g_TX_N_BUFF,              -- 2,4 valid values
      TX_IN_PCT_SIZE          => g_TX_PCT_SIZE,
      TX_IN_PCT_HDR_SIZE      => g_TX_IN_PCT_HDR_SIZE,
      TX_IN_PCT_DATA_W        => c_H2F_S1_0_RWIDTH,      -- 
      TX_IN_PCT_RDUSEDW_W     => c_H2F_S1_0_RDUSEDW_WIDTH,
      
      -- RX parameters
      RX_DATABUS_WIDTH        => c_F2H_S1_WWIDTH,
      RX_IQ_WIDTH             => 14,
      RX_INVERT_INPUT_CLOCKS  => "ON",
      RX_PCT_BUFF_WRUSEDW_W   => c_F2H_S1_WRUSEDW_WIDTH --bus width in bits 
      
   )
   port map(                                             
      from_fpgacfg            => inst0_from_fpgacfg_mod_1,
      to_tstcfg_from_rxtx     => inst9_to_tstcfg_from_rxtx,
      from_tstcfg             => inst0_from_tstcfg,      
      -- TX module signals
      tx_clk                  => inst1_pll_1_c1,
      tx_clk_reset_n          => reset_n,     
      tx_pct_loss_flg         => inst11_tx_pct_loss_flg,
      tx_txant_en             => inst11_tx_txant_en,  
      --Tx interface data 
      tx_smpl_fifo_wrreq      => inst9_tx_smpl_fifo_wrreq,
      tx_smpl_fifo_wrfull     => inst12_tx0_wrfull,
      tx_smpl_fifo_wrusedw    => inst12_tx0_wrusedw,
      tx_smpl_fifo_data       => inst9_tx_smpl_fifo_data,
      --TX packet FIFO ports
      tx_in_pct_reset_n_req   => inst9_tx_in_pct_reset_n_req,
      tx_in_pct_rdreq         => inst9_tx_in_pct_rdreq,
      tx_in_pct_data          => inst2_H2F_S1_0_rdata,
      tx_in_pct_rdempty       => inst2_H2F_S1_0_rempty,
      tx_in_pct_rdusedw       => inst2_H2F_S1_0_rdusedw,     
      -- RX path
      rx_clk                  => lms2_bb_adc1_clkout_global,
      rx_clk_reset_n          => reset_n,
      --RX FIFO for IQ samples   
      rx_smpl_fifo_wrreq      => inst10_data_valid,
      rx_smpl_fifo_data       => inst10_data,
      rx_smpl_fifo_wrfull     => open,
      --RX Packet FIFO ports
      rx_pct_fifo_aclrn_req   => inst9_rx_pct_fifo_aclrn_req,
      rx_pct_fifo_wusedw      => inst2_F2H_S1_wrusedw,
      rx_pct_fifo_wrreq       => inst9_rx_pct_fifo_wrreq,
      rx_pct_fifo_wdata       => inst9_rx_pct_fifo_wdata,
      -- RX sample nr count enable
      rx_smpl_nr_cnt_en       => inst12_smpl_cnt_en,

       ext_rx_en => '0',
       --ext_rx_en => dpd_tx_en,  -- B.J.      

       tx_dma_en => inst2_s1_dma_en  
   );   


----   --Module for LMS7002 IC
----   inst8_lms7002_top : entity work.lms7002_top
----   generic map(
----      g_DEV_FAMILY            => g_DEV_FAMILY,
----      g_IQ_WIDTH              => g_LMS_DIQ_WIDTH,
----      g_INV_INPUT_CLK         => "ON",
----      g_TX_SMPL_FIFO_WRUSEDW  => 9,
----      g_TX_SMPL_FIFO_DATAW    => 128
----   ) 
----   port map(  
----      from_fpgacfg         => inst0_from_fpgacfg_mod_1,
----      from_tstcfg          => inst0_from_tstcfg,
----      from_memcfg          => inst0_from_memcfg,
----      -- Momory module reset
----      mem_reset_n          => reset_n,
----      -- PORT1 interface
----      MCLK1                => inst1_lms2_txpll_c1,
----      MCLK1_2x             => inst1_lms2_txpll_c2,
----      FCLK1                => open, 
----      DIQ1                 => LMS2_DIQ1_D,
----      ENABLE_IQSEL1        => LMS2_ENABLE_IQSEL1,
----      TXNRX1               => LMS2_TXNRX1,
----      -- PORT2 interface
----      MCLK2                => inst1_lms2_rxpll_c1,
----      FCLK2                => open, 
----      DIQ2                 => LMS2_DIQ2_D,
----      ENABLE_IQSEL2        => LMS2_ENABLE_IQSEL2,
----      TXNRX2               => LMS2_TXNRX2,
----      -- MISC
----      RESET                => LMS2_RESET, 
----      TXEN                 => LMS2_TXEN,
----      RXEN                 => LMS2_RXEN,
----      CORE_LDO_EN          => LMS2_CORE_LDO_EN,
----      -- Internal TX ports
----      tx_reset_n           => inst1_lms2_txpll_locked,
----      tx_src_sel           => (others => '0'),
----      tx_diq_h             => (others => '0'),
----      tx_diq_l             => (others => '0'),
----      tx_wrfull            => inst8_tx_wrfull,
----      tx_wrusedw           => inst8_tx_wrusedw,
----      tx_wrreq             => inst9_tx_smpl_fifo_wrreq,
----      tx_data              => inst9_tx_smpl_fifo_data,
----      -- Internal RX ports
----      rx_reset_n           => inst1_lms2_rxpll_locked,
----      rx_diq_h             => open, 
----      rx_diq_l             => open,
----      rx_data_valid        => inst8_rx_data_valid,
----      rx_data              => inst8_rx_data,
----      rx_smpl_cmp_start    => inst1_lms2_smpl_cmp_en,
----      rx_smpl_cmp_length   => inst1_lms2_smpl_cmp_cnt,
----      rx_smpl_cmp_done     => inst8_rx_smpl_cmp_done,
----      rx_smpl_cmp_err      => inst8_rx_smpl_cmp_err,
----                  -- SPI for internal modules
----      sdin                 => inst0_spi_0_MOSI,  -- Data in
----      sclk                 => inst0_spi_0_SCLK,  -- Data clock
----      sen                  => inst0_spi_0_SS_n(6),  -- Enable signal (active low)
----      sdout                => inst8_sdout  -- Data out 
----   
----   ); 
   
----   inst9_rxtx_top : entity work.rxtx_top
----   generic map(
----      DEV_FAMILY              => g_DEV_FAMILY,
----      -- TX parameters
----      TX_IQ_WIDTH             => g_LMS_DIQ_WIDTH,
----      TX_N_BUFF               => g_TX_N_BUFF,              -- 2,4 valid values
----      TX_IN_PCT_SIZE          => g_TX_PCT_SIZE,
----      TX_IN_PCT_HDR_SIZE      => g_TX_IN_PCT_HDR_SIZE,
----      TX_IN_PCT_DATA_W        => c_H2F_S1_0_RWIDTH,      -- 
----      TX_IN_PCT_RDUSEDW_W     => c_H2F_S1_0_RDUSEDW_WIDTH,
----      
----      -- RX parameters
----      RX_IQ_WIDTH             => g_LMS_DIQ_WIDTH,
----      RX_INVERT_INPUT_CLOCKS  => "ON",
----      RX_PCT_BUFF_WRUSEDW_W   => c_F2H_S1_WRUSEDW_WIDTH --bus width in bits 
----      
----   )
----   port map(                                             
----      from_fpgacfg            => inst0_from_fpgacfg_mod_1,
----      to_tstcfg_from_rxtx     => inst9_to_tstcfg_from_rxtx,
----      from_tstcfg             => inst0_from_tstcfg,      
----      -- TX module signals
----      tx_clk                  => inst1_lms2_txpll_c1,
----      tx_clk_reset_n          => inst1_lms2_txpll_locked,     
----      tx_pct_loss_flg         => inst9_tx_pct_loss_flg,
----      tx_txant_en             => inst9_tx_txant_en,  
----      --Tx interface data 
----      tx_smpl_fifo_wrreq      => inst9_tx_smpl_fifo_wrreq,
----      tx_smpl_fifo_wrfull     => inst8_tx_wrfull,
----      tx_smpl_fifo_wrusedw    => inst8_tx_wrusedw,
----      tx_smpl_fifo_data       => inst9_tx_smpl_fifo_data,
----      --TX packet FIFO ports
----      tx_in_pct_reset_n_req   => inst9_tx_in_pct_reset_n_req,LMS2_
----      tx_in_pct_rdreq         => inst9_tx_in_pct_rdreq,
----      tx_in_pct_data          => inst2_H2F_S1_0_rdata,
----      tx_in_pct_rdempty       => inst2_H2F_S1_0_rempty,
----      tx_in_pct_rdusedw       => inst2_H2F_S1_0_rdusedw,     
----      -- RX path
----      rx_clk                  => inst1_lms2_rxpll_c1,
----      rx_clk_reset_n          => inst1_lms2_rxpll_locked,
----      --RX FIFO for IQ samples   
----      rx_smpl_fifo_wrreq      => inst8_rx_data_valid,
----      rx_smpl_fifo_data       => inst8_rx_data,
----      rx_smpl_fifo_wrfull     => open,
----      --RX Packet FIFO ports
----      rx_pct_fifo_aclrn_req   => inst9_rx_pct_fifo_aclrn_req,
----      rx_pct_fifo_wusedw      => inst2_F2H_S1_wrusedw,
----      rx_pct_fifo_wrreq       => inst9_rx_pct_fifo_wrreq,
----      rx_pct_fifo_wdata       => inst9_rx_pct_fifo_wdata  
----   );
   
-- ----------------------------------------------------------------------------
-- External DAC and ADC
-- ----------------------------------------------------------------------------
   -- Rx interface is enabled only when user_read_32 port is opened from Host. 
   process(inst0_from_fpgacfg_2, inst2_F2H_S2_open)
   begin 
      inst0_from_fpgacfg_mod_2        <= inst0_from_fpgacfg_2;
      inst0_from_fpgacfg_mod_2.rx_en  <= inst0_from_fpgacfg_2.rx_en AND inst2_F2H_S2_open;
   end process;
 
   inst10_adc3_top : entity work.adc_top
   generic map( 
      dev_family           => g_DEV_FAMILY,
      data_width           => 7,
      smpls_to_capture     => 4
      )
   port map(
      clk               => lms3_bb_adc1_clkout,
      clk_io            => lms3_bb_adc1_clkout,
      reset_n           => reset_n,
      en                => inst0_from_fpgacfg_mod_2.rx_en OR inst0_from_fpgacfg_mod_2.dlb_en 
                                                                                or dpd_tx_en,  -- B.J.    
      ch_a              => lms3_bb_adc1_da,
      ch_b              => lms3_bb_adc1_db,     
      --SDR parallel output data
      data_ch_a         => inst10_adc3_data_ch_a, 
      data_ch_b         => inst10_adc3_data_ch_b,  
      --Interleaved samples of both channels
      data_ch_ab        => inst10_adc3_rx_data,
      data_ch_ab_valid  => inst10_adc3_rx_data_valid,
      test_out          => open,
      
      --to_rxtspcfg       => inst0_to_rxtspcfg,
      --from_rxtspcfg     => inst0_from_rxtspcfg
      to_rxtspcfg       => inst0_to_rxtspcfg_3a, -- B.J.
      from_rxtspcfg     => inst0_from_rxtspcfg_3a, -- B.J.
      RYI  => x_ai_lms3, -- B.J.
      RYQ  => x_aq_lms3  -- B.J.
   );
   
   inst10_adc4_top : entity work.adc_top
   generic map( 
      dev_family           => g_DEV_FAMILY,
      data_width           => 7,
      smpls_to_capture     => 4
      )
   port map(
      clk               => lms3_bb_adc2_clkout,
      clk_io            => lms3_bb_adc2_clkout,
      reset_n           => reset_n,
      en                => inst0_from_fpgacfg_mod_2.rx_en OR inst0_from_fpgacfg_mod_2.dlb_en
                                                                                   or dpd_tx_en,  -- B.J.       
      ch_a              => lms3_bb_adc2_da,
      ch_b              => lms3_bb_adc2_db,     
      --SDR parallel output data
      data_ch_a         => inst10_adc4_data_ch_a, 
      data_ch_b         => inst10_adc4_data_ch_b,  
      --Interleaved samples of both channels
      data_ch_ab        => inst10_adc4_rx_data,
      data_ch_ab_valid  => inst10_adc4_rx_data_valid,
      test_out          => open,
      
      --to_rxtspcfg       => open,
      --from_rxtspcfg     => inst0_from_rxtspcfg
      to_rxtspcfg       => inst0_to_rxtspcfg_3b, -- B.J.
      from_rxtspcfg     => inst0_from_rxtspcfg_3b,  -- B.J.     
      RYI  => x_bi_lms3, -- B.J.
      RYQ  => x_bq_lms3  -- B.J.
   );
  
   inst11: entity work.chnl_combine
   generic map(
      diq_width   => 14
   )
   port map (
      -- Combined channels
      clk         => lms3_bb_adc1_clkout_global,
      reset_n     => reset_n,
      ch_en       => inst0_from_fpgacfg_mod_2.ch_en(1 downto 0),
      data        => inst11_data,
      data_valid  => inst11_data_valid,
      -- A chanel
      a_clk       => lms3_bb_adc1_clkout,
      a_reset_n   => reset_n,
      ai          => inst10_adc3_data_ch_a,
      aq          => inst10_adc3_data_ch_b,
      -- B chanel
      b_clk       => lms3_bb_adc2_clkout,
      b_reset_n   => reset_n,
      bi          => inst10_adc4_data_ch_a,
      bq          => inst10_adc4_data_ch_b
      
   );


 -- RX and TX module
   inst11_rxtx_top : entity work.rxtx_top
   generic map(
      DEV_FAMILY              => g_DEV_FAMILY,
      TX_EN                   => false,
      -- TX parameters
      TX_IQ_WIDTH             => 14,
      TX_N_BUFF               => g_TX_N_BUFF,              -- 2,4 valid values
      TX_IN_PCT_SIZE          => g_TX_PCT_SIZE,
      TX_IN_PCT_HDR_SIZE      => g_TX_IN_PCT_HDR_SIZE,
      TX_IN_PCT_DATA_W        => c_H2F_S2_0_RWIDTH,      -- 
      TX_IN_PCT_RDUSEDW_W     => c_H2F_S2_0_RDUSEDW_WIDTH,
      
      -- RX parameters
      RX_DATABUS_WIDTH        => c_F2H_S2_WWIDTH,
      RX_IQ_WIDTH             => 14,
      RX_INVERT_INPUT_CLOCKS  => "ON",
      RX_PCT_BUFF_WRUSEDW_W   => c_F2H_S2_WRUSEDW_WIDTH --bus width in bits 
      
   )
   port map(                                             
      from_fpgacfg            => inst0_from_fpgacfg_mod_2,
      to_tstcfg_from_rxtx     => inst11_to_tstcfg_from_rxtx,
      from_tstcfg             => inst0_from_tstcfg,      
      -- TX module signals
      tx_clk                  => inst1_pll_1_c1,
      tx_clk_reset_n          => '0',--reset_n,     
      tx_pct_loss_flg         => open,--inst11_tx_pct_loss_flg,
      tx_txant_en             => open,--inst11_tx_txant_en,  
      --Tx interface data 
      tx_smpl_fifo_wrreq      => open,--inst11_tx_smpl_fifo_wrreq,
      tx_smpl_fifo_wrfull     => '1',--inst12_tx0_wrfull,
      tx_smpl_fifo_wrusedw    => (others => '1'),--inst12_tx0_wrusedw,
      tx_smpl_fifo_data       => open,--inst11_tx_smpl_fifo_data,
      --TX packet FIFO ports
      tx_in_pct_reset_n_req   => open,--inst11_tx_in_pct_reset_n_req,
      tx_in_pct_rdreq         => open,--inst11_tx_in_pct_rdreq,
      tx_in_pct_data          => (others => '0'),--inst2_H2F_S2_0_rdata,
      tx_in_pct_rdempty       => '0',--inst2_H2F_S2_0_rempty,
      tx_in_pct_rdusedw       => (others => '1'),--inst2_H2F_S2_0_rdusedw,     
      -- RX path
      rx_clk                  => lms3_bb_adc1_clkout_global,
      rx_clk_reset_n          => reset_n,
      --RX FIFO for IQ samples   
      rx_smpl_fifo_wrreq      => inst11_data_valid,
      rx_smpl_fifo_data       => inst11_data, --inst10_rx_data,
      rx_smpl_fifo_wrfull     => inst2_F2H_S2_wfull,--open,
      --RX Packet FIFO ports
      rx_pct_fifo_aclrn_req   => inst11_rx_pct_fifo_aclrn_req,
      rx_pct_fifo_wusedw      => inst2_F2H_S2_wrusedw,
      rx_pct_fifo_wrreq       => inst11_rx_pct_fifo_wrreq,
      rx_pct_fifo_wdata       => inst11_rx_pct_fifo_wdata,
      -- RX sample nr count enable
      rx_smpl_nr_cnt_en       => '1',

      --ext_rx_en =>  '0',
      ext_rx_en =>  '0', -- not for now: dpd_tx_en,  -- B.J.

      tx_dma_en => inst2_s2_dma_en   
   
   );
 
   inst12_tx1_data   <= inst10_adc1_data_ch_b & inst10_adc1_data_ch_a;
   inst12_tx1_wrreq  <= (not inst12_tx1_wrfull) AND (inst0_from_fpgacfg_mod_2.dlb_en AND inst1_pll_0_locked);
 
   inst12_tx_src_sel <= "00" when inst0_from_fpgacfg_mod_2.rx_en = '1' else 
                        "01" when inst0_from_fpgacfg_mod_2.dlb_en = '1' else 
                        "10";

--   inst12_limegnss_gpio_top : entity work.limegnss_gpio_top
--   generic map( 
--      UART_BAUD_RATE          => 9600,
--      VCTCXO_CLOCK_FREQUENCY  => 30720000,
--      MM_CLOCK_FREQUENCY      => 100000000
--   )
--   port map(
--      areset_n          => reset_n,
--      -- SPI interface
--      -- Address and location of SPI memory module
--      -- Will be hard wired at the top level
--      tamercfg_maddress => "0000000111",
--      gnsscfg_maddress  => "0000001000",
--      -- Serial port IOs
--      sdin              => inst0_spi_0_MOSI,    -- Data in
--      sclk              => inst0_spi_0_SCLK,    -- Data clock
--      sen               => inst0_spi_0_SS_n(c_SPI0_FPGA_SS_NR), -- Enable signal (active low)
--      sdout             => inst12_sdout,        -- Data out 
--      -- Signals coming from the pins or top level serial interface
--      lreset            => reset_n,    -- Logic reset signal, resets logic cells only  (use only one reset)
--      mreset            => reset_n,    -- Memory reset signal, resets configuration memory only (use only one reset)
--      vctcxo_clk        => LMK2_CLK,    -- Clock from VCTCXO       
--      --LimeGNSS-GPIO pins
--      gnss_tx           => open,   
--      gnss_rx           => GNSS_UART_TX,  
--      gnss_tpulse       => GNSS_PPS,   
--      gnss_fix          => '0',           
--      fpga_led_g        => inst12_fpga_led_g,
--      fpga_led_r        => inst12_fpga_led_r, 
--      -- NIOS PIO
--      en                => inst12_en,     
--      -- NIOs  Avalon-MM Interface (External master)
--      mm_clock          => inst0_avmm_m0_clk_clk,
--      mm_reset          => inst0_avmm_m0_reset_reset,
--      mm_rd_req         => inst0_avmm_m0_read,
--      mm_wr_req         => inst0_avmm_m0_write,
--      mm_addr           => inst0_avmm_m0_address,
--      mm_wr_data        => inst0_avmm_m0_writedata,
--      mm_rd_data        => inst12_mm_rd_data,
--      mm_rd_datav       => inst12_mm_rd_datav,
--      mm_wait_req       => inst12_mm_wait_req,
--      -- Avalon Interrupts
--      mm_irq            => inst12_mm_irq,
      
--      -- Testing (UART logger)
--      fan_ctrl_in       => '0',
--      uart_tx           => inst12_uart_tx
      
--   );
   
   -- DAC module
   inst12_max5878_top : entity work.max5878_top
   generic map(
      g_DEV_FAMILY            => g_DEV_FAMILY,
      g_IQ_WIDTH              => g_EXT_DAC_D_WIDTH,
      g_TX0_FIFO_WRUSEDW      => 9,
      g_TX0_FIFO_DATAW        => 128,
      g_TX1_FIFO_WRUSEDW      => 9,
      g_TX1_FIFO_DATAW        => 2*g_EXT_ADC_D_WIDTH,
      g_INV_IQSEL             => 0,--Option to invert I and Q channels

      g_CFR2CFG_START_ADDR  => g_CFR2CFG_START_ADDR, -- B.J.
      g_CFR3CFG_START_ADDR  => g_CFR3CFG_START_ADDR, -- B.J.
      g_FIR2CFG_START_ADDR  => g_FIR2CFG_START_ADDR, -- B.J.
      g_FIR3CFG_START_ADDR  => g_FIR3CFG_START_ADDR  -- B.J.
   )
   port map(
      clk                  => inst1_pll_1_c1,
      clk2x                => inst1_pll_1_c0,
      clkfwd               => inst1_pll_1_c2,
      --reset_n              => reset_n and inst1_pll_1_locked and inst0_from_fpgacfg_mod_1.rx_en,
      reset_n              => reset_n and inst1_pll_1_locked and (inst0_from_fpgacfg_mod_1.rx_en 
                                                             OR dpd_tx_en), --B.J.
      --DAC#1 Outputs
      DAC1_CLK_P           => FPGA_LMS2_BB_DAC1_CLK_P,
      DAC1_CLK_N           => FPGA_LMS2_BB_DAC1_CLK_N,
      DAC1_B_P             => LMS2_BB_DAC1_B_P,
      DAC1_B_N             => LMS2_BB_DAC1_B_N,
      DAC1_SELIQ_P         => LMS2_BB_DAC1_SELIQ_P, 
      DAC1_SELIQ_N         => LMS2_BB_DAC1_SELIQ_N,     
      DAC1_PD              => open, --LMS2_BB_DAC1_PD,
      DAC1_TORB            => open, --LMS2_BB_DAC1_TORB,
      DAC1_XOR_P           => open, --LMS2_BB_DAC1_XOR_P,
      DAC1_XOR_N           => open, --LMS2_BB_DAC1_XOR_N,
      --DAC#2 Outputs
      DAC2_CLK_P           => FPGA_LMS2_BB_DAC2_CLK_P,
      DAC2_CLK_N           => FPGA_LMS2_BB_DAC2_CLK_N,
      DAC2_B_P             => LMS2_BB_DAC2_B_P,
      DAC2_B_N             => LMS2_BB_DAC2_B_N,
      DAC2_SELIQ_P         => LMS2_BB_DAC2_SELIQ_P, 
      DAC2_SELIQ_N         => LMS2_BB_DAC2_SELIQ_N,   
      DAC2_PD              => open, --LMS2_BB_DAC2_PD,
      DAC2_TORB            => open, --LMS2_BB_DAC2_TORB,
      DAC2_XOR_P           => open, --LMS2_BB_DAC2_XOR_P,
      DAC2_XOR_N           => open, --LMS2_BB_DAC2_XOR_N,
      -- Internal TX ports
      --tx_reset_n           => inst1_pll_1_locked and inst0_from_fpgacfg_mod_1.rx_en, --inst1_pll_0_locked and 
      tx_reset_n           => inst1_pll_1_locked and (inst0_from_fpgacfg_mod_1.rx_en 
                                                   OR dpd_tx_en), -- B.J.
   
      tx_src_sel           => inst12_tx_src_sel,
      -- tx0 source for DAC
      tx0_wrclk            => inst1_pll_1_c1,--inst1_pll_0_c1,
      -- tx0_reset_n          => inst1_pll_1_locked and inst0_from_fpgacfg_mod_1.rx_en, --inst1_pll_0_locked and 
      tx0_reset_n          => inst1_pll_1_locked and (inst0_from_fpgacfg_mod_1.rx_en 
                                                OR dpd_tx_en), -- B.J.
  
      tx0_wrfull           => inst12_tx0_wrfull,
      tx0_wrusedw          => inst12_tx0_wrusedw,
      tx0_wrreq            => inst9_tx_smpl_fifo_wrreq,
      tx0_data             => inst9_tx_smpl_fifo_data,
      -- Configuration data
      from_fpgacfg         => inst0_from_fpgacfg_1,
      from_txtspcfg_0      => inst0_from_txtspcfg_0,
      to_txtspcfg_0        => inst0_to_txtspcfg_0,
      from_txtspcfg_1      => inst0_from_txtspcfg_1,
      to_txtspcfg_1        => inst0_to_txtspcfg_1,
      smpl_cnt_en          => inst12_smpl_cnt_en,            
      from_fircfg_a        => inst0_from_fircfg_tx_a,  -- B.J.
      from_fircfg_b        => inst0_from_fircfg_tx_b,   -- B.J
      
      sdin                 => inst0_spi_0_MOSI,  -- Data in
      sclk                 => inst0_spi_0_SCLK,  -- Data clock
      sen                  => inst0_spi_0_SS_n(c_SPI0_FPGA_SS_NR),  -- Enable signal (active low)
      sdout                => inst12_sdout,  -- Data out  
      from_memcfg          => inst0_from_memcfg -- B.J
   );
   
   
--   inst18_IC_74HC595_top: entity work.IC_74HC595_top
--   port map(

--      clk      => CLK_LMK_FPGA_IN,
--      reset_n  => reset_n,
--      data     => inst0_from_fpgacfg_0.GPIO,
--      busy     => open,
      
--      SHCP     => SR_SCLK_LS,    -- shift register clock
--      STCP     => SR_LATCH_LS,   -- storage register clock
--      DS       => SR_DIN_LS      -- serial data
--      );

-- ----------------------------------------------------------------------------
-- Output ports
-- ----------------------------------------------------------------------------
   
--   FPGA_SPI0_MOSI    <= inst0_spi_0_MOSI;
--   FPGA_SPI0_SCLK    <= inst0_spi_0_SCLK;
--   FPGA_SPI0_LMS1_SS <= inst0_spi_0_SS_n(0);
--   FPGA_SPI0_LMS2_SS <= inst0_spi_0_SS_n(1);
   
--   inst0_OPNDRN : OPNDRN
--	port map (a_in =>inst0_spi_0_SS_n(2), a_out => FPGA_SPI0_ADF_SS); 
   
--   inst1_OPNDRN : OPNDRN
--	port map (a_in =>inst0_spi_0_SS_n(8), a_out => FPGA_SPI0_DAC_SS);
   
--   inst2_OPNDRN : OPNDRN
--	port map (a_in => inst0_spi_0_SS_n(5), a_out => FPGA_SPI0_ADC_SS);
   
--   --FPGA_AS_DCLK      <= '0';  -- inst0_spi_2_SCLK;
--   --FPGA_AS_ASDO      <= '0';  -- inst0_spi_2_MOSI;
--   --FPGA_AS_NCSO      <= '1';  -- inst0_spi_2_SS_n;
   
--   inst3_OPNDRN : OPNDRN
--	port map (a_in => inst0_gpo(0), a_out => FPGA_ADC_RESET);
   
--   -- TRX1_TDD_SW (High = TX enbled, Low = RX Enabled)
--   PMOD_A_PIN1 <= inst6_tx_ant_en when inst0_from_periphcfg.PERIPH_OUTPUT_OVRD_0(4)='0' else inst0_from_periphcfg.PERIPH_OUTPUT_VAL_0(4);         
--   -- TRX2_TDD_SW (High = TX enbled, Low = RX Enabled)
--   PMOD_A_PIN2 <= inst6_tx_ant_en when inst0_from_periphcfg.PERIPH_OUTPUT_OVRD_0(5)='0' else inst0_from_periphcfg.PERIPH_OUTPUT_VAL_0(5);         

--   -- TRX1_TDD_SW (High = TX enbled, Low = RX Enabled)
--   PMOD_A_PIN3 <= inst8_tx_ant_en when inst0_from_periphcfg.PERIPH_OUTPUT_OVRD_0(4)='0' else inst0_from_periphcfg.PERIPH_OUTPUT_VAL_0(4);         
--   -- TRX2_TDD_SW (High = TX enbled, Low = RX Enabled)
--   PMOD_A_PIN4 <= inst8_tx_ant_en when inst0_from_periphcfg.PERIPH_OUTPUT_OVRD_0(5)='0' else inst0_from_periphcfg.PERIPH_OUTPUT_VAL_0(5); 

--   gen_gpio : for i in 0 to 15 generate 
--      IOBUF_GPIO : IOBUF
--      generic map (
--         DRIVE       => 4,
--         IOSTANDARD  => "LVCMOS33",
--         SLEW        => "SLOW"
--         )
--      port map (
--         O           => gpio_o(i),     -- Buffer output
--         IO          => FPGA_GPIO(i),  -- Buffer inout port (connect directly to top-level port)
--         I           => gpio_i(i),     -- Buffer input
--         T           => gpio_t(i)      -- 3-state enable input, high=input, low=output 
--         );
--   end generate gen_gpio;
   
   
   gpio_t( 0) <= '0';
   gpio_t( 1) <= '0';
   gpio_t( 2) <= '0';
   gpio_t( 3) <= '0';
   gpio_t( 4) <= '0';
   gpio_t( 5) <= '0';
   gpio_t( 6) <= '0';
   gpio_t( 7) <= '0';
   gpio_t( 8) <= '0';
   gpio_t( 9) <= '0';
   gpio_t(10) <= '0';
   gpio_t(11) <= '0';
   gpio_t(12) <= '0';
   gpio_t(13) <= '0';
   gpio_t(14) <= '0';
   gpio_t(15) <= '0';
   
   gpio_i( 0) <= inst0_spi_0_SCLK;--LMK1_CLK;--inst1_lms1_rxpll_c1;--lms2_bb_adc1_clkout_global;--inst1_lms1_rxpll_c1;--inst0_spi_1_SCLK;         
   gpio_i( 1) <= '0';--inst0_spi_1_SCLK;--LMS1_MCLK2;--CLK100_FPGA;--lms2_bb_adc2_clkout_global;--CLK100_FPGA;--inst0_spi_1_MOSI;
   gpio_i( 2) <= '0';--inst0_spi_2_SCLK;--lms3_bb_adc1_clkout_global;--LMS1_MCLK2;--inst6_tx_ant_en;
   gpio_i( 3) <= lms3_bb_adc2_clkout_global;--FPGA_SPI1_MISO;
   gpio_i( 4) <= inst1_pll_1_c1;--inst0_spi_1_SS_n(1);
   gpio_i( 5) <= '0';
   gpio_i( 6) <= inst8_tx_ant_en;
   gpio_i( 7) <= '0';
   gpio_i( 8) <= inst1_pll_0_locked;
   gpio_i( 9) <= GNSS_TPULSE;
   gpio_i(10) <= GNSS_UART_TX;
   gpio_i(11) <= inst12_uart_tx;
   gpio_i(12) <= inst0_spi_2_SCLK;
   gpio_i(13) <= '0';
   gpio_i(14) <= inst0_spi_2_MOSI;
   gpio_i(15) <= inst0_spi_2_SS_n(0);
   

   FPGA_SPI0_SCLK       <= inst0_spi_0_SCLK;
   FPGA_SPI0_MOSI       <= inst0_spi_0_MOSI;
   FPGA_SPI0_LMS1_SS    <= inst0_spi_0_SS_n(c_SPI0_LMS1_SS_NR);
   FPGA_SPI0_LMS2_SS    <= inst0_spi_0_SS_n(c_SPI0_LMS2_SS_NR);
   FPGA_SPI0_LMS3_SS    <= inst0_spi_0_SS_n(c_SPI0_LMS3_SS_NR);
   
   
   
   -- FPGA SPI 1
   FPGA_SPI1_SCLK             <= inst0_spi_1_SCLK;
   FPGA_SPI1_MOSI             <= inst0_spi_1_MOSI;
   FPGA_SPI1_LMS2_BB_ADC1_SS  <= inst0_spi_1_SS_n(c_SPI1_LMS2_BB_ADC1_SS_NR); 
   FPGA_SPI1_LMS2_BB_ADC2_SS  <= inst0_spi_1_SS_n(c_SPI1_LMS2_BB_ADC2_SS_NR); 
   FPGA_SPI1_LMS3_BB_ADC1_SS  <= inst0_spi_1_SS_n(c_SPI1_LMS3_BB_ADC1_SS_NR);
   FPGA_SPI1_LMS3_BB_ADC2_SS  <= inst0_spi_1_SS_n(c_SPI1_LMS3_BB_ADC2_SS_NR);
   FPGA_SPI1_CDCM_SS          <= inst0_spi_1_SS_n(c_SPI1_CDCM_SS_NR);
   
   FPGA_SPI2_MOSI          <= inst0_spi_2_MOSI;
   FPGA_SPI2_SCLK          <= inst0_spi_2_SCLK;
   FPGA_SPI2_XO_DAC_SS     <= inst0_spi_2_SS_n(c_SPI2_XO_DAC_SS_NR);
   FPGA_SPI2_ADF_SS        <= inst0_spi_2_SS_n(c_SPI2_ADF_SS_NR);
   FPGA_SPI2_LMS1_TX1DAC_SS<= inst0_spi_2_SS_n(c_SPI2_TX1_DAC);
   FPGA_SPI2_LMS1_TX2DAC_SS<= inst0_spi_2_SS_n(c_SPI2_TX2_DAC);
     
   
   
   
   ---- LMS1 PA power control (Active high, by default disabled)
   --LMS1_TX1_1_EN        <= inst0_from_fpgacfg_mod_0.GPIO(0) when inst0_from_fpgacfg_mod_0.GPIO(3) = '0' else inst6_tx_ant_en; -- 0 default 
   ----LMS1_TX1_2_EN        <= inst0_from_fpgacfg_mod_0.GPIO(1) when inst0_from_fpgacfg_mod_0.GPIO(3) = '0' else inst6_tx_ant_en; -- 0 default
   --LMS1_TX2_1_EN        <= inst0_from_fpgacfg_mod_0.GPIO(2) when inst0_from_fpgacfg_mod_0.GPIO(3) = '0' else inst6_tx_ant_en; -- 0 default
   ---- RF Switch LMS1 port 1
   --RFSW1_TX1_V1         <= inst0_from_fpgacfg_mod_0.GPIO(4); -- 0 default
   --RFSW1_TRX1T_V1       <= inst0_from_fpgacfg_mod_0.GPIO(5) when inst0_from_fpgacfg_mod_0.GPIO(7) = '0' else NOT inst6_tx_ant_en; -- 0 default 
   --RFSW1_TRX1R_V1       <= inst0_from_fpgacfg_mod_0.GPIO(6); -- 1 default
   --LNA1_EN_M            <= inst0_from_fpgacfg_mod_0.GPIO(8); -- 1 default 
   --LNA1_BP_M            <= inst0_from_fpgacfg_mod_0.GPIO(9); -- 1 default 
   ---- RF Switch LMS1 port 2
   --RFSW1_TRX2T_V1       <= inst0_from_fpgacfg_mod_0.GPIO(12) when inst0_from_fpgacfg_mod_0.GPIO(15) = '0' else NOT inst6_tx_ant_en; -- 0 default
   --RFSW1_TRX2R_V1       <= inst0_from_fpgacfg_mod_0.GPIO(13);-- 1 default 
   --RFSW1_RX2_V1         <= inst0_from_fpgacfg_mod_0.GPIO(14);-- 0 default 
   --
   --
   ---- LMS2 PA power control (Active high, by default disabled)
   --LMS2_TX1_1_EN        <= inst0_from_fpgacfg_mod_1.GPIO(0) when inst0_from_fpgacfg_mod_1.GPIO(3) = '0' else inst8_tx_ant_en;  -- 0 default
   --LMS2_TX1_2_EN        <= inst0_from_fpgacfg_mod_1.GPIO(1) when inst0_from_fpgacfg_mod_1.GPIO(3) = '0' else inst8_tx_ant_en;  -- 0 default
   --LMS2_TX2_1_EN        <= inst0_from_fpgacfg_mod_1.GPIO(2) when inst0_from_fpgacfg_mod_1.GPIO(3) = '0' else inst8_tx_ant_en;  -- 0 default
   ---- RF Switch LMS2 port 1
   --RFSW2_TX1_V1         <= inst0_from_fpgacfg_mod_1.GPIO(4); -- 0 default
   --RFSW2_TRX1T_V1       <= inst0_from_fpgacfg_mod_1.GPIO(5) when inst0_from_fpgacfg_mod_1.GPIO(7) = '0' else NOT inst8_tx_ant_en; -- 0 default
   --RFSW2_TRX1R_V1       <= inst0_from_fpgacfg_mod_1.GPIO(6); -- 1 default                 
   --LNA2_EN_M            <= inst0_from_fpgacfg_mod_1.GPIO(8); -- 1 default
   --LNA2_BP_M            <= inst0_from_fpgacfg_mod_1.GPIO(9); -- 1 default
   ---- RF Switch LMS2 port 2
   --RFSW2_TRX2T_V1       <= inst0_from_fpgacfg_mod_1.GPIO(12) when inst0_from_fpgacfg_mod_1.GPIO(15) = '0' else NOT inst8_tx_ant_en;-- 0 default
   --RFSW2_TRX2R_V1       <= inst0_from_fpgacfg_mod_1.GPIO(13);-- 1 default

   RFSW_LMS1_RX1_V1   <= inst0_from_periphcfg.RF_SWITCHES(11);
   RFSW_LMS1_RX2_V1   <= inst0_from_periphcfg.RF_SWITCHES(10);
   RFSW_LMS1_TX1_V1   <= inst0_from_periphcfg.RF_SWITCHES(13);
   RFSW_LMS1_TX2_V1   <= inst0_from_periphcfg.RF_SWITCHES(12);
         
   RFSW_LMS2_RX1C_V1  <= inst0_from_periphcfg.RF_SWITCHES(2);
   RFSW_LMS2_RX2IN_V1 <= inst0_from_periphcfg.RF_SWITCHES(5);
   RFSW_LMS2_TRX1_V1  <= inst0_from_periphcfg.RF_SWITCHES(6);
   RFSW_LMS2_TRX1T_V1 <= inst0_from_periphcfg.RF_SWITCHES(7);
         
   RFSW_LMS2_RX1IN_V1 <= inst0_from_periphcfg.RF_SWITCHES(3);
   RFSW_LMS2_RX2C_V1  <= inst0_from_periphcfg.RF_SWITCHES(4);
   RFSW_LMS2_TRX2_V1  <= inst0_from_periphcfg.RF_SWITCHES(8);
   RFSW_LMS2_TRX2T_V1 <= inst0_from_periphcfg.RF_SWITCHES(9);
         
   RFSW1_LMS3_RX1_V1  <= inst0_from_periphcfg.RF_SWITCHES(0);
   RFSW1_LMS3_RX2_V1  <= inst0_from_periphcfg.RF_SWITCHES(1);
   
   LMS1_TX1_EN     <= inst0_from_periphcfg.RF_AMP_CTRL(5);
   LMS1_TX2_EN     <= inst0_from_periphcfg.RF_AMP_CTRL(4);
   LMS2_TX1_1_EN   <= inst0_from_periphcfg.RF_AMP_CTRL(3);
   LMS2_TX2_1_EN   <= inst0_from_periphcfg.RF_AMP_CTRL(2);
   LMS2_RX1_LNA_SD <= inst0_from_periphcfg.RF_AMP_CTRL(1);
   LMS2_RX2_LNA_SD <= inst0_from_periphcfg.RF_AMP_CTRL(0);
   

   CDCM_RESET_N         <= not inst0_from_cdcmcfg.CDCM_RECONFIG_START;--'1';
   CDCM_SYNCN           <= not inst0_from_cdcmcfg.CDCM_RECONFIG_START;--FPGA_SPI1_CDCM1_SS;--'1';
   
   PPS_OUT <= inst1_lms1_rxpll_c1;
   
   LMS2_RESET <= inst0_from_fpgacfg_1.LMS1_RESET;
   LMS3_RESET <= inst0_from_fpgacfg_2.LMS1_RESET;

    -- LMK1_SEL 0 = VCTCXO, 1 = External clock
   LMK1_SEL <= '0';
    -- LMS2_SEL 0 = LMK1  , 1 = FPGA source
   LMK2_SEL <= '0';

end arch;   



