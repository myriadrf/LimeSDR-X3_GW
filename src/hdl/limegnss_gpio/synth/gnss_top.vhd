-- ----------------------------------------------------------------------------
-- FILE:          gnss_top.vhd
-- DESCRIPTION:   top module for GNSS
-- DATE:          5:17 PM Friday, March 2, 2018
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
--NOTES:
-- ----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity gnss_top is
   port (
      -- SPI interface
      -- Address and location of SPI memory module
      -- Will be hard wired at the top level
      maddress             : in  std_logic_vector(9 downto 0);   
      -- Serial port IOs
      sdin                 : in  std_logic;   -- Data in
      sclk                 : in  std_logic;   -- Data clock
      sen                  : in  std_logic;   -- Enable signal (active low)
      sdout                : out std_logic;   -- Data out
      
      gnss_enabled         : out std_logic;
   
      -- Signals coming from the pins or top level serial interface
      lreset               : in  std_logic;   -- Logic reset signal, resets logic cells only  (use only one reset)
      mreset               : in  std_logic;   -- Memory reset signal, resets configuration memory only (use only one reset)
      clk                  : in  std_logic;
      reset_n              : in  std_logic;
      data                 : in  std_logic_vector(7 downto 0);  --NMEA data character
      data_v               : in  std_logic;                     --NMEA data valid
      
      gagsa_fix            : out std_logic;
      gbgsa_fix            : out std_logic;
      glgsa_fix            : out std_logic;
      gngsa_fix            : out std_logic;
      gpgsa_fix            : out std_logic;
      any_fix              : out std_logic



        );
end gnss_top;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture arch of gnss_top is
--declare signals,  components here
signal gagsa_fix_internal     : std_logic;
signal gbgsa_fix_internal     : std_logic;
signal glgsa_fix_internal     : std_logic;
signal gngsa_fix_internal     : std_logic;
signal gpgsa_fix_internal     : std_logic;
--inst0
signal inst0_reset_n          : std_logic;

signal inst0_GAGSA_valid      : std_logic;
signal inst0_GBGSA_valid      : std_logic;
signal inst0_GLGSA_valid      : std_logic;
signal inst0_GNGSA_valid      : std_logic;
signal inst0_GPGSA_valid      : std_logic;
signal inst0_GAGSA_fix        : std_logic_vector(7 downto 0);
signal inst0_GBGSA_fix        : std_logic_vector(7 downto 0);
signal inst0_GLGSA_fix        : std_logic_vector(7 downto 0);
signal inst0_GNGSA_fix        : std_logic_vector(7 downto 0);
signal inst0_GPGSA_fix        : std_logic_vector(7 downto 0);
signal inst0_GNRMC_valid      : std_logic;
signal inst0_GNRMC_utc        : std_logic_vector(79 downto 0);
signal inst0_GNRMC_status     : std_logic_vector(7 downto 0);
signal inst0_GNRMC_lat        : std_logic_vector(87 downto 0);
signal inst0_GNRMC_long       : std_logic_vector(95 downto 0);
signal inst0_GNRMC_speed      : std_logic_vector(55 downto 0);
signal inst0_GNRMC_course     : std_logic_vector(47 downto 0);
signal inst0_GNRMC_date       : std_logic_vector(47 downto 0);

--inst1
signal inst1_GAGSA_valid_bcd  : std_logic;
signal inst1_GBGSA_valid_bcd  : std_logic;
signal inst1_GLGSA_valid_bcd  : std_logic;
signal inst1_GNGSA_valid_bcd  : std_logic;
signal inst1_GPGSA_valid_bcd  : std_logic;
signal inst1_GAGSA_fix_bcd    : std_logic_vector(3 downto 0);
signal inst1_GBGSA_fix_bcd    : std_logic_vector(3 downto 0);
signal inst1_GLGSA_fix_bcd    : std_logic_vector(3 downto 0);
signal inst1_GNGSA_fix_bcd    : std_logic_vector(3 downto 0);                    
signal inst1_GPGSA_fix_bcd    : std_logic_vector(3 downto 0);                  
signal inst1_GNRMC_valid_bcd  : std_logic;                   
signal inst1_GNRMC_utc_bcd    : std_logic_vector(35 downto 0);
signal inst1_GNRMC_status     : std_logic;
signal inst1_GNRMC_lat_bcd    : std_logic_vector(31 downto 0);
signal inst1_GNRMC_lat_n_s    : std_logic;
signal inst1_GNRMC_long_bcd   : std_logic_vector(35 downto 0);
signal inst1_GNRMC_long_e_w   : std_logic;
signal inst1_GNRMC_speed_bcd  : std_logic_vector(23 downto 0);
signal inst1_GNRMC_course_bcd : std_logic_vector(19 downto 0);
signal inst1_GNRMC_date_bcd   : std_logic_vector(23 downto 0);

--inst2
signal inst2_gnrmc_lat        : std_logic_vector(32 downto 0);
signal inst2_gnrmc_long       : std_logic_vector(36 downto 0);
signal inst2_en               : std_logic;

begin



sync_reg0 : entity work.sync_reg 
port map(clk, reset_n, inst2_en, inst0_reset_n);
gnss_enabled <= inst0_reset_n;
-- ----------------------------------------------------------------------------
-- NMEA message parser
-- ----------------------------------------------------------------------------
nmea_parser_inst0 : entity work.nmea_parser
   port map(
      clk            => clk,
      reset_n        => inst0_reset_n,
      data           => data,
      data_v         => data_v,
      
      GAGSA_valid    => inst0_GAGSA_valid,
      GBGSA_valid    => inst0_GBGSA_valid,
      GLGSA_valid    => inst0_GLGSA_valid,
      GNGSA_valid    => inst0_GNGSA_valid,
      GPGSA_valid    => inst0_GPGSA_valid,
      GAGSA_fix      => inst0_GAGSA_fix,
      GBGSA_fix      => inst0_GBGSA_fix,
      GLGSA_fix      => inst0_GLGSA_fix,
      GNGSA_fix      => inst0_GNGSA_fix,
      GPGSA_fix      => inst0_GPGSA_fix,
      
      GNRMC_valid    => inst0_GNRMC_valid,
      GNRMC_utc      => inst0_GNRMC_utc,
      GNRMC_status   => inst0_GNRMC_status,
      GNRMC_lat      => inst0_GNRMC_lat,
      GNRMC_long     => inst0_GNRMC_long,
      GNRMC_speed    => inst0_GNRMC_speed,
      GNRMC_course   => inst0_GNRMC_course,
      GNRMC_date     => inst0_GNRMC_date
    
   );
   
-- ----------------------------------------------------------------------------
-- String to BCD converter
-- ----------------------------------------------------------------------------   
   nmea_str_to_bcd_inst1 : entity work.nmea_str_to_bcd
   port map(
      clk              => clk,
      reset_n          => inst0_reset_n,
      GAGSA_valid_str  => inst0_GAGSA_valid,
      GBGSA_valid_str  => inst0_GBGSA_valid,
      GLGSA_valid_str  => inst0_GLGSA_valid,
      GNGSA_valid_str  => inst0_GNGSA_valid,
      GPGSA_valid_str  => inst0_GPGSA_valid,
      GAGSA_fix_str    => inst0_GAGSA_fix,
      GBGSA_fix_str    => inst0_GBGSA_fix,
      GLGSA_fix_str    => inst0_GLGSA_fix,
      GNGSA_fix_str    => inst0_GNGSA_fix,
      GPGSA_fix_str    => inst0_GPGSA_fix,
      GNRMC_valid_str  => inst0_GNRMC_valid,
      GNRMC_utc_str    => inst0_GNRMC_utc,
      GNRMC_status_str => inst0_GNRMC_status,
      GNRMC_lat_str    => inst0_GNRMC_lat,
      GNRMC_long_str   => inst0_GNRMC_long,
      GNRMC_speed_str  => inst0_GNRMC_speed,
      GNRMC_course_str => inst0_GNRMC_course,
      GNRMC_date_str   => inst0_GNRMC_date,
      
      GAGSA_valid_bcd  => inst1_GAGSA_valid_bcd,
      GBGSA_valid_bcd  => inst1_GBGSA_valid_bcd,
      GLGSA_valid_bcd  => inst1_GLGSA_valid_bcd,
      GNGSA_valid_bcd  => inst1_GNGSA_valid_bcd,
      GPGSA_valid_bcd  => inst1_GPGSA_valid_bcd,
      GAGSA_fix_bcd    => inst1_GAGSA_fix_bcd,
      GBGSA_fix_bcd    => inst1_GBGSA_fix_bcd,
      GLGSA_fix_bcd    => inst1_GLGSA_fix_bcd,
      GNGSA_fix_bcd    => inst1_GNGSA_fix_bcd,
      GPGSA_fix_bcd    => inst1_GPGSA_fix_bcd,
      GNRMC_valid_bcd  => inst1_GNRMC_valid_bcd,
      GNRMC_utc_bcd    => inst1_GNRMC_utc_bcd,
      GNRMC_status     => inst1_GNRMC_status,
      GNRMC_lat_bcd    => inst1_GNRMC_lat_bcd,
      GNRMC_lat_n_s    => inst1_GNRMC_lat_n_s,
      GNRMC_long_bcd   => inst1_GNRMC_long_bcd,
      GNRMC_long_e_w   => inst1_GNRMC_long_e_w,
      GNRMC_speed_bcd  => inst1_GNRMC_speed_bcd,
      GNRMC_course_bcd => inst1_GNRMC_course_bcd,
      GNRMC_date_bcd   => inst1_GNRMC_date_bcd
      
   );
   
   inst2_gnrmc_lat   <= inst1_GNRMC_lat_n_s & inst1_GNRMC_lat_bcd;
   inst2_gnrmc_long  <= inst1_GNRMC_long_e_w & inst1_GNRMC_long_bcd;
   
-- ----------------------------------------------------------------------------
-- SPI memory
-- ----------------------------------------------------------------------------    
   gnsscfg_inst2 : entity work.gnsscfg
   port map(
      maddress          => maddress,                
      mimo_en           => '1',          
      sdin              => sdin,          
      sclk              => sclk,          
      sen               => sen,          
      sdout             => sdout,          
      lreset            => lreset,          
      mreset            => mreset,          
      oen               => open,         
      stateo            => open,               
      en                => inst2_en,     
      gprmc_utc         => inst1_GNRMC_utc_bcd,
      gprmc_status      => inst1_GNRMC_status,
      gprmc_lat         => inst2_gnrmc_lat,
      gprmc_long        => inst2_gnrmc_long,
      gprmc_speed       => inst1_GNRMC_speed_bcd,
      gprmc_course      => inst1_GNRMC_course_bcd,
      gprmc_date        => inst1_GNRMC_date_bcd,     
      gpgsa_fix         => inst1_GPGSA_fix_bcd,
      gagsa_fix         => inst1_GAGSA_fix_bcd,
      gbgsa_fix         => inst1_GBGSA_fix_bcd,
      glgsa_fix         => inst1_GLGSA_fix_bcd
      
   );
   
-- ----------------------------------------------------------------------------
-- FIX flag
-- ----------------------------------------------------------------------------    
   process(clk, reset_n)
   begin
      if reset_n = '0' then
         gagsa_fix_internal <= '0';
         gbgsa_fix_internal <= '0';
         glgsa_fix_internal <= '0';
         gngsa_fix_internal <= '0'; 
         gpgsa_fix_internal <= '0';
      elsif (clk'event AND clk='1') then
         if inst1_GAGSA_fix_bcd = x"3" then 
            gagsa_fix_internal <= '1';
         else 
            gagsa_fix_internal <= '0';
         end if;
         
         if inst1_GBGSA_fix_bcd = x"3" then 
            gbgsa_fix_internal <= '1';
         else 
            gbgsa_fix_internal <= '0';
         end if;
         
         if inst1_GLGSA_fix_bcd = x"3" then 
            glgsa_fix_internal <= '1';
         else 
            glgsa_fix_internal <= '0';
         end if;
         
         if inst1_GNGSA_fix_bcd = x"3" then 
            gngsa_fix_internal <= '1';
         else 
            gngsa_fix_internal <= '0';
         end if;
         
         if inst1_GPGSA_fix_bcd = x"3" then 
            gpgsa_fix_internal <= '1';
         else 
            gpgsa_fix_internal <= '0';
         end if; 
         
      end if;
   end process;
   
gagsa_fix <= gagsa_fix_internal;
gbgsa_fix <= gbgsa_fix_internal; 
glgsa_fix <= glgsa_fix_internal;
gngsa_fix <= gngsa_fix_internal;
gpgsa_fix <= gpgsa_fix_internal;

any_fix   <= gagsa_fix_internal or gbgsa_fix_internal or glgsa_fix_internal or gngsa_fix_internal or gpgsa_fix_internal;
   
   
  
end arch;   


