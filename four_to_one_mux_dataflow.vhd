LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY four_one_mux_dataflow IS
    PORT (
        a, b, c, d : IN std_logic;
        s : IN std_logic_vector (1 DOWNTO 0);
        op : OUT std_logic
    );
END four_one_mux_dataflow;

ARCHITECTURE dataflow OF four_one_mux_dataflow IS

BEGIN
    PROCESS (a, b, c, d, s)
    BEGIN
        op <= (((NOT(s(0)) AND NOT(s(1))) AND a) OR ((NOT(s(1)) AND s(0)) AND b) OR ((s(1) AND NOT(s(0))) AND c) OR ((s(1) AND s(0)) AND d));
    END PROCESS;
END dataflow;