-- ----------------------------------------------------------------------------	
-- FILE:	fpgacfg.vhd
-- DESCRIPTION:	Serial configuration interface to control TX modules
-- DATE:	June 07, 2007
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:  Borisav Jovanovic change: 01.08.2017	
-- ----------------------------------------------------------------------------	

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mem_package.all;


-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
entity adpdcfg is
	port (
		-- Address and location of this module
		-- Will be hard wired at the top level
		maddress	: in std_logic_vector(9 downto 0);
		mimo_en	: in std_logic;	-- MIMO enable, from TOP SPI (always 1)
	
		-- Serial port IOs
		sdin	: in std_logic; 	-- Data in
		sclk	: in std_logic; 	-- Data clock
		sen	: in std_logic;	-- Enable signal (active low)
		sdout	: out std_logic; 	-- Data out

		lreset	: in std_logic; 	-- Logic reset signal, resets logic cells only  (use only one reset)
		mreset	: in std_logic; 	-- Memory reset signal, resets configuration memory only (use only one reset)
		
		oen: out std_logic; --nc
		stateo: out std_logic_vector(5 downto 0);
		
		
		--ADPD
		ADPD_BUFF_SIZE 	: out std_logic_vector(15 downto 0);
		ADPD_CONT_CAP_EN	: out std_logic;
		ADPD_CAP_EN			: out std_logic;
		
		adpd_config0, adpd_config1, adpd_data: out std_logic_vector(15 downto 0);
		
		cfr0_bypass, cfr1_bypass, cfr0_sleep, cfr1_sleep: out std_logic;
		cfr0_half_order, cfr1_half_order: out std_logic_vector(7 downto 0);
		cfr0_threshold, cfr1_threshold: out std_logic_vector(15 downto 0);
	
		hb0_bypass, hb1_bypass, isinc0_bypass, isinc1_bypass: out std_logic;
		
		
		select_DACs, select_chA: out std_logic;
      
		space_cnt_rst: out std_logic;
		space_address_msb: out std_logic_vector(9 downto 0);
		
		gain_cfr_A, gain_cfr_B: out std_logic_vector(15 downto 0);
		gain_cfr0_bypass, gain_cfr1_bypass: out std_logic;
		
		temp: out std_logic_vector(7 downto 0);
		hb2_bypass, delay3: out std_logic;
      gfir0_byp, gfir1_byp: out std_logic

	);
end adpdcfg;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
architecture adpdcfg_arch of adpdcfg is

	signal inst_reg: std_logic_vector(15 downto 0);		-- Instruction register
	signal inst_reg_en: std_logic;

	signal din_reg: std_logic_vector(15 downto 0);		-- Data in register
	signal din_reg_en: std_logic;
	
	signal dout_reg: std_logic_vector(15 downto 0);		-- Data out register
	signal dout_reg_sen, dout_reg_len: std_logic;
	
	signal mem: marray32x16;									-- Config memory
	signal mem_we: std_logic;
	
	signal oe: std_logic;										-- Tri state buffers control
	signal spi_config_data_rev	: std_logic_vector(143 downto 0);
	
	-- Components
	use work.mcfg_components.mcfg32wm_fsm;
	for all: mcfg32wm_fsm use entity work.mcfg32wm_fsm(mcfg32wm_fsm_arch);

begin


	-- ---------------------------------------------------------------------------------------------
	-- Finite state machines
	-- ---------------------------------------------------------------------------------------------
	fsm: mcfg32wm_fsm port map( 
		address => maddress, mimo_en => mimo_en, inst_reg => inst_reg, sclk => sclk, sen => sen, reset => lreset,
		inst_reg_en => inst_reg_en, din_reg_en => din_reg_en, dout_reg_sen => dout_reg_sen,
		dout_reg_len => dout_reg_len, mem_we => mem_we, oe => oe, stateo => stateo);
		
	-- ---------------------------------------------------------------------------------------------
	-- Instruction register
	-- ---------------------------------------------------------------------------------------------
	inst_reg_proc: process(sclk, lreset)
		variable i: integer;
	begin
		if lreset = '0' then
			inst_reg <= (others => '0');
		elsif sclk'event and sclk = '1' then
			if inst_reg_en = '1' then
				for i in 15 downto 1 loop
					inst_reg(i) <= inst_reg(i-1);
				end loop;
				inst_reg(0) <= sdin;
			end if;
		end if;
	end process inst_reg_proc;

	-- ---------------------------------------------------------------------------------------------
	-- Data input register
	-- ---------------------------------------------------------------------------------------------
	din_reg_proc: process(sclk, lreset)
		variable i: integer;
	begin
		if lreset = '0' then
			din_reg <= (others => '0');
		elsif sclk'event and sclk = '1' then
			if din_reg_en = '1' then
				for i in 15 downto 1 loop
					din_reg(i) <= din_reg(i-1);
				end loop;
				din_reg(0) <= sdin;
			end if;
		end if;
	end process din_reg_proc;

	-- ---------------------------------------------------------------------------------------------
	-- Data output register
	-- ---------------------------------------------------------------------------------------------
	dout_reg_proc: process(sclk, lreset)
		variable i: integer;
	begin
		if lreset = '0' then
			dout_reg <= (others => '0');
		elsif sclk'event and sclk = '0' then
			-- Shift operation
			if dout_reg_sen = '1' then
				for i in 15 downto 1 loop
					dout_reg(i) <= dout_reg(i-1);
				end loop;
				dout_reg(0) <= dout_reg(15);
			-- Load operation
			elsif dout_reg_len = '1' then
				case inst_reg(4 downto 0) is	-- mux read-only outputs
					when others  => dout_reg <= mem(to_integer(unsigned(inst_reg(4 downto 0))));
				end case;
			end if;			      
		end if;
	end process dout_reg_proc;
	
	-- Tri state buffer to connect multiple serial interfaces in parallel
	--sdout <= dout_reg(7) when oe = '1' else 'Z';

--	sdout <= dout_reg(7);
--	oen <= oe;

	sdout <= dout_reg(15) and oe;
	oen <= oe;
	-- ---------------------------------------------------------------------------------------------
	-- Configuration memory
	-- --------------------------------------------------------------------------------------------- 
	ram: process(sclk, mreset) --(remap)
	begin
		-- Defaults
		if mreset = '0' then	
			--Read only registers
			mem(0)	<= "0100000000000000"; -- 00 free, ADPD_BUFF_SIZE
			mem(1)	<= "0000000011000000"; -- 14 free, ADPD_CONT_CAP_EN, ADPD_CAP_EN
			mem(2)	<= "0000000000000000"; -- adpd_config0(15:0) 
			mem(3)	<= "0000000000000000"; -- adpd_config1(15:0)
			mem(4)	<= "0000000000000000"; -- adpd_data(15:0)
			mem(5)	<= "0000010000100111"; -- 16 free,  --cfr0_order =39, gain_cfr0_bypass
			mem(6)	<= "1111111111111111"; -- 16 free,  -- 1.0
			mem(7)	<= "0000010000100111"; -- 16 free,  --cfr1_order =39, gain_cfr1_bypass 
			mem(8)	<= "1111111111111111"; -- 16 free,  -- 1.0
			mem(9)	<= "0000000000000000"; -- 16 free,			
			mem(10)	<= "0000000000000000"; -- 16 free, 
			mem(11)	<= "0010000000000000"; -- 16 free, -- gain_crf_A [-4..4]
			mem(12)	<= "0010000000000000"; -- 16 free, -- gain_crf_B 
			mem(13)	<= "0000000000000000"; -- 16 free, 
			mem(14)	<= "0000000000000000"; -- 16 free, 
			mem(15)	<= "0000000000000000"; -- 16 free, 
			mem(16)	<= "0000000000000000"; -- 16 free, 
			mem(17)	<= "0000000000000000"; -- 16 free,
			mem(18)  <= "0000000000000000"; -- 16 free, 
			mem(19)	<= "0000000000000000"; -- 16 free, 
			mem(20)	<= "0000000000000000"; -- 16 free, 
			mem(21)	<= "0000000000000000"; -- 16 free, 
			mem(22)	<= "0000000000000000"; -- 16 free, 
			mem(23)	<= "0000000000000000"; -- 16 free, 		

		elsif sclk'event and sclk = '1' then
				if mem_we = '1' then
					mem(to_integer(unsigned(inst_reg(4 downto 0)))) <= din_reg(14 downto 0) & sdin;
				end if;
				
				if dout_reg_len = '0' then
				end if;
				
		end if;
	end process ram;
	
	-- ---------------------------------------------------------------------------------------------
	-- Decoding logic
	-- ---------------------------------------------------------------------------------------------
		ADPD_BUFF_SIZE 	<=mem(0);  -- not important
		
		
		ADPD_CAP_EN			<=mem(1)(0);
		ADPD_CONT_CAP_EN	<=mem(1)(1);
		
	-- HB1
	   hb0_bypass  <= mem(15)(2);
		select_DACs<= mem(15)(6);
		
	-- HB2		
		hb1_bypass  <= mem(15)(3);
		select_chA<= mem(15)(7);

   -- HBP
	   hb2_bypass  <= mem(15)(8);	
	   delay3<= mem(15)(9);	
	---	
		isinc0_bypass  <= mem(15)(4);
		isinc1_bypass  <= mem(15)(5);
		
		
		adpd_config0		<= mem(2)(15 downto 0); 
		adpd_config1		<= mem(3)(15 downto 0); 
	   adpd_data		   <= mem(4)(15 downto 0);
		
		cfr0_half_order <= mem(5)(7 downto 0);
		cfr0_sleep   <= mem(5)(8);
	   cfr0_bypass  <= mem(5)(9);		
		gain_cfr0_bypass<= mem(5)(10);		
		cfr0_threshold <= mem(6)(15 downto 0);
		
		cfr1_half_order <= mem(7)(7 downto 0);
		cfr1_sleep   <= mem(7)(8);
	   cfr1_bypass  <= mem(7)(9);
	   gain_cfr1_bypass<= mem(7)(10);
		
		cfr1_threshold <= mem(8)(15 downto 0);		
		space_cnt_rst<= mem(9)(0);		
		space_address_msb(9 downto 0)<= mem(10)(9 downto 0);
		
		gain_cfr_A<= mem(11) (15 downto 0);
		gain_cfr_B<= mem(12) (15 downto 0);
		
		temp<= mem(13)(7 downto 0);
      gfir0_byp <= mem(14)(0);
      gfir1_byp <= mem(14)(1);
		

end adpdcfg_arch;
