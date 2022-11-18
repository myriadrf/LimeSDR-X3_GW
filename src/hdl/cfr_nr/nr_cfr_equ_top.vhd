-- ----------------------------------------------------------------------------
-- FILE:          nr_cfrtop.vhd
-- DESCRIPTION:   Top file for 5G CFR, FIR 
-- DATE:          
-- AUTHOR(s):     Lime Microsystems
-- REVISIONS:
-- ----------------------------------------------------------------------------

-- ----------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.txtspcfg_pkg.ALL;
USE work.memcfg_pkg.ALL;
USE work.fircfg_pkg.ALL;
-- ----------------------------------------------------------------------------
-- Entity declaration
-- ----------------------------------------------------------------------------
ENTITY nr_cfr_equ_top IS
    GENERIC (
        CFR2CFG_START_ADDR : INTEGER := 768;
        CFR3CFG_START_ADDR : INTEGER := 832;
        FIR2CFG_START_ADDR : INTEGER := 896;
        FIR3CFG_START_ADDR : INTEGER := 960
    );
    PORT (
        clk : IN STD_LOGIC;
        reset_n : IN STD_LOGIC;
        mem_reset_n : IN STD_LOGIC;
        from_memcfg : IN t_FROM_MEMCFG;

        sdin : IN STD_LOGIC;
        sclk : IN STD_LOGIC;
        sen : IN STD_LOGIC;
        sdout : OUT STD_LOGIC;

        -- inputs and outputs
        ai_in, aq_in, bi_in, bq_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        ai_out, aq_out, bi_out, bq_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        xen, yen : OUT STD_LOGIC;

        from_txtspcfg_0 : IN t_FROM_TXTSPCFG; -- TxTSP configuration, channel A
        to_txtspcfg_0 : OUT t_TO_TXTSPCFG;
        from_txtspcfg_1 : IN t_FROM_TXTSPCFG; -- TxTSP configuration, channel B 
        to_txtspcfg_1 : OUT t_TO_TXTSPCFG;
        from_fircfg_a : IN t_FROM_FIRCFG; -- Equaliser, channel A
        from_fircfg_b : IN t_FROM_FIRCFG -- Equaliser, channel B 
    );
END nr_cfr_equ_top;

ARCHITECTURE struct OF nr_cfr_equ_top IS
    -- TO BE CHANGED BY OTHER COMPONENT
    COMPONENT nr_hb1 IS
        PORT (
            xi1 : IN STD_LOGIC_VECTOR(17 DOWNTO 0); -- I input signal
            xq1 : IN STD_LOGIC_VECTOR(17 DOWNTO 0); -- Q input signal
            n : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Clock division ratio is n+1
            sleep, bypass : IN STD_LOGIC; -- Sleep
            clk : IN STD_LOGIC; -- Clock and reset
            reset : IN STD_LOGIC;
            xen : OUT STD_LOGIC; -- HBI input enable
            yi1 : OUT STD_LOGIC_VECTOR(17 DOWNTO 0); -- I output signal
            yq1 : OUT STD_LOGIC_VECTOR(17 DOWNTO 0); -- Q output signal
            delay : IN STD_LOGIC);
    END COMPONENT nr_hb1;

    COMPONENT nr_cfr IS
        GENERIC (nd : NATURAL := 40);
        PORT (
            sleep : IN STD_LOGIC; -- Sleep signal
            clk : IN STD_LOGIC; -- Clock
            reset : IN STD_LOGIC; -- Reset
            reset_mem_n : IN STD_LOGIC;
            bypass : IN STD_LOGIC; --  Bypass
            odd : IN STD_LOGIC;
            xi : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            xq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            threshold : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            maddressf0 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            maddressf1 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            mimo_en : IN STD_LOGIC;
            sdin : IN STD_LOGIC; -- Data in
            sclk : IN STD_LOGIC; -- Data clock
            sen : IN STD_LOGIC; -- Enable signal (active low)
            sdout : OUT STD_LOGIC; -- Data out
            oen : OUT STD_LOGIC;
            yi : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            yq : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            xen : OUT STD_LOGIC);
    END COMPONENT nr_cfr;

    COMPONENT iqim_gain_corr IS
        PORT (
            clk, reset_n, en, bypass : IN STD_LOGIC;
            ypi : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            ypq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            gain_ch : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            ypi_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            ypq_o : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT iqim_gain_corr;

    COMPONENT nr_gfirhf IS
        PORT (
            sleep : IN STD_LOGIC; -- Sleep signal
            clk : IN STD_LOGIC; -- Clock
            reset : IN STD_LOGIC; -- Reset
            reset_mem_n : IN STD_LOGIC;
            bypass : IN STD_LOGIC;
            odd, half : IN STD_LOGIC;
            xi : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            xq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            maddressf0 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            maddressf1 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            mimo_en : IN STD_LOGIC;
            sdin : IN STD_LOGIC; -- Data in
            sclk : IN STD_LOGIC; -- Data clock
            sen : IN STD_LOGIC; -- Enable signal (active low)
            sdout : OUT STD_LOGIC; -- Data out
            oen : OUT STD_LOGIC;
            --yi : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
            --yq : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
            yi : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
            yq : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
            xen : OUT STD_LOGIC
        );
    END COMPONENT nr_gfirhf;

    COMPONENT invsinc26 IS
        PORT (
            clk : IN STD_LOGIC; -- Clock
            reset : IN STD_LOGIC; -- Reset
            en : IN STD_LOGIC; -- Sleep mode control
            x1 : IN STD_LOGIC_VECTOR(17 DOWNTO 0); -- Input
            y1 : OUT STD_LOGIC_VECTOR(17 DOWNTO 0) -- Output
        );
    END COMPONENT invsinc26;

    COMPONENT adder IS
        GENERIC (
            res_n : NATURAL := 18;
            op_n : NATURAL := 18;
            addi : NATURAL := 1);
        PORT (
            dataa : IN STD_LOGIC_VECTOR (op_n - 1 DOWNTO 0);
            datab : IN STD_LOGIC_VECTOR (op_n - 1 DOWNTO 0);
            res : OUT STD_LOGIC_VECTOR (res_n - 1 DOWNTO 0));
    END COMPONENT adder;

    --SIGNAL sai_6, saq_6 : STD_LOGIC_VECTOR(24 DOWNTO 0);
    SIGNAL sai_6, saq_6 : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL sai_11, saq_11 : STD_LOGIC_VECTOR(21 DOWNTO 0);
    SIGNAL sai_1, saq_1, sai_2, saq_2, sai_8, saq_8, sai_9, saq_9 : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL sai_3, saq_3, sai_4, saq_4, sai_5, saq_5, sai_7, saq_7, sai_12, saq_12 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL sai_10, saq_10 : STD_LOGIC_VECTOR(13 DOWNTO 0);

    --SIGNAL sbi_6, sbq_6 : STD_LOGIC_VECTOR(24 DOWNTO 0);
    SIGNAL sbi_6, sbq_6 : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL sbi_11, sbq_11 : STD_LOGIC_VECTOR(21 DOWNTO 0);
    SIGNAL sbi_1, sbq_1, sbi_2, sbq_2, sbi_8, sbq_8, sbi_9, sbq_9 : STD_LOGIC_VECTOR(17 DOWNTO 0);
    SIGNAL sbi_3, sbq_3, sbi_4, sbq_4, sbi_5, sbq_5, sbi_7, sbq_7, sbi_12, sbq_12 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL sbi_10, sbq_10 : STD_LOGIC_VECTOR(13 DOWNTO 0);

    SIGNAL xen_insta_1, hb1_delay_insta_1 : STD_LOGIC;
    SIGNAL cfr_sleep_insta_2, cfr_bypass_insta_2, cfr_odd_insta_2, sdout_insta_2, xen_insta_2 : STD_LOGIC;
    SIGNAL gain_insta_3, cfr_threshold_insta_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL gain_bypass_insta_3 : STD_LOGIC;
    SIGNAL fir_sleep_insta_4, fir_bypass_insta_4, fir_odd_insta_4, sdout_insta_4 : STD_LOGIC;

    SIGNAL xen_instb_1, hb1_delay_instb_1 : STD_LOGIC;
    SIGNAL cfr_sleep_instb_2, cfr_bypass_instb_2, cfr_odd_instb_2, sdout_instb_2, xen_instb_2 : STD_LOGIC;
    SIGNAL gain_instb_3, cfr_threshold_instb_2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL gain_bypass_instb_3 : STD_LOGIC;
    SIGNAL fir_sleep_instb_4, fir_bypass_instb_4, fir_odd_instb_4, sdout_instb_4 : STD_LOGIC;

    SIGNAL sen0, sen1 : STD_LOGIC;
    SIGNAL xena, bypass_insta_1, bypass_insta_2, bypass_insta_3, bypass_insta_4, isinc_bypass_insta_6, equ_bypass_insta_7 : STD_LOGIC;
    SIGNAL xenb, bypass_instb_1, bypass_instb_2, bypass_instb_3, bypass_instb_4, isinc_bypass_instb_6, equ_bypass_instb_7 : STD_LOGIC;

    SIGNAL zeroes, saq_7p, sbq_7p : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL invertq_insta_6, invertq_instb_6 : STD_LOGIC;
    
    SIGNAL dccorr_ai_out : std_logic_vector(15 downto 0);
    SIGNAL dccorr_aq_out : std_logic_vector(15 downto 0);
    SIGNAL dccorr_bi_out : std_logic_vector(15 downto 0);
    SIGNAL dccorr_bq_out : std_logic_vector(15 downto 0);
    
    SIGNAL reset_n_gated_a : STD_LOGIC;
    SIGNAL reset_n_gated_b : STD_LOGIC;
-- attribute MARK_DEBUG : string;
-- attribute MARK_DEBUG of ai_out : signal is "TRUE";
-- attribute MARK_DEBUG of aq_out : signal is "TRUE";
-- attribute MARK_DEBUG of bi_out : signal is "TRUE";
-- attribute MARK_DEBUG of bq_out : signal is "TRUE";

BEGIN

    reset_n_gated_a <= reset_n or from_txtspcfg_0.insel;
    reset_n_gated_b <= reset_n or from_txtspcfg_1.insel;
    
    zeroes <= (OTHERS => '0');
    sdout <= sdout_insta_2 OR sdout_instb_2 OR sdout_insta_4 OR sdout_instb_4;
    sen0 <= sen OR (NOT from_memcfg.mac(0));
    sen1 <= sen OR (NOT from_memcfg.mac(1));

    bypass_insta_1 <= from_txtspcfg_0.hbi_byp;
    hb1_delay_insta_1 <= from_txtspcfg_0.hbi_del;
    cfr_sleep_insta_2 <= from_txtspcfg_0.cfr_sleep;
    cfr_bypass_insta_2 <= from_txtspcfg_0.cfr_byp;
    cfr_odd_insta_2 <= from_txtspcfg_0.cfr_odd;
    cfr_threshold_insta_2 <= from_txtspcfg_0.cfr_threshold;
    gain_insta_3 <= from_txtspcfg_0.cfr_gain;
    gain_bypass_insta_3 <= from_txtspcfg_0.cfr_gain_byp;
    fir_sleep_insta_4 <= from_txtspcfg_0.fir_sleep;
    fir_bypass_insta_4 <= from_txtspcfg_0.fir_byp;
    fir_odd_insta_4 <= from_txtspcfg_0.fir_odd;
    isinc_bypass_insta_6 <= from_txtspcfg_0.isinc_byp;
    equ_bypass_insta_7 <= from_txtspcfg_0.equaliser_byp;
    invertq_insta_6 <= from_txtspcfg_0.invertq;

    bypass_instb_1 <= from_txtspcfg_1.hbi_byp;
    hb1_delay_instb_1 <= from_txtspcfg_1.hbi_del;
    cfr_sleep_instb_2 <= from_txtspcfg_1.cfr_sleep;
    cfr_bypass_instb_2 <= from_txtspcfg_1.cfr_byp;
    cfr_odd_instb_2 <= from_txtspcfg_1.cfr_odd;
    cfr_threshold_instb_2 <= from_txtspcfg_1.cfr_threshold;
    gain_bypass_instb_3 <= from_txtspcfg_1.cfr_gain_byp;
    gain_instb_3 <= from_txtspcfg_1.cfr_gain;
    fir_sleep_instb_4 <= from_txtspcfg_1.fir_sleep;
    fir_bypass_instb_4 <= from_txtspcfg_1.fir_byp;
    fir_odd_instb_4 <= from_txtspcfg_1.fir_odd;
    isinc_bypass_instb_6 <= from_txtspcfg_1.isinc_byp;
    equ_bypass_instb_7 <= from_txtspcfg_1.equaliser_byp;
    invertq_instb_6 <= from_txtspcfg_1.invertq;
    xen <= xena;
    yen <= xena;

    ----- channel A  -----    

    xena <= xen_insta_1 WHEN bypass_insta_1 = '0' ELSE
        '1';

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF xena = '1' THEN
                sai_1 <= ai_in & "00";
                saq_1 <= aq_in & "00";
            END IF;
        END IF;
    END PROCESS;

    insta_1 : nr_hb1
    PORT MAP(
        xi1 => sai_1, -- 122.88 MSPS
        xq1 => saq_1,
        n => x"00",
        sleep => bypass_insta_1,
        bypass => bypass_insta_1,
        clk => clk, -- 245.76 MSPS
        reset => reset_n,
        xen => xen_insta_1,
        yi1 => sai_2, -- 245.76 MSPS
        yq1 => saq_2,
        delay => hb1_delay_insta_1
    );

    sai_3 <= sai_2 (17 DOWNTO 2);
    saq_3 <= saq_2 (17 DOWNTO 2);

    bypass_insta_2 <= cfr_bypass_insta_2; -- OR bypass_insta_1;
    insta_2 : nr_cfr -- 245.76 MSPS
    GENERIC MAP(nd => 40)
    PORT MAP(
        -- Clock related inputs
        sleep => cfr_sleep_insta_2,
        clk => clk, -- 245.76 MSPS
        reset => reset_n,
        reset_mem_n => mem_reset_n,
        bypass => bypass_insta_2,
        odd => cfr_odd_insta_2,
        xi => sai_3,
        xq => saq_3,
        threshold => cfr_threshold_insta_2,
        maddressf0 => STD_LOGIC_VECTOR(to_unsigned(CFR2CFG_START_ADDR/64, 9)),
        maddressf1 => STD_LOGIC_VECTOR(to_unsigned(CFR3CFG_START_ADDR/64, 9)),

        mimo_en => '1',
        sdin => sdin,
        sclk => sclk,
        sen => sen0,
        sdout => sdout_insta_2, -- Data out
        oen => OPEN,
        yi => sai_4, -- 16 bits
        yq => saq_4, -- 16 bits
        xen => xen_insta_2);

    bypass_insta_3 <= gain_bypass_insta_3; -- OR bypass_insta_1;
    insta_3 : iqim_gain_corr
    PORT MAP(
        clk => clk, -- 245.76 MSPS
        reset_n => reset_n,
        en => '1',
        bypass => bypass_insta_3,
        ypi => sai_4,
        ypq => saq_4,
        gain_ch => gain_insta_3,
        ypi_o => sai_5, -- 16 bits
        ypq_o => saq_5 -- 16 bits
    );

    bypass_insta_4 <= fir_bypass_insta_4; -- OR bypass_insta_1;
    insta_4 : nr_gfirhf
    PORT MAP(
        sleep => fir_sleep_insta_4, -- sleep_a,
        clk => clk, -- 245.76 MSPS
        reset => reset_n,
        reset_mem_n => mem_reset_n,
        bypass => bypass_insta_4,
        odd => fir_odd_insta_4,
        half => '0',
        xi => sai_5,
        xq => saq_5,
        maddressf0 => STD_LOGIC_VECTOR(to_unsigned(FIR2CFG_START_ADDR/64, 9)),
        maddressf1 => STD_LOGIC_VECTOR(to_unsigned(FIR3CFG_START_ADDR/64, 9)),

        mimo_en => '1',
        sdin => sdin,
        sclk => sclk,
        sen => sen0,
        sdout => sdout_insta_4,
        oen => OPEN,
        yi => sai_6, -- 18 bits
        yq => saq_6, -- 18 bits
        xen => OPEN
    );

    insta_5 : ENTITY work.tx_chain
        PORT MAP
        (
            clk => clk,
            nrst => reset_n_gated_a,
            --TXI => sai_6(24 DOWNTO 7), -- 18bit
            --TXQ => saq_6(24 DOWNTO 7),
            TXI => sai_6, -- 18bit
            TXQ => saq_6,
            TYI => sai_7, -- 16 bit
            TYQ => saq_7,
            from_txtspcfg => from_txtspcfg_0, -- TxTSP configuration, channel A
            to_txtspcfg => to_txtspcfg_0
        );
        
        
        dccorr_ai_out <= sai_7;
        dccorr_aq_out <= saq_7;
        
    Adder1 : adder GENERIC MAP(res_n => 16, op_n => 16, addi => 0)
    PORT MAP(dataa => zeroes, datab => saq_7, res => saq_7p);
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF invertq_insta_6 = '0' THEN
                saq_8 <= saq_7 & "00";
            ELSE
                saq_8 <= saq_7p & "00";
            END IF;
            sai_8 <= sai_7 & "00"; -- 18 bit            
        END IF;
    END PROCESS;

    insta_6_i : invsinc26 PORT MAP(
        clk => clk,
        reset => reset_n_gated_a,
        en => '1',
        x1 => sai_8,
        y1 => sai_9); -- 18 bit
    insta_6_q : invsinc26 PORT MAP(
        clk => clk,
        reset => reset_n_gated_a,
        en => '1',
        x1 => saq_8,
        y1 => saq_9); -- 18 bit

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF isinc_bypass_insta_6 = '0' THEN
                sai_10 <= sai_9(17 DOWNTO 4);
                saq_10 <= saq_9(17 DOWNTO 4);
            ELSE
                sai_10 <= sai_8(17 DOWNTO 4);
                saq_10 <= saq_8(17 DOWNTO 4);
            END IF;
        END IF;
    END PROCESS;

    insta_7_i : ENTITY work.firfilt
        GENERIC MAP(
            g_IN_WIDTH => 14, -- Input data width
            g_OUT_WIDTH => 22, -- Output data width
            g_COEF_WIDTH => 18, -- Filter coeficients width      
            g_N_TAP => 16 -- Filter order
        )
        PORT MAP(
            clk => clk,
            reset_n => reset_n_gated_a,
            en => reset_n_gated_a,
            from_fircfg => from_fircfg_a,
            d => sai_10,
            q => sai_11,
            q_valid => OPEN,
            chI => '1'
        );
    -- 16 bit
    insta_7_q : ENTITY work.firfilt
        GENERIC MAP(
            g_IN_WIDTH => 14, -- Input data width
            g_OUT_WIDTH => 22, -- Output data width
            g_COEF_WIDTH => 18, -- Filter coeficients width      
            g_N_TAP => 16 -- Filter order
        )
        PORT MAP(
            clk => clk,
            reset_n => reset_n_gated_a,
            en => reset_n_gated_a,
            from_fircfg => from_fircfg_a,
            d => saq_10,
            q => saq_11,
            q_valid => OPEN,
            chI => '0'
        );

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF equ_bypass_insta_7 = '0' THEN
                sai_12 <= sai_11(21 DOWNTO 6);
                saq_12 <= saq_11(21 DOWNTO 6);
            ELSE
                sai_12 <= (sai_10 & "00");
                saq_12 <= (saq_10 & "00");
            END IF;
        END IF;
    END PROCESS;

    -- 16 bit
    --PROCESS (clk)
    --BEGIN
    --    IF rising_edge(clk) THEN
    ai_out <= sai_12 when reset_n_gated_a = '1' else dccorr_ai_out;
    aq_out <= saq_12 when reset_n_gated_a = '1' else dccorr_aq_out;
    --    END IF;
    --END PROCESS;

    ----- channel B  -----
    xenb <= xen_instb_1 WHEN bypass_instb_1 = '0' ELSE
        '1';
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF xenb = '1' THEN
                sbi_1 <= bi_in & "00";
                sbq_1 <= bq_in & "00";
            END IF;
        END IF;
    END PROCESS;

    instb_1 : nr_hb1
    PORT MAP(
        xi1 => sbi_1, -- 122.88 MSPS
        xq1 => sbq_1,
        n => x"00",
        sleep => bypass_instb_1,
        bypass => bypass_instb_1,
        clk => clk, -- 245.76 MSPS
        reset => reset_n,
        xen => xen_instb_1,
        yi1 => sbi_2, -- 245.76 MSPS
        yq1 => sbq_2,
        delay => hb1_delay_instb_1
    );

    sbi_3 <= sbi_2 (17 DOWNTO 2);
    sbq_3 <= sbq_2 (17 DOWNTO 2);

    bypass_instb_2 <= cfr_bypass_instb_2; --bypass_instb_1;
    instb_2 : nr_cfr
    GENERIC MAP(nd => 40)
    PORT MAP(
        -- Clock related inputs
        sleep => cfr_sleep_instb_2,
        clk => clk, -- 245.76 MSPS
        reset => reset_n,
        reset_mem_n => mem_reset_n,
        bypass => bypass_instb_2,
        odd => cfr_odd_instb_2,
        xi => sbi_3,
        xq => sbq_3,
        threshold => cfr_threshold_instb_2,
        maddressf0 => STD_LOGIC_VECTOR(to_unsigned(CFR2CFG_START_ADDR/64, 9)),
        maddressf1 => STD_LOGIC_VECTOR(to_unsigned(CFR3CFG_START_ADDR/64, 9)),
        mimo_en => '1',
        sdin => sdin,
        sclk => sclk,
        sen => sen1,
        sdout => sdout_instb_2, -- Data out
        oen => OPEN,
        yi => sbi_4, -- 16 bits
        yq => sbq_4, -- 16 bits
        xen => xen_instb_2);

    bypass_instb_3 <= gain_bypass_instb_3; --bypass_instb_1 OR 
    instb_3 : iqim_gain_corr
    PORT MAP(
        clk => clk, -- 245.76 MSPS
        reset_n => reset_n,
        en => '1',
        bypass => bypass_instb_3,
        ypi => sbi_4,
        ypq => sbq_4,
        gain_ch => gain_instb_3,
        ypi_o => sbi_5, -- 16 bits
        ypq_o => sbq_5 -- 16 bits
    );

    bypass_instb_4 <= fir_bypass_instb_4; --bypass_instb_1 OR
    instb_4 : nr_gfirhf
    PORT MAP(
        sleep => fir_sleep_instb_4, -- sleep_a,
        clk => clk, -- 245.76 MSPS
        reset => reset_n,
        reset_mem_n => mem_reset_n,
        bypass => bypass_instb_4,
        odd => fir_odd_instb_4,
        half => '0',
        xi => sbi_5,
        xq => sbq_5,
        maddressf0 => STD_LOGIC_VECTOR(to_unsigned(FIR2CFG_START_ADDR/64, 9)),
        maddressf1 => STD_LOGIC_VECTOR(to_unsigned(FIR3CFG_START_ADDR/64, 9)),
        mimo_en => '1',
        sdin => sdin,
        sclk => sclk,
        sen => sen1,
        sdout => sdout_instb_4,
        oen => OPEN,
        yi => sbi_6, -- 18 bits
        yq => sbq_6, -- 18 bits
        xen => OPEN --inst5_xen
    );

    instb_5 : ENTITY work.tx_chain
        PORT MAP
        (
            clk => clk,
            nrst => reset_n_gated_b,
            --TXI => sbi_6(24 DOWNTO 7), -- 18bit
            --TXQ => sbq_6(24 DOWNTO 7),
            TXI => sbi_6, -- 18bit
            TXQ => sbq_6,
            TYI => sbi_7, -- 16 bit
            TYQ => sbq_7,
            from_txtspcfg => from_txtspcfg_1, -- TxTSP configuration, channel B 
            to_txtspcfg => to_txtspcfg_1
        );
        
    dccorr_bi_out <= sbi_7;
    dccorr_bq_out <= sbq_7;

    Adder2 : adder GENERIC MAP(res_n => 16, op_n => 16, addi => 0)
    PORT MAP(dataa => zeroes, datab => sbq_7, res => sbq_7p);
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF invertq_instb_6 = '0' THEN
                sbq_8 <= sbq_7 & "00";
            ELSE
                sbq_8 <= sbq_7p & "00";
            END IF;
            sbi_8 <= sbi_7 & "00"; -- 18 bit            
        END IF;
    END PROCESS;

    instb_6_i : invsinc26 PORT MAP(
        clk => clk,
        reset => reset_n_gated_b,
        en => '1',
        x1 => sbi_8,
        y1 => sbi_9); -- 18 bit
    instb_6_q : invsinc26 PORT MAP(
        clk => clk,
        reset => reset_n_gated_b,
        en => '1',
        x1 => sbq_8,
        y1 => sbq_9); -- 18 bit

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF isinc_bypass_instb_6 = '0' THEN
                sbi_10 <= sbi_9(17 DOWNTO 4);
                sbq_10 <= sbq_9(17 DOWNTO 4);
            ELSE
                sbi_10 <= sbi_8(17 DOWNTO 4);
                sbq_10 <= sbq_8(17 DOWNTO 4);
            END IF;
        END IF;
    END PROCESS;

    instb_7_i : ENTITY work.firfilt
        GENERIC MAP(
            g_IN_WIDTH => 14, -- Input data width
            g_OUT_WIDTH => 22, -- Output data width
            g_COEF_WIDTH => 18, -- Filter coeficients width      
            g_N_TAP => 16 -- Filter order
        )
        PORT MAP(
            clk => clk,
            reset_n => reset_n_gated_b,
            en => reset_n_gated_b,
            from_fircfg => from_fircfg_b,
            d => sbi_10,
            q => sbi_11,
            q_valid => OPEN,
            chI => '1'
        );

    instb_7_q : ENTITY work.firfilt
        GENERIC MAP(
            g_IN_WIDTH => 14, -- Input data width
            g_OUT_WIDTH => 22, -- Output data width
            g_COEF_WIDTH => 18, -- Filter coeficients width      
            g_N_TAP => 16 -- Filter order
        )
        PORT MAP(
            clk => clk,
            reset_n => reset_n_gated_b,
            en => reset_n_gated_b,
            from_fircfg => from_fircfg_b,
            d => sbq_10,
            q => sbq_11,
            q_valid => OPEN,
            chI => '0'
        );

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF equ_bypass_instb_7 = '0' THEN
                sbi_12 <= sbi_11(21 DOWNTO 6);
                sbq_12 <= sbq_11(21 DOWNTO 6);
            ELSE
                sbi_12 <= (sbi_10 & "00");
                sbq_12 <= (sbq_10 & "00");
            END IF;
        END IF;
    END PROCESS;

    --PROCESS (clk)
    --BEGIN
    --    IF rising_edge(clk) THEN
    bi_out <= sbi_12 when reset_n_gated_b = '1' else dccorr_bi_out;
    bq_out <= sbq_12 when reset_n_gated_b = '1' else dccorr_bq_out;
    --    END IF;
    --END PROCESS;

END ARCHITECTURE struct;