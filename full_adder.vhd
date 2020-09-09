LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY full_adder_behavioral IS
    PORT (
        a, b, c : IN std_logic;
        s, c1 : OUT std_logic);
END full_adder_behavioral;

ARCHITECTURE Behavioral OF full_adder_behavioral IS

BEGIN
    PROCESS (a, b, c)
    BEGIN
        IF a & b & c = "000" THEN
            s <= '0';
            c1 <= '0';
        ELSIF a & b & c = "001" OR a & b & c = "010" OR a & b & c = "100" THEN
            s <= '1';
            c1 <= '0';
        ELSIF a & b & c = "011" OR a & b & c = "110" OR a & b & c = "101" THEN
            s <= '0';
            c1 <= '1';
        ELSIF a & b & c = "111" THEN
            s <= '1';
            c1 <= '1';
        END IF;
    END PROCESS;
END Behavioral;