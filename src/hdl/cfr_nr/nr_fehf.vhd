-- ----------------------------------------------------------------------------	
-- FILE: 	nr_fehf.vhd
-- DESCRIPTION:	Filtering engine of the phase equaliser.
-- DATE:	
-- AUTHOR(s):	
-- REVISIONS:
-- ----------------------------------------------------------------------------	
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.nr_mem_package.ALL;

-- ----------------------------------------------------------------------------
-- Entity declaration
-- ------------------------------------ ---------------------------------------
ENTITY nr_fehf IS
    PORT (
        x : IN STD_LOGIC_VECTOR(24 DOWNTO 0); -- Input signal
        -- Filter configuration
        h : marray16x16;
        -- Clock related inputs
        clk, reset, sleep : IN STD_LOGIC;
        odd, half : IN STD_LOGIC;
        y : OUT STD_LOGIC_VECTOR(24 DOWNTO 0) -- Filter output    
    );
END nr_fehf;

-- ----------------------------------------------------------------------------
-- Architecture
-- ----------------------------------------------------------------------------
ARCHITECTURE nr_fehf_arch OF nr_fehf IS

    COMPONENT Multiplier2 IS
        PORT (
            dataa : IN STD_LOGIC_VECTOR (17 DOWNTO 0);
            datab : IN STD_LOGIC_VECTOR (17 DOWNTO 0);
            result : OUT STD_LOGIC_VECTOR (35 DOWNTO 0)
        );
    END COMPONENT Multiplier2;

    COMPONENT adder IS
        GENERIC (
            res_n : NATURAL := 18;
            op_n : NATURAL := 18;
            addi : NATURAL := 1);
        PORT (
            dataa : IN STD_LOGIC_VECTOR (op_n - 1 DOWNTO 0);
            datab : IN STD_LOGIC_VECTOR (op_n - 1 DOWNTO 0);
            res : OUT STD_LOGIC_VECTOR (res_n - 1 DOWNTO 0)
        );
    END COMPONENT adder;

    SIGNAL hprim, xprim : marray16x18;
    SIGNAL mem : marray32x25;
    SIGNAL mem1 : marray16x26;
    SIGNAL res : marray16x36;
    SIGNAL res1 : marray16x26;
    SIGNAL res2 : marray8x26;
    SIGNAL res3 : marray4x26;
    SIGNAL res4 : marray2x26;
    SIGNAL res5 : mword26;
    SIGNAL en : STD_LOGIC;
BEGIN

    en <= NOT sleep;
    -- Reset and shift
    shift : PROCESS (clk)
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF en = '1' THEN
                FOR i IN 31 DOWNTO 1 LOOP
                    mem(i) <= mem(i - 1);
                END LOOP;
                IF (odd = '1') THEN
                    mem(16) <= mem(14); -- skip no.15
                    mem(15) <= (OTHERS => '0');
                END IF;
                mem(0) <= x;
            END IF;
        END IF;
    END PROCESS shift;

    l0 : FOR i IN 0 TO 15 GENERATE

        l1 : adder GENERIC MAP(res_n => 26, op_n => 25, addi => 1)
        PORT MAP(dataa => mem(i), datab => mem(31 - i), res => mem1(i));

        hprim(i) <= h(i) & "00"; -- 18 bit
        
        lnew : PROCESS (clk)
        BEGIN
            IF clk'event AND clk = '1' THEN
                IF en = '1' THEN
                    if half = '0' then
                        xprim(i) <= mem1(i)(25 DOWNTO 8);
                    else
                        xprim(i) <=  mem(i)(24) & mem(i)(24 DOWNTO 8); -- half='1' 
                    end if;                    
                END IF;
            END IF;
        END PROCESS;

        l2 : multiplier2 PORT MAP(dataa => xprim(i), datab => hprim(i), result => res(i));

        l3 : PROCESS (clk)
        BEGIN
            IF clk'event AND clk = '1' THEN
                IF en = '1' THEN
                    res1(i) <= res(i)(34 DOWNTO 9);
                END IF;
            END IF;
        END PROCESS;

    END GENERATE;

    l4 : FOR i IN 0 TO 7 GENERATE
        l5 : PROCESS (clk)
        BEGIN
            IF clk'event AND clk = '1' THEN
                IF en = '1' THEN
                    res2(i) <= res1(i) + res1(15 - i);
                END IF;
            END IF;
        END PROCESS;
    END GENERATE;

    l6 : FOR i IN 0 TO 3 GENERATE
        l7 : PROCESS (clk)
        BEGIN
            IF clk'event AND clk = '1' THEN
                IF en = '1' THEN
                    res3(i) <= res2(i) + res2(7 - i);
                END IF;
            END IF;
        END PROCESS;
    END GENERATE;

    l8 : FOR i IN 0 TO 1 GENERATE
        l9 : PROCESS (clk)
        BEGIN
            IF clk'event AND clk = '1' THEN
                IF en = '1' THEN
                    res4(i) <= res3(i) + res3(3 - i);
                END IF;
            END IF;
        END PROCESS;
    END GENERATE;

    l10 : PROCESS (clk)
    BEGIN
        IF clk'event AND clk = '1' THEN
            IF en = '1' THEN
                res5 <= res4(0) + res4(1);
            END IF;
        END IF;
    END PROCESS;

    y <= res5(24 DOWNTO 0); -- to 25 bit

END ARCHITECTURE nr_fehf_arch;
