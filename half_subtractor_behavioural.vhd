LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY half_subtractor_behavioural IS
    PORT (
        a : IN std_logic;
        b : IN std_logic;
        c : OUT std_logic;
        s : OUT std_logic);
END half_subtractor_behavioural;

ARCHITECTURE Behavioral OF half_subtractor_behavioural IS
BEGIN

    PROCESS (a, b)

    BEGIN
        IF a & b = "01" THEN
            s <= '1';
            c <= '1';
        ELSIF a & b = "10" THEN
            s <= '1';
            c <= '0';
        ELSE
            s <= '0';
            c <= '0';
        END IF;

    END PROCESS;
END Behavioral;