LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY SISO IS
    PORT (
        Din, CLK, RESET : IN Std_logic;
        Dout : OUT Std_logic);
END SISO;

ARCHITECTURE Behavioural OF SISO IS
BEGIN
    PROCESS (CLK, RESET)
        VARIABLE t1, t2 : Std_logic;
    BEGIN
        IF (Reset = '1') THEN
            t1 := '0';
            t2 := '0';
            Dout <= '0';
        ELSIF (CLK'event AND CLK = '1') THEN
            Dout <= t2;
            t2 := t1; --Sequence Matters --Dout should be updated after evry 3 cycles
            t1 := Din;
        END IF;
    END PROCESS;
END Behavioural;