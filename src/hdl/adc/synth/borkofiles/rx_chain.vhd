-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.1.1 Build 200 11/30/2016 SJ Lite Edition"
-- CREATED		"Wed May 24 09:24:42 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all;


LIBRARY work;
use work.rxtspcfg_pkg.all; 

ENTITY rx_chain IS 
	PORT
	(
      clk            : IN  STD_LOGIC;
      nrst           : IN  STD_LOGIC;
      HBD_ratio      : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
      RXI            : IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
      RXQ            : IN  STD_LOGIC_VECTOR(17 DOWNTO 0);
      xen            : OUT STD_LOGIC;
      RYI            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      RYQ            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      to_rxtspcfg    : out t_TO_RXTSPCFG;
      from_rxtspcfg  : in  t_FROM_RXTSPCFG
      
	);
END rx_chain;

ARCHITECTURE bdf_type OF rx_chain IS 

COMPONENT gcorr
	PORT(clk : IN STD_LOGIC;
		 nrst : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 byp : IN STD_LOGIC;
		 gc : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
		 x : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 y : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;

COMPONENT iqcorr
	PORT(clk : IN STD_LOGIC;
		 nrst : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 byp : IN STD_LOGIC;
		 pcw : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 xi : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 xq : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 yi : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		 yq : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dccorra
	PORT(clk : IN STD_LOGIC;
		 nrst : IN STD_LOGIC;
		 en : IN STD_LOGIC;
		 bypass : IN STD_LOGIC;
		 avg : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 xi : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 xq : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		 yi : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
		 yq : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	dc_byp :  STD_LOGIC;
SIGNAL	dccorr :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	gc_byp :  STD_LOGIC;
SIGNAL	gci :  STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL	gcq :  STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL	H :  STD_LOGIC;
SIGNAL	i_dccorr :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	i_iqcorr :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	iqcorrctr :  STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL	L :  STD_LOGIC;
SIGNAL	mod_en :  STD_LOGIC;
SIGNAL	ph_byp :  STD_LOGIC;
SIGNAL	q_dccorr :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	q_iqcorr :  STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(0 TO 31);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(0 TO 15);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(0 TO 15);

BEGIN 

SYNTHESIZED_WIRE_0 <= "00000000000000000000000000000000";
SYNTHESIZED_WIRE_1 <= "0000000000000000";
SYNTHESIZED_WIRE_2 <= "0000000000000000";

b2v_inst : gcorr
PORT MAP(clk => clk,
		 nrst => nrst,
		 en => mod_en,
		 byp => gc_byp,
		 gc => gci,
		 x => RXI,
		 y => i_iqcorr);


b2v_inst1 : gcorr
PORT MAP(clk => clk,
		 nrst => nrst,
		 en => mod_en,
		 byp => gc_byp,
		 gc => gcq,
		 x => RXQ,
		 y => q_iqcorr);

b2v_inst2 : iqcorr
PORT MAP(clk => clk,
		 nrst => nrst,
		 en => mod_en,
		 byp => ph_byp,
		 pcw => iqcorrctr,
		 xi => i_iqcorr,
		 xq => q_iqcorr,
		 yi => i_dccorr,
		 yq => q_dccorr);


b2v_inst3 : dccorra
PORT MAP(clk => clk,
		 nrst => nrst,
		 en => mod_en,
		 bypass => dc_byp,
		 avg => dccorr,
		 xi => i_dccorr,
		 xq => q_dccorr,
		 yi => RYI,
		 yq => RYQ);

to_rxtspcfg.rxen        <= '1';
to_rxtspcfg.capd        <= SYNTHESIZED_WIRE_0;
to_rxtspcfg.rxtspout_i  <= SYNTHESIZED_WIRE_1;
to_rxtspcfg.rxtspout_q  <= SYNTHESIZED_WIRE_2;
      
mod_en   <= from_rxtspcfg.en;
gc_byp   <= from_rxtspcfg.gc_byp; 
ph_byp   <= from_rxtspcfg.ph_byp;
dc_byp   <= from_rxtspcfg.dc_byp;
dccorr   <= from_rxtspcfg.dccorr_avg;
gci      <= from_rxtspcfg.gcorri;
gcq      <= from_rxtspcfg.gcorrq;
iqcorrctr <= from_rxtspcfg.iqcorr; 


H <= '1';
L <= '0';
END bdf_type;