LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.adder.full_adder_structural;

ENTITY carry_save_adder IS
    PORT (
        a, b, c : IN std_logic_vector (3 DOWNTO 0);
        s, cout : OUT std_logic_vector (4 DOWNTO 0)
    );
END carry_save_adder;

ARCHITECTURE carry_save OF carry_save_adder IS

    SIGNAL s1, c1, c2 : std_logic_vector (4 DOWNTO 0) := (OTHERS => '0');

BEGIN
    -- carry save adder block
    fa1 : full_adder_structural PORT MAP(a(0), b(0), c(0), s1(0), c1(0));
    fa2 : full_adder_structural PORT MAP(a(1), b(1), c(1), s1(1), c1(1));
    fa1 : full_adder_structural PORT MAP(a(2), b(2), c(2), s1(2), c1(2));
    fa1 : full_adder_structural PORT MAP(a(3), b(3), c(3), s1(3), c1(3));
    -- ripple carry adder block
    fa1 : full_adder_structural PORT MAP(s1(1), c1(0), c2(0), s(1), c2(1));
    fa1 : full_adder_structural PORT MAP(s1(2), c1(0), c2(0), s(2), c2(2));
    fa1 : full_adder_structural PORT MAP(s1(3), c1(0), c2(2), s(3), c2(3));
    fa1 : full_adder_structural PORT MAP('0', c1(0), c2(3), s(4), cout);
    s(0) <= s1(0);
END carry_save;