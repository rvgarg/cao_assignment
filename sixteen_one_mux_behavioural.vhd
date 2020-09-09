LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sixteen_one_mux_behavioural IS
    PORT (
        a : IN std_logic_vector (15 DOWNTO 0);
        s : IN std_logic_vector (3 DOWNTO 0);
        op : OUT std_logic
    );
END sixteen_one_mux_behavioural;

ARCHITECTURE arch OF sixteen_one_mux_behavioural IS

BEGIN
    IF s = "0000" THEN
        op <= a(0);
    ELSIF s = "0001" THEN
        op <= a(1);
    ELSIF s = "0010" THEN
        op <= a(2);
    ELSIF s = "0011" THEN
        op <= a(3);
    ELSIF s = "0100" THEN
        op <= a(4);
    ELSIF s = "0101" THEN
        op <= a(5);
    ELSIF s = "0110" THEN
        op <= a(6);
    ELSIF s = "0111" THEN
        op <= a(7);
    ELSIF s = "1000" THEN
        op <= a(8);
    ELSIF s = "1001" THEN
        op <= a(9);
    ELSIF s = "1010" THEN
        op <= a(10);
    ELSIF s = "1011" THEN
        op <= a(11);
    ELSIF s = "1100" THEN
        op <= a(12);
    ELSIF s = "1101" THEN
        op <= a(13);
    ELSIF s = "1110" THEN
        op <= a(14);
    ELSE
        op <= a(15);
    END IF;

END arch; -- arch