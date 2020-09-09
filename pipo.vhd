LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY pipo_reg IS
    PORT (
        CLK, RESET : IN std_logic;
        D : IN std_logic_vector(2 DOWNTO 0);
        Q : OUT std_logic_vector(2 DOWNTO 0));
END pipo_reg;

ARCHITECTURE Behavioural OF PIPO IS
BEGIN
    PROCESS (CLK, Reset);
    BEGIN
        IF (Reset = '1') THEN
            Q <= "000";
        ELSIF (CLK'event AND CLK = '1') THEN
            Q(0) <= D(0);
            Q(1) <= D(1);
            Q(2) <= D(2);
        END IF;
    END PROCESS;
END Behavioural;