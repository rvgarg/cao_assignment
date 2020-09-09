LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.adder.full_adder_structural;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY thirty_two_rcarry IS
    GENERIC (n : INTEGER := 16);
    PORT (
        a1 : IN std_logic_vector ((n - 1) DOWNTO 0);
        b1 : IN std_logic_vector ((n - 1) DOWNTO 0);
        c1 : IN std_logic;
        s1 : OUT std_logic_vector ((n - 1) DOWNTO 0);
        cout1 : OUT std_logic);
END thirty_two_rcarry;

ARCHITECTURE Behavioral OF thirty_two_rcarry IS

    SIGNAL ci : std_logic_vector ((n - 1) DOWNTO 0);
BEGIN
    fa : full_adder_structural PORT MAP(a1(0), b1(0), c1, s1(0), ci(0));
    fa_n : FOR i IN 1 TO n - 2 GENERATE
        fa : full_adder_structural PORT MAP(a1(i), b1(i), ci(i - 1), s1(i), ci(i));
    END GENERATE;
    fa_la : full_adder_structural PORT MAP(a1(n - 1), b1(n - 1), ci(n - 2), s1(n - 1), cout1);
END Behavioral;