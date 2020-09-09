LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY full_subtractractor_dataflow IS
    PORT (
        a : IN std_logic;
        b : IN std_logic;
        ci : IN std_logic;
        s : OUT std_logic;
        c : OUT std_logic);
END full_subtractractor_dataflow;

ARCHITECTURE Behavioral OF full_subtractractor_dataflow IS

BEGIN
    PROCESS (a, b, ci)
    BEGIN
        s <= (a XOR b XOR ci);
        c <= (NOT(a XOR b) AND ci) OR (NOT(a) AND b);
    END PROCESS;
END Behavioral;