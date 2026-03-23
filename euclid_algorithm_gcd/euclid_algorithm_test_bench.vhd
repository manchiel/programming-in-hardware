library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity euclid_algorithm_tb is
end entity;

architecture Behavioral of euclid_algorithm_tb is

    constant iCLK_period : time := 20 ns;

    component euclid_algorithm is
        port (
            iCLK : in  std_logic;
            iRST : in  std_logic;
            iA   : in  std_logic_vector(15 downto 0);
            iB   : in  std_logic_vector(15 downto 0);
            oGCD : out std_logic_vector(15 downto 0)
        );
    end component;

    signal sCLK : std_logic := '0';
    signal sRST : std_logic := '0';
    signal sA   : std_logic_vector(15 downto 0) := (others => '0');
    signal sB   : std_logic_vector(15 downto 0) := (others => '0');
    signal sGCD : std_logic_vector(15 downto 0);

begin

    uut: euclid_algorithm
        port map (
            iCLK => sCLK,
            iRST => sRST,
            iA   => sA,
            iB   => sB,
            oGCD => sGCD
        );

    clk_process : process
    begin
        sCLK <= '1';
        wait for iCLK_period / 2;
        sCLK <= '0';
        wait for iCLK_period / 2;
    end process;

    stimulus : process
    begin

        -- =============================================
        -- Test 1: GCD(12, 8) = 4
        -- =============================================
        sRST <= '1';
        wait for 2.25 * iCLK_period;
        sRST <= '0';

        sA <= x"000C";  -- 12
        sB <= x"0008";  -- 8
        wait for 20 * iCLK_period;
        -- expected oGCD = 0x0004 (4)

        -- =============================================
        -- Test 2: GCD(48, 18) = 6
        -- =============================================
        sRST <= '1';
        wait for 2.25 * iCLK_period;
        sRST <= '0';

        sA <= x"0030";  -- 48
        sB <= x"0012";  -- 18
        wait for 20 * iCLK_period;
        -- expected oGCD = 0x0006 (6)

        -- =============================================
        -- Test 3: GCD(100, 75) = 25
        -- =============================================
        sRST <= '1';
        wait for 2.25 * iCLK_period;
        sRST <= '0';

        sA <= x"0064";  -- 100
        sB <= x"004B";  -- 75
        wait for 20 * iCLK_period;
        -- expected oGCD = 0x0019 (25)

        -- =============================================
        -- Test 4: GCD(1, 1) = 1  (equal inputs)
        -- =============================================
        sRST <= '1';
        wait for 2.25 * iCLK_period;
        sRST <= '0';

        sA <= x"0001";  -- 1
        sB <= x"0001";  -- 1
        wait for 20 * iCLK_period;
        -- expected oGCD = 0x0001 (1)

        -- =============================================
        -- Test 5: GCD(270, 192) = 6
        -- =============================================
        sRST <= '1';
        wait for 2.25 * iCLK_period;
        sRST <= '0';

        sA <= x"010E";  -- 270
        sB <= x"00C0";  -- 192
        wait for 50 * iCLK_period;
        -- expected oGCD = 0x0006 (6)

        -- =============================================
        -- Test 6: GCD(1000, 1) = 1  (one input is 1)
        -- =============================================
        sRST <= '1';
        wait for 2.25 * iCLK_period;
        sRST <= '0';

        sA <= x"03E8";  -- 1000
        sB <= x"0001";  -- 1
        wait for 100 * iCLK_period;
        -- expected oGCD = 0x0001 (1)

        -- =============================================
        -- Test 7: A=0 (should stay in T0, no result)
        -- =============================================
        sRST <= '1';
        wait for 2.25 * iCLK_period;
        sRST <= '0';

        sA <= x"0000";  -- 0
        sB <= x"0005";  -- 5
        wait for 10 * iCLK_period;
        -- FSM should stay in T0, oGCD = 0

        wait;

    end process;

end architecture;
	 