LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sixteen_one_mux_dataflow IS
    PORT (
        a : IN std_logic_vector (15 DOWNTO 0);
        s : IN std_logic_vector (3 DOWNTO 0);
        op : OUT std_logic
    );
END sixteen_one_mux_dataflow;

ARCHITECTURE arch OF sixteen_one_nux_dataflow IS

    SIGNAL ors : std_logic_vector (15 DOWNTO 0);

BEGIN
    PROCESS (a, s)
    BEGIN
        ors(0) <= ((NOT(s(3)) AND NOT(s(2))) AND (NOT(s(1)) AND NOT(s(0)))) AND a(0);
        ors(1) <= ((NOT(s(3)) AND NOT(s(2))) AND (NOT(s(1)) AND s(0))) AND a(1);
        ors(2) <= ((NOT(s(3)) AND NOT(s(2))) AND (NOT(s(0)) AND s(1))) AND a(2);
        ors(3) <= ((NOT(s(3)) AND NOT(s(2))) AND (s(0) AND s(1))) AND a(3);

        ors(4) <= ((NOT(s(3)) AND s(2)) AND (NOT(s(1)) AND NOT(s(0)))) AND a(4);
        ors(5) <= ((NOT(s(3)) AND s(2)) AND (NOT(s(1)) AND s(0))) AND a(5);
        ors(6) <= ((NOT(s(3)) AND s(2)) AND (NOT(s(0)) AND s(1))) AND a(6);
        ors(7) <= ((NOT(s(3)) AND s(2)) AND (s(0) AND s(1))) AND a(7);

        ors(8) <= ((s(3) AND NOT(s(2))) AND (NOT(s(1)) AND NOT(s(0)))) AND a(8);
        ors(9) <= ((s(3) AND NOT(s(2))) AND (NOT(s(1)) AND s(0))) AND a(9);
        ors(10) <= ((s(3) AND NOT(s(2))) AND (NOT(s(0)) AND s(1))) AND a(10);
        ors(11) <= ((s(3) AND NOT(s(2))) AND (s(0) AND s(1))) AND a(11);

        ors(12) <= ((s(3) AND s(2)) AND (NOT(s(1)) AND NOT(s(0)))) AND a(12);
        ors(13) <= ((s(3) AND s(2)) AND (NOT(s(1)) AND s(0))) AND a(13);
        ors(14) <= ((s(3) AND s(2)) AND (NOT(s(0)) AND s(1))) AND a(14);
        ors(15) <= ((s(3) AND s(2)) AND (s(0) AND s(1))) AND a(15);

        op <= (((ors(0) OR ors(1)) OR (ors(2) OR ors(3))) OR ((ors(4) OR ors(5)) OR (ors(6) OR ors(7)))) OR (((ors(8) OR ors(9)) OR (ors(10) OR ors(11))) OR ((ors(12) OR ors(13)) OR (ors(14) OR ors(15))));
    END PROCESS;
END arch; -- arch