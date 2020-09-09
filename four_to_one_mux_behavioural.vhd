LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY four_one_mux_behavioural IS
    PORT (
        a, b, c, d : IN std_logic;
        s : IN std_logic_vector (1 DOWNTO 0);
        op : OUT std_logic
    );
END four_one_mux_behavioural;

ARCHITECTURE behavioral OF four_one_mux_behavioural IS
BEGIN
    PROCESS (a, b, c, d, s)
    BEGIN
        IF s = "00" THEN
            op <= a;
        ELSIF s = "01" THEN
            op <= b;
        ELSIF s = "10" THEN
            op <= c;
        ELSE
            op <= d;
        END IF;
    END PROCESS
END behavioral;