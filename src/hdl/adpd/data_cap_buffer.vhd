-- ----------------------------------------------------------------------------	
-- FILE: 	data_cap_buffer.vhd
-- DESCRIPTION:	captures number of samples 
-- DATE:	Dec 14, 2016
-- AUTHOR(s):	Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------	
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.litepcie_pkg.ALL;
USE ieee.std_logic_unsigned.ALL;
-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
ENTITY data_cap_buffer IS
	PORT (

		wclk0 : IN STD_LOGIC; -- clk for xp_a
		wclk1 : IN STD_LOGIC; -- clk for yp_a
		wclk2 : IN STD_LOGIC; -- clk for x_a
		wclk3 : IN STD_LOGIC; -- clk for xp_b
		wclk4 : IN STD_LOGIC; -- clk for yp_b
		wclk5 : IN STD_LOGIC; -- clk for x_b
		wclk6 : IN STD_LOGIC; -- clk for x_a (LMS#1)
		wclk7 : IN STD_LOGIC; -- clk for x_b (LMS#1)

		rdclk : IN STD_LOGIC;
		clk : IN STD_LOGIC;
		reset_n : IN STD_LOGIC;
		--capture data
		ch_0_valid : IN STD_LOGIC; -- xp_a_valid 
		ch_0_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --xp_ai
		ch_0_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --xp_aq		

		ch_1_valid : IN STD_LOGIC; --yp_a_valid
		ch_1_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --yp_ai
		ch_1_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --yp_aq

		ch_2_valid : IN STD_LOGIC; --x_a_valid 
		ch_2_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --x_ai
		ch_2_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --x_aq

		ch_3_valid : IN STD_LOGIC; --xp_b_valid
		ch_3_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --xp_bi
		ch_3_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --xp_bq		

		ch_4_valid : IN STD_LOGIC; --yp_b_valid
		ch_4_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --yp_bi
		ch_4_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --yp_bq

		ch_5_valid : IN STD_LOGIC; --x_b_valid
		ch_5_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --x_bi 
		ch_5_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --x_bq

		ch_6_valid : IN STD_LOGIC;
		ch_6_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --x_ai (LMS#1) 
		ch_6_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --x_aq (LMS#1)

		ch_7_valid : IN STD_LOGIC;
		ch_7_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --x_bi (LMS#1) 
		ch_7_q : IN STD_LOGIC_VECTOR(15 DOWNTO 0); --x_bq (LMS#1)

		--capture controll signals
		cap_en : IN STD_LOGIC;
		cap_cont_en : IN STD_LOGIC;
		cap_size : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		cap_done : OUT STD_LOGIC;

		to_dma_reader : OUT t_TO_DMA_READER;
		from_dma_reader : IN t_FROM_DMA_READER;

		test_data_en : IN STD_LOGIC := '0';
		lms3_monitoring : IN STD_LOGIC
	);
END data_cap_buffer;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
ARCHITECTURE arch OF data_cap_buffer IS
	--declare signals,  components here

	--inst0 signals 
	SIGNAL inst0_cap_en : STD_LOGIC;
	SIGNAL inst0_cap_cont_en : STD_LOGIC;
	SIGNAL inst0_cap_done : STD_LOGIC;
	SIGNAL inst0_fifo_wrreq : STD_LOGIC;
	--inst1 signals 
	SIGNAL inst1_cap_en : STD_LOGIC;
	SIGNAL inst1_cap_cont_en : STD_LOGIC;
	SIGNAL inst1_cap_done : STD_LOGIC;
	SIGNAL inst1_fifo_wrreq : STD_LOGIC;
	--inst2 signals 
	SIGNAL inst2_cap_en : STD_LOGIC;
	SIGNAL inst2_cap_cont_en : STD_LOGIC;
	SIGNAL inst2_cap_done : STD_LOGIC;
	SIGNAL inst2_fifo_wrreq : STD_LOGIC;
	--inst3 signals 
	SIGNAL inst3_cap_en : STD_LOGIC;
	SIGNAL inst3_cap_cont_en : STD_LOGIC;
	SIGNAL inst3_cap_done : STD_LOGIC;
	SIGNAL inst3_fifo_wrreq : STD_LOGIC;
	--inst4 signals 
	SIGNAL inst4_cap_en : STD_LOGIC;
	SIGNAL inst4_cap_cont_en : STD_LOGIC;
	SIGNAL inst4_cap_done : STD_LOGIC;
	SIGNAL inst4_fifo_wrreq : STD_LOGIC;
	--inst5 signals 
	SIGNAL inst5_cap_en : STD_LOGIC;
	SIGNAL inst5_cap_cont_en : STD_LOGIC;
	SIGNAL inst5_cap_done : STD_LOGIC;
	SIGNAL inst5_fifo_wrreq : STD_LOGIC;
	--inst6 signals 
	SIGNAL inst6_cap_en : STD_LOGIC;
	SIGNAL inst6_cap_cont_en : STD_LOGIC;
	SIGNAL inst6_cap_done : STD_LOGIC;
	SIGNAL inst6_fifo_wrreq : STD_LOGIC;
	--inst7 signals 
	SIGNAL inst7_cap_en : STD_LOGIC;
	SIGNAL inst7_cap_cont_en : STD_LOGIC;
	SIGNAL inst7_cap_done : STD_LOGIC;
	SIGNAL inst7_fifo_wrreq : STD_LOGIC;

	--inst6 signals
	SIGNAL inst6_fifo_0_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst6_fifo_0_wrfull : STD_LOGIC;
	SIGNAL inst6_fifo_0_wrempty : STD_LOGIC;

	SIGNAL inst6_fifo_1_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst6_fifo_1_wrfull : STD_LOGIC;
	SIGNAL inst6_fifo_1_wrempty : STD_LOGIC;

	SIGNAL inst6_fifo_2_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst6_fifo_2_wrfull : STD_LOGIC;
	SIGNAL inst6_fifo_2_wrempty : STD_LOGIC;

	SIGNAL inst6_fifo_3_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst6_fifo_3_wrfull : STD_LOGIC;
	SIGNAL inst6_fifo_3_wrempty : STD_LOGIC;

	SIGNAL inst6_fifo_4_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst6_fifo_4_wrfull : STD_LOGIC;
	SIGNAL inst6_fifo_4_wrempty : STD_LOGIC;

	SIGNAL inst6_fifo_5_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst6_fifo_5_wrfull : STD_LOGIC;
	SIGNAL inst6_fifo_5_wrempty : STD_LOGIC;

	SIGNAL inst6_fifo_6_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst6_fifo_6_wrfull : STD_LOGIC;
	SIGNAL inst6_fifo_6_wrempty : STD_LOGIC;

	SIGNAL inst6_fifo_7_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst6_fifo_7_wrfull : STD_LOGIC;
	SIGNAL inst6_fifo_7_wrempty : STD_LOGIC;

	SIGNAL inst6_fifo_rdempty : STD_LOGIC;

	--general signals
	SIGNAL wclk0_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL wclk1_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL wclk2_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL wclk3_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL wclk4_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL wclk5_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL wclk6_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL wclk7_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);

	SIGNAL rdclk_reset_n_sync : STD_LOGIC_VECTOR(1 DOWNTO 0);

	TYPE state_type IS (idle, capture, capture_done, wait_cap_en_low);
	SIGNAL current_state, next_state : state_type;

	SIGNAL cap_en_sync_clk : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL cap_cont_en_sync_clk : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL cap_done_int : STD_LOGIC;

	SIGNAL cap_done_all_inst_sync_clk : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL cap_done_all_inst : STD_LOGIC;
	SIGNAL cap_done_all_inst_sync_rdclk : STD_LOGIC_VECTOR(1 DOWNTO 0);

	SIGNAL fifo_rdreq : STD_LOGIC;
	SIGNAL fifo_q : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL fifo_rdempty : STD_LOGIC;

	SIGNAL cnt : INTEGER;
	TYPE t_data_cnt IS ARRAY (3 DOWNTO 0) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL data_cnt : t_data_cnt;

	COMPONENT data_cap IS
		PORT (
			clk : IN STD_LOGIC;
			reset_n : IN STD_LOGIC;
			--capture signals
			data_valid : IN STD_LOGIC;
			cap_en : IN STD_LOGIC;
			cap_cont_en : IN STD_LOGIC;
			cap_size : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			cap_done : OUT STD_LOGIC;
			--external fifo signals
			fifo_wrreq : OUT STD_LOGIC;
			fifo_wfull : IN STD_LOGIC;
			fifo_wrempty : IN STD_LOGIC
		);
	END COMPONENT;

	COMPONENT fifo_buff IS
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
			lms3_monitoring : IN STD_LOGIC
		);
	END COMPONENT;

	SIGNAL start_read, reading : STD_LOGIC;
	SIGNAL start_read_sync_rdclk : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL cnt2 : unsigned(19 DOWNTO 0);
	SIGNAL cap_size_x6 : STD_LOGIC_VECTOR(19 DOWNTO 0);
	signal tff: std_logic;
	
BEGIN

	PROCESS (cap_size) IS
	BEGIN
		cap_size_x6 <= ("00" & cap_size & "00") - (x"00001") + ("000" & cap_size & '0');
	END PROCESS;

	PROCESS (rdclk, reset_n) IS
	BEGIN

		IF reset_n = '0' THEN
			cnt <= 0;
			cnt2 <= (OTHERS => '0');
			fifo_rdreq <= '0';
			to_dma_reader.valid <= '0';
			to_dma_reader.last <= '0';
			to_dma_reader.data <= (OTHERS => '0');
			reading <= '0';

		ELSIF rdclk'event AND rdclk = '1' THEN

			fifo_rdreq <= '0';
			to_dma_reader.valid <= '0';
			to_dma_reader.last <= '0';

			IF (inst6_fifo_rdempty = '1') AND (reading = '1') THEN
				cnt <= 0;
				cnt2 <= (OTHERS => '0');
				reading <= '0';

			ELSIF start_read_sync_rdclk(1) = '1' THEN
				reading <= '1';
			ELSIF (reading = '1') AND (inst6_fifo_rdempty = '0') AND (from_dma_reader.ready = '1') THEN

				IF cnt = 3 THEN
					cnt <= 0;
				ELSE
					cnt <= cnt + 1;
				END IF;

				IF cnt2 < (unsigned(cap_size_x6)) THEN
					cnt2 <= cnt2 + 1;
				END IF;

				data_cnt(cnt) <= fifo_q;
				fifo_rdreq <= '1';

				IF (cnt = 3) THEN
					to_dma_reader.data <= fifo_q & data_cnt(2) & data_cnt(1) & data_cnt(0);
					to_dma_reader.valid <= '1';

					IF cnt2 = (unsigned(cap_size_x6)) THEN
						to_dma_reader.last <= '1';
					END IF;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	--indicates when all buffers are collected and data all data has been read from buffers
	cap_done_int <= (inst0_cap_done AND inst1_cap_done AND inst2_cap_done AND inst3_cap_done AND inst4_cap_done AND inst5_cap_done AND
		inst6_fifo_0_wrempty AND inst6_fifo_1_wrempty AND inst6_fifo_2_wrempty AND inst6_fifo_3_wrempty AND inst6_fifo_4_wrempty AND inst6_fifo_5_wrempty) WHEN (lms3_monitoring = '1') ELSE
		(inst0_cap_done AND inst1_cap_done AND inst6_cap_done AND inst3_cap_done AND inst4_cap_done AND inst7_cap_done AND
		inst6_fifo_0_wrempty AND inst6_fifo_1_wrempty AND inst6_fifo_6_wrempty AND inst6_fifo_3_wrempty AND inst6_fifo_4_wrempty AND inst6_fifo_7_wrempty);

	--indicates when all data_capture instances are finished collecting buffer
	cap_done_all_inst <= (inst0_cap_done AND inst1_cap_done AND inst2_cap_done AND inst3_cap_done AND inst4_cap_done AND inst5_cap_done) WHEN (lms3_monitoring = '1') ELSE
		(inst0_cap_done AND inst1_cap_done AND inst6_cap_done AND inst3_cap_done AND inst4_cap_done AND inst7_cap_done);

	cap_done <= cap_done_int;

	-- ----------------------------------------------------------------------------
	-- to synchronize signals to clk domain
	-- ----------------------------------------------------------------------------
	PROCESS (clk, reset_n)BEGIN
		IF (reset_n = '0') THEN
			cap_en_sync_clk <= (OTHERS => '0');
			cap_cont_en_sync_clk <= (OTHERS => '0');
			cap_done_all_inst_sync_clk <= (OTHERS => '0');
		ELSIF (clk'event AND clk = '1') THEN
		   if (tff = '1') then
			cap_en_sync_clk <= cap_en_sync_clk(0) & cap_en;
			cap_cont_en_sync_clk <= cap_cont_en_sync_clk(0) & cap_cont_en;
			cap_done_all_inst_sync_clk <= cap_done_all_inst_sync_clk(0) & cap_done_all_inst;
		   end if;
		END IF;
	END PROCESS;

	-- ----------------------------------------------------------------------------
	-- to synchronize signals to rdclk domain
	-- ----------------------------------------------------------------------------
	PROCESS (rdclk, reset_n)BEGIN
		IF (reset_n = '0') THEN
			cap_done_all_inst_sync_rdclk <= (OTHERS => '0');
			start_read_sync_rdclk <= (OTHERS => '0');
		ELSIF (rdclk'event AND rdclk = '1') THEN
			cap_done_all_inst_sync_rdclk <= cap_done_all_inst_sync_rdclk(0) & cap_done_all_inst;
			start_read_sync_rdclk <= start_read_sync_rdclk(0) & start_read;
		END IF;
	END PROCESS;
	-- ----------------------------------------------------------------------------
	--state machine for controlling capture signal
	-- ----------------------------------------------------------------------------
	fsm_f : PROCESS (clk, reset_n)BEGIN
		IF (reset_n = '0') THEN
			current_state <= idle;
			tff <= '0';
		ELSIF (clk'event AND clk = '1') THEN
		    tff <= not tff;
			if (tff = '1') then
			     current_state <= next_state;
			end if;     
		END IF;
	END PROCESS;

	-- ----------------------------------------------------------------------------
	--state machine combo
	-- ----------------------------------------------------------------------------
	fsm : PROCESS (current_state, cap_en_sync_clk(1), cap_done_all_inst_sync_clk(1), cap_cont_en_sync_clk(1)) BEGIN

		next_state <= current_state;
		start_read <= '0';

		CASE current_state IS
			WHEN idle => --idle state 
				IF cap_en_sync_clk(1) = '1' AND cap_done_all_inst_sync_clk(1) = '0' THEN 
					next_state <= capture;
				ELSE
					next_state <= idle;
				END IF;

			WHEN capture =>
				IF cap_done_all_inst_sync_clk(1) = '1' THEN
					next_state <= capture_done;
				ELSE
					next_state <= capture;
				END IF;

			WHEN capture_done =>
				IF cap_cont_en_sync_clk(1) = '1' THEN
					next_state <= idle;
				ELSE
					next_state <= wait_cap_en_low;
				END IF;
				start_read <= '1';

			WHEN wait_cap_en_low =>
				IF cap_en_sync_clk(1) = '0' THEN
					next_state <= idle;
				ELSE
					next_state <= wait_cap_en_low;
				END IF;

			WHEN OTHERS =>
				next_state <= idle;
		END CASE;
	END PROCESS;
	-- ----------------------------------------------------------------------------
	-- Reset synchronizations
	-- ----------------------------------------------------------------------------

	--to wclk0 domain
	PROCESS (wclk0, reset_n)BEGIN
		IF (reset_n = '0') THEN
			wclk0_reset_n_sync <= (OTHERS => '0');
		ELSIF (wclk0'event AND wclk0 = '1') THEN
			wclk0_reset_n_sync <= wclk0_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;
	--to wclk1 domain
	PROCESS (wclk1, reset_n)BEGIN
		IF (reset_n = '0') THEN
			wclk1_reset_n_sync <= (OTHERS => '0');
		ELSIF (wclk1'event AND wclk1 = '1') THEN
			wclk1_reset_n_sync <= wclk1_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;
	--to wclk2 domain
	PROCESS (wclk2, reset_n)BEGIN
		IF (reset_n = '0') THEN
			wclk2_reset_n_sync <= (OTHERS => '0');
		ELSIF (wclk2'event AND wclk2 = '1') THEN
			wclk2_reset_n_sync <= wclk2_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;
	--to wclk3 domain
	PROCESS (wclk3, reset_n)BEGIN
		IF (reset_n = '0') THEN
			wclk3_reset_n_sync <= (OTHERS => '0');
		ELSIF (wclk3'event AND wclk3 = '1') THEN
			wclk3_reset_n_sync <= wclk3_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;
	--to wclk4 domain
	PROCESS (wclk4, reset_n)BEGIN
		IF (reset_n = '0') THEN
			wclk4_reset_n_sync <= (OTHERS => '0');
		ELSIF (wclk4'event AND wclk4 = '1') THEN
			wclk4_reset_n_sync <= wclk4_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;
	--to wclk5 domain
	PROCESS (wclk5, reset_n)BEGIN 
		IF (reset_n = '0') THEN
			wclk5_reset_n_sync <= (OTHERS => '0');
		ELSIF (wclk5'event AND wclk5 = '1') THEN
			wclk5_reset_n_sync <= wclk5_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;
	--to wclk6 domain
	PROCESS (wclk6, reset_n)BEGIN 
		IF (reset_n = '0') THEN
			wclk6_reset_n_sync <= (OTHERS => '0');
		ELSIF (wclk6'event AND wclk6 = '1') THEN
			wclk6_reset_n_sync <= wclk6_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;
	--to wclk7 domain
	PROCESS (wclk7, reset_n)BEGIN 
		IF (reset_n = '0') THEN
			wclk7_reset_n_sync <= (OTHERS => '0');
		ELSIF (wclk7'event AND wclk7 = '1') THEN
			wclk7_reset_n_sync <= wclk7_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;

	--to rdclk domain
	PROCESS (rdclk, reset_n)BEGIN
		IF (reset_n = '0') THEN
			rdclk_reset_n_sync <= (OTHERS => '0');
		ELSIF (rdclk'event AND rdclk = '1') THEN
			rdclk_reset_n_sync <= rdclk_reset_n_sync(0) & reset_n;
		END IF;
	END PROCESS;

	inst0_cap_cont_en <= '0';
	PROCESS (current_state)BEGIN
		IF (current_state = capture OR current_state = wait_cap_en_low OR current_state = capture_done) THEN
			inst0_cap_en <= '1';
		ELSE
			inst0_cap_en <= '0';
		END IF;
	END PROCESS;
	data_cap_inst0 : data_cap
	PORT MAP(
		clk => wclk0,
		reset_n => wclk0_reset_n_sync(1),
		data_valid => ch_0_valid,
		--capture signals
		cap_en => inst0_cap_en,
		cap_cont_en => inst0_cap_cont_en,
		cap_size => cap_size,
		cap_done => inst0_cap_done,
		--external fifo signals
		fifo_wrreq => inst0_fifo_wrreq,
		fifo_wfull => inst6_fifo_0_wrfull,
		fifo_wrempty => inst6_fifo_0_wrempty
	);

	inst1_cap_cont_en <= '0';
	PROCESS (current_state)BEGIN
		IF (current_state = capture OR current_state = wait_cap_en_low OR current_state = capture_done) THEN
			inst1_cap_en <= '1';
		ELSE
			inst1_cap_en <= '0';
		END IF;
	END PROCESS;
	data_cap_inst1 : data_cap
	PORT MAP(
		clk => wclk1,
		reset_n => wclk1_reset_n_sync(1),
		data_valid => ch_1_valid,
		--capture signals
		cap_en => inst1_cap_en,
		cap_cont_en => inst1_cap_cont_en,
		cap_size => cap_size,
		cap_done => inst1_cap_done,
		--external fifo signals
		fifo_wrreq => inst1_fifo_wrreq,
		fifo_wfull => inst6_fifo_1_wrfull,
		fifo_wrempty => inst6_fifo_1_wrempty
	);

	inst2_cap_cont_en <= '0';
	PROCESS (current_state)BEGIN
		IF (current_state = capture OR current_state = wait_cap_en_low OR current_state = capture_done) THEN
			inst2_cap_en <= '1';
		ELSE
			inst2_cap_en <= '0';
		END IF;
	END PROCESS;
	data_cap_inst2 : data_cap
	PORT MAP(
		clk => wclk2,
		reset_n => wclk2_reset_n_sync(1),
		data_valid => ch_2_valid,
		--capture signals
		cap_en => inst2_cap_en,
		cap_cont_en => inst2_cap_cont_en,
		cap_size => cap_size,
		cap_done => inst2_cap_done,
		--external fifo signals
		fifo_wrreq => inst2_fifo_wrreq,
		fifo_wfull => inst6_fifo_2_wrfull,
		fifo_wrempty => inst6_fifo_2_wrempty
	);

	inst3_cap_cont_en <= '0';
	PROCESS (current_state)BEGIN
		IF (current_state = capture OR current_state = wait_cap_en_low OR current_state = capture_done) THEN
			inst3_cap_en <= '1';
		ELSE
			inst3_cap_en <= '0';
		END IF;
	END PROCESS;
	data_cap_inst3 : data_cap
	PORT MAP(
		clk => wclk3,
		reset_n => wclk3_reset_n_sync(1),
		data_valid => ch_3_valid,
		--capture signals
		cap_en => inst3_cap_en,
		cap_cont_en => inst3_cap_cont_en,
		cap_size => cap_size,
		cap_done => inst3_cap_done,
		--external fifo signals
		fifo_wrreq => inst3_fifo_wrreq,
		fifo_wfull => inst6_fifo_3_wrfull,
		fifo_wrempty => inst6_fifo_3_wrempty
	);

	inst4_cap_cont_en <= '0';
	PROCESS (current_state)BEGIN
		IF (current_state = capture OR current_state = wait_cap_en_low OR current_state = capture_done) THEN
			inst4_cap_en <= '1';
		ELSE
			inst4_cap_en <= '0';
		END IF;
	END PROCESS;
	data_cap_inst4 : data_cap
	PORT MAP(
		clk => wclk4,
		reset_n => wclk4_reset_n_sync(1),
		data_valid => ch_4_valid,
		--capture signals
		cap_en => inst4_cap_en,
		cap_cont_en => inst4_cap_cont_en,
		cap_size => cap_size,
		cap_done => inst4_cap_done,
		--external fifo signals
		fifo_wrreq => inst4_fifo_wrreq,
		fifo_wfull => inst6_fifo_4_wrfull,
		fifo_wrempty => inst6_fifo_4_wrempty
	);

	--
	inst5_cap_cont_en <= '0';
	PROCESS (current_state)BEGIN
		IF (current_state = capture OR current_state = wait_cap_en_low OR current_state = capture_done) THEN
			inst5_cap_en <= '1';
		ELSE
			inst5_cap_en <= '0';
		END IF;
	END PROCESS;
	data_cap_inst5 : data_cap
	PORT MAP(
		clk => wclk5,
		reset_n => wclk5_reset_n_sync(1),
		data_valid => ch_5_valid,
		--capture signals
		cap_en => inst5_cap_en,
		cap_cont_en => inst5_cap_cont_en,
		cap_size => cap_size,
		cap_done => inst5_cap_done,
		--external fifo signals
		fifo_wrreq => inst5_fifo_wrreq,
		fifo_wfull => inst6_fifo_5_wrfull,
		fifo_wrempty => inst6_fifo_5_wrempty
	);
	----  end B.J.

	--
	inst6_cap_cont_en <= '0';
	PROCESS (current_state)BEGIN
		IF (current_state = capture OR current_state = wait_cap_en_low OR current_state = capture_done) THEN
			inst6_cap_en <= '1';
		ELSE
			inst6_cap_en <= '0';
		END IF;
	END PROCESS;
	data_cap_inst6 : data_cap
	PORT MAP(
		clk => wclk6,
		reset_n => wclk6_reset_n_sync(1),
		data_valid => ch_6_valid,
		--capture signals
		cap_en => inst6_cap_en,
		cap_cont_en => inst6_cap_cont_en,
		cap_size => cap_size,
		cap_done => inst6_cap_done,
		--external fifo signals
		fifo_wrreq => inst6_fifo_wrreq,
		fifo_wfull => inst6_fifo_6_wrfull,
		fifo_wrempty => inst6_fifo_6_wrempty
	);
	----  end B.J.
	--
	inst7_cap_cont_en <= '0';
	PROCESS (current_state)BEGIN
		IF (current_state = capture OR current_state = wait_cap_en_low OR current_state = capture_done) THEN
			inst7_cap_en <= '1';
		ELSE
			inst7_cap_en <= '0';
		END IF;
	END PROCESS;
	data_cap_inst7 : data_cap
	PORT MAP(
		clk => wclk7,
		reset_n => wclk7_reset_n_sync(1),
		data_valid => ch_7_valid,
		--capture signals
		cap_en => inst7_cap_en,
		cap_cont_en => inst7_cap_cont_en,
		cap_size => cap_size,
		cap_done => inst7_cap_done,
		--external fifo signals
		fifo_wrreq => inst7_fifo_wrreq,
		fifo_wfull => inst6_fifo_7_wrfull,
		fifo_wrempty => inst6_fifo_7_wrempty
	);
	----  end B.J.

	inst6_fifo_0_data <= (ch_0_q & ch_0_i) WHEN test_data_en = '0' ELSE
		(x"0302" & x"0100");
	inst6_fifo_1_data <= (ch_1_q & ch_1_i) WHEN test_data_en = '0' ELSE
		(x"0706" & x"0504");
	inst6_fifo_2_data <= (ch_2_q & ch_2_i) WHEN test_data_en = '0' ELSE
		(x"0B0A" & x"0908");
	inst6_fifo_3_data <= (ch_3_q & ch_3_i) WHEN test_data_en = '0' ELSE
		(x"0F0E" & x"0D0C");
	inst6_fifo_4_data <= (ch_4_q & ch_4_i) WHEN test_data_en = '0' ELSE
		(x"1312" & x"1110");
	inst6_fifo_5_data <= (ch_5_q & ch_5_i) WHEN test_data_en = '0' ELSE
		(x"1716" & x"1514"); 
	inst6_fifo_6_data <= (ch_6_q & ch_6_i) WHEN test_data_en = '0' ELSE
		(x"1716" & x"1514"); 
	inst6_fifo_7_data <= (ch_7_q & ch_7_i) WHEN test_data_en = '0' ELSE
		(x"1716" & x"1514"); 

	fifo_buff_inst5 : fifo_buff
	GENERIC MAP(
		dev_family => "Cyclone V GX",
		wrwidth => 32,
		wrusedw_witdth => 15, --15=32768 words 
		rdwidth => 32,
		rdusedw_width => 15,
		show_ahead => "OFF"
	)
	PORT MAP(
		--fifo 0 ports
		fifo_0_reset_n => wclk0_reset_n_sync(1),
		fifo_0_wrclk => wclk0,
		fifo_0_wrreq => inst0_fifo_wrreq,
		fifo_0_data => inst6_fifo_0_data,
		fifo_0_wrfull => inst6_fifo_0_wrfull,
		fifo_0_wrempty => inst6_fifo_0_wrempty,
		--fifo 1 ports
		fifo_1_reset_n => wclk1_reset_n_sync(1),
		fifo_1_wrclk => wclk1,
		fifo_1_wrreq => inst1_fifo_wrreq,
		fifo_1_data => inst6_fifo_1_data,
		fifo_1_wrfull => inst6_fifo_1_wrfull,
		fifo_1_wrempty => inst6_fifo_1_wrempty,
		--fifo 2 ports
		fifo_2_reset_n => wclk2_reset_n_sync(1),
		fifo_2_wrclk => wclk2,
		fifo_2_wrreq => inst2_fifo_wrreq,
		fifo_2_data => inst6_fifo_2_data,
		fifo_2_wrfull => inst6_fifo_2_wrfull,
		fifo_2_wrempty => inst6_fifo_2_wrempty,
		--fifo 3 ports
		fifo_3_reset_n => wclk3_reset_n_sync(1),
		fifo_3_wrclk => wclk3,
		fifo_3_wrreq => inst3_fifo_wrreq,
		fifo_3_data => inst6_fifo_3_data,
		fifo_3_wrfull => inst6_fifo_3_wrfull,
		fifo_3_wrempty => inst6_fifo_3_wrempty,
		--fifo 4 ports
		fifo_4_reset_n => wclk4_reset_n_sync(1),
		fifo_4_wrclk => wclk4,
		fifo_4_wrreq => inst4_fifo_wrreq,
		fifo_4_data => inst6_fifo_4_data,
		fifo_4_wrfull => inst6_fifo_4_wrfull,
		fifo_4_wrempty => inst6_fifo_4_wrempty,
		--fifo 5 ports
		fifo_5_reset_n => wclk5_reset_n_sync(1), 
		fifo_5_wrclk => wclk5, 
		fifo_5_wrreq => inst5_fifo_wrreq, 
		fifo_5_data => inst6_fifo_5_data, 
		fifo_5_wrfull => inst6_fifo_5_wrfull, 
		fifo_5_wrempty => inst6_fifo_5_wrempty, 
		--fifo 6 ports
		fifo_6_reset_n => wclk6_reset_n_sync(1), 
		fifo_6_wrclk => wclk6, 
		fifo_6_wrreq => inst6_fifo_wrreq, 
		fifo_6_data => inst6_fifo_6_data, 
		fifo_6_wrfull => inst6_fifo_6_wrfull, 
		fifo_6_wrempty => inst6_fifo_6_wrempty, 
		--fifo 7 ports
		fifo_7_reset_n => wclk7_reset_n_sync(1), 
		fifo_7_wrclk => wclk7, 
		fifo_7_wrreq => inst7_fifo_wrreq, 
		fifo_7_data => inst6_fifo_7_data, 
		fifo_7_wrfull => inst6_fifo_7_wrfull, 
		fifo_7_wrempty => inst6_fifo_7_wrempty, 

		--rd port for all fifo
		fifo_rdclk => rdclk,
		fifo_rdclk_reset_n => rdclk_reset_n_sync(1),
		fifo_cap_size => cap_size,
		fifo_rdreq => fifo_rdreq,
		fifo_q => fifo_q,
		fifo_rdempty => inst6_fifo_rdempty,

		lms3_monitoring => lms3_monitoring

	);

	--to show that fifo is not empty only when all data is captured
	fifo_rdempty <= inst6_fifo_rdempty OR (NOT cap_done_all_inst_sync_rdclk(1));

END arch;