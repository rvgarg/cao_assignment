LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY full_adder_dataflow IS
    PORT (
        a, b, c : IN std_logic;
        s, c1 : OUT std_logic);
END full_adder_dataflow;

ARCHITECTURE Behavioral OF full_adder_dataflow IS

BEGIN
    PROCESS (a, b, c)
    BEGIN
        s <= (a XOR b XOR c);
        c1 <= ((a AND b) OR (b AND c) OR (c AND a));
    END PROCESS;
END Behavioral;
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE adder IS
    COMPONENT full_adder_dataflow IS
        PORT (
            a, b, c : IN std_logic;
            s, c1 : OUT std_logic);
    END COMPONENT;
END PACKAGE;