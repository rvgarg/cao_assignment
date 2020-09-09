LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SIPO IS
    PORT (
        Din, CLK, Reset : IN Std_logic;
        Q : INOUT std_logic_vector(2 DOWNTO 0));
END SIPO;

ARCHITECTURE Behavioural OF SIPO IS
    SIGNAL Q : std_logic_vector(1 DOWNTO 0);
BEGIN
    PROCESS (CLK, Reset);
    BEGIN
        IF (Reset = '1') THEN
            Q <= "000";
        ELSIF (CLK'event AND CLK = '1') THEN
            Q(0) <= Din;
            Q(1) <= Q(0);
            Q(2) <= Q(1);
        END IF;
    END PROCESS;
END Behavioural;