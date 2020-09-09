LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY half_subtractor_dataflow IS
    PORT (
        a : IN std_logic;
        b : IN std_logic;
        c : OUT std_logic;
        s : OUT std_logic);
END half_subtractor_dataflow;

ARCHITECTURE DataFlow OF half_subtractor_dataflow IS
BEGIN
    PROCESS (a, b)
    BEGIN
        s <= (a XOR b);
        c <= (NOT(a) AND b);
    END PROCESS;
END DataFlow;