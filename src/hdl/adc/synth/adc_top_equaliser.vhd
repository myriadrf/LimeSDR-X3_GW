-- ----------------------------------------------------------------------------	
-- FILE        : adc_top_equaliser.vhd
-- DESCRIPTION : Top ADC module with equaliser
-- DATE        : 
-- AUTHOR(s)   : Lime Microsystems
-- REVISIONS   :
-- ----------------------------------------------------------------------------	
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.rxtspcfg_pkg.ALL;
USE work.fircfg_pkg.ALL;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
ENTITY adc_top_equaliser IS
    GENERIC (
        dev_family : STRING := "Cyclone V";
        data_width : INTEGER := 7;
        smpls_to_capture : INTEGER := 4 -- 2,4,6,8...
    );
    PORT (

        clk : IN STD_LOGIC;
        clk_io : IN STD_LOGIC;
        reset_n : IN STD_LOGIC;
        en : IN STD_LOGIC;

        ch_a : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0); --Input to DDR cells from pins
        ch_b : IN STD_LOGIC_VECTOR(data_width - 1 DOWNTO 0); --Input to DDR cells from pins

        --SDR parallel output data
        data_ch_a : OUT STD_LOGIC_VECTOR(data_width * 2 - 1 DOWNTO 0); --Sampled data ch A
        data_ch_b : OUT STD_LOGIC_VECTOR(data_width * 2 - 1 DOWNTO 0); --Sampled data ch B 
        --Interleaved samples of both channels
        data_ch_ab : OUT STD_LOGIC_VECTOR(data_width * 2 * smpls_to_capture - 1 DOWNTO 0); -- ... B1 A1 B0 A0 
        data_ch_ab_valid : OUT STD_LOGIC;
        test_out : OUT STD_LOGIC_VECTOR(55 DOWNTO 0);
        to_rxtspcfg : OUT t_TO_RXTSPCFG;
        from_rxtspcfg : IN t_FROM_RXTSPCFG;
        from_fircfg : IN t_FROM_FIRCFG -- B.J.
    );
END adc_top_equaliser;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
ARCHITECTURE arch OF adc_top_equaliser IS
    --declare signals,  components here
    SIGNAL inst0_data_ch_a : STD_LOGIC_VECTOR (data_width * 2 - 1 DOWNTO 0);
    SIGNAL inst0_data_ch_b : STD_LOGIC_VECTOR (data_width * 2 - 1 DOWNTO 0);

    --inst1 signals
    SIGNAL inst1_RXI : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL inst1_RXQ : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL inst1_RYI : STD_LOGIC_VECTOR (17 DOWNTO 0);
    SIGNAL inst1_RYQ : STD_LOGIC_VECTOR (17 DOWNTO 0);

    TYPE reg_chain_type IS ARRAY (0 TO smpls_to_capture/2 - 1) OF STD_LOGIC_VECTOR(data_width * 4 - 1 DOWNTO 0);

    SIGNAL reg_chain : reg_chain_type;

    SIGNAL valid_cnt : unsigned(7 DOWNTO 0);
    SIGNAL valid_cnt_ovrfl : STD_LOGIC;

    SIGNAL reset_n_sync : STD_LOGIC;
    SIGNAL debug : STD_LOGIC;
    
    signal counter0 : signed(15 downto 0) := (others => '0');
    signal counter1 : signed(20 downto 0) := (others => '0');


--    ATTRIBUTE MARK_DEBUG : STRING;
--    ATTRIBUTE MARK_DEBUG OF inst1_RYI : SIGNAL IS "TRUE";
--    ATTRIBUTE MARK_DEBUG OF inst1_RYQ : SIGNAL IS "TRUE";
--    ATTRIBUTE MARK_DEBUG OF inst1_RXI : SIGNAL IS "TRUE";
--    ATTRIBUTE MARK_DEBUG OF inst1_RXQ : SIGNAL IS "TRUE";
--    ATTRIBUTE MARK_DEBUG OF debug : SIGNAL IS "TRUE";

    SIGNAL inst1_AI, inst1_AQ : STD_LOGIC_VECTOR(13 DOWNTO 0); -- BJ
    SIGNAL fir_out_ai, fir_out_aq : STD_LOGIC_VECTOR(21 DOWNTO 0); -- BJ
    SIGNAL inst1_RYI_P, inst1_RYQ_P : STD_LOGIC_VECTOR(17 DOWNTO 0); -- BJ

BEGIN

    process(clk, reset_n)
    begin
        if reset_n = '0' or debug = '1' then
            counter0 <= (others => '0');
            counter1 <= (others => '0');
        elsif rising_edge(clk) then
            counter0 <= counter0 + 1;
            counter1 <= counter1 + 1;
        end if;
    end process;

    debug <= from_rxtspcfg.debug_ctrl;

    sync_reg0 : ENTITY work.sync_reg
        PORT MAP(clk, reset_n, en, reset_n_sync);

    -- ----------------------------------------------------------------------------
    -- ADC instance
    -- ----------------------------------------------------------------------------   
    ADS4246_inst0 : ENTITY work.ADS4246
        GENERIC MAP(
            dev_family => dev_family
        )
        PORT MAP(
            clk => clk,
            clk_io => clk_io,
            reset_n => reset_n_sync,
            ch_a => ch_a,
            ch_b => ch_b,
            data_ch_a => inst0_data_ch_a,
            data_ch_b => inst0_data_ch_b
        );

    inst1_RXI <= inst0_data_ch_a & "0000";
    inst1_RXQ <= inst0_data_ch_b & "0000";

    rx_chain_inst1 : ENTITY work.rx_chain
        PORT MAP
        (
            clk => clk,
            nrst => reset_n_sync,
            HBD_ratio => (OTHERS => '0'),
            RXI => inst1_RXI,
            RXQ => inst1_RXQ,
            xen => OPEN,
            RYI => inst1_RYI_P,
            RYQ => inst1_RYQ_P,
            to_rxtspcfg => to_rxtspcfg,
            from_rxtspcfg => from_rxtspcfg
        );

    -- --- ----------------------------------------------------------------------------
    -- Receive filters  -- BJ
    -- ----------------------------------------------------------------------------
    inst1_AI <= inst1_RYI_P(17 DOWNTO 4);
    inst1_AQ <= inst1_RYQ_P(17 DOWNTO 4);

    AI_fir : ENTITY work.firfilt
        GENERIC MAP(
            g_IN_WIDTH => 14, -- Input data width
            g_OUT_WIDTH => 22, -- Output data width
            g_COEF_WIDTH => 18, -- Filter coeficients width      
            g_N_TAP => 16 -- Filter order
        )
        PORT MAP(
            clk => clk,
            reset_n => reset_n_sync,
            en => reset_n_sync,
            from_fircfg => from_fircfg,
            d => inst1_AI,
            q => fir_out_ai,
            q_valid => OPEN,
            chI => '1'
        );

    AQ_fir : ENTITY work.firfilt
        GENERIC MAP(
            g_IN_WIDTH => 14, -- Input data width
            g_OUT_WIDTH => 22, -- Output data width
            g_COEF_WIDTH => 18, -- Filter coeficients width      
            g_N_TAP => 16 -- Filter order
        )
        PORT MAP(
            clk => clk,
            reset_n => reset_n_sync,
            en => reset_n_sync,
            from_fircfg => from_fircfg,
            d => inst1_AQ,
            q => fir_out_aq,
            q_valid => OPEN,
            chI => '0'
        );

    inst1_RYI(17 DOWNTO 0) <= fir_out_ai(21 DOWNTO 4) WHEN from_rxtspcfg.gfir3_byp = '0' ELSE
    inst1_RYI_P(17 DOWNTO 0);
    inst1_RYQ(17 DOWNTO 0) <= fir_out_aq(21 DOWNTO 4) WHEN from_rxtspcfg.gfir3_byp = '0' ELSE
    inst1_RYQ_P(17 DOWNTO 0);

    ---------------------------------------------------------------------------
    -- Chain of registers for storing samples
    -- ----------------------------------------------------------------------------
    PROCESS (clk, reset_n_sync)
    BEGIN
        IF reset_n_sync = '0' THEN
            reg_chain <= (OTHERS => (OTHERS => '0'));
        ELSIF (clk'event AND clk = '1') THEN
            FOR i IN 0 TO smpls_to_capture/2 - 1 LOOP
                IF i = 0 THEN
                    reg_chain(0) <= inst1_RYI(17 DOWNTO 18 - data_width * 2) & inst1_RYQ(17 DOWNTO 18 - data_width * 2);
                ELSE
                    reg_chain(i) <= reg_chain(i - 1);
                END IF;
            END LOOP;
        END IF;
    END PROCESS;
    -- ----------------------------------------------------------------------------
    -- Reg chain to output port
    -- ----------------------------------------------------------------------------
    PROCESS (reg_chain)
    BEGIN
        FOR i IN 0 TO smpls_to_capture/2 - 1 LOOP
            data_ch_ab(i * data_width * 4 + data_width * 4 - 1 DOWNTO i * data_width * 4) <= reg_chain(smpls_to_capture/2 - 1 - i);
        END LOOP;
    END PROCESS;

    test_out <= "00000000000000111111111111110000000000000011111111111111";
    PROCESS (clk, reset_n_sync)
    BEGIN
        IF reset_n_sync = '0' THEN
            valid_cnt <= (OTHERS => '0');
            data_ch_ab_valid <= '0';
            valid_cnt_ovrfl <= '0';
        ELSIF (clk'event AND clk = '1') THEN
            IF valid_cnt < smpls_to_capture/2 - 1 THEN
                valid_cnt <= valid_cnt + 1;
                valid_cnt_ovrfl <= '0';
            ELSE
                valid_cnt <= (OTHERS => '0');
                valid_cnt_ovrfl <= '1';
            END IF;
            data_ch_ab_valid <= valid_cnt_ovrfl;
        END IF;
    END PROCESS;

    -- ----------------------------------------------------------------------------
    -- Output ports
    -- ----------------------------------------------------------------------------        
    -- B.J.
    --data_ch_a <=  inst0_data_ch_a;  --inst1_RYI(17 downto 4); 
    --data_ch_b <=  inst0_data_ch_b;  --inst1_RYQ(17 downto 4);
--    data_ch_a <= inst1_RYI(17 DOWNTO 4) WHEN debug = '1' ELSE
--        inst1_RXI(17 DOWNTO 4);
--    data_ch_b <= inst1_RYQ(17 DOWNTO 4) WHEN debug = '1' ELSE
--        inst1_RXQ(17 DOWNTO 4);
data_ch_a <=  inst1_RYI(17 downto 4)  when debug = '1' else std_logic_vector(counter0(13 downto 0));             
data_ch_b <=  inst1_RYQ(17 downto 4)  when debug = '1' else std_logic_vector(counter1(14 downto 1));

END arch;