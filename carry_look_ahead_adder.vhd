LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY carry_look_ahead_adder IS
    PORT (
        a, b : IN std_logic_vector (3 DOWNTO 0);
        c : IN std_logic;
        s : OUT std_logic_vector (3 DOWNTO 0);
        cout : OUT std_logic
    );
END carry_look_ahead_adder;

ARCHITECTURE structural OF carry_look_ahead_adder IS

    COMPONENT partial_adder
        PORT (
            a, b, c : IN std_logic;
            s, p, g : OUT std_logic
        );
    END COMPONENT;

    SIGNAL c1, c2, c3 : std_logic;
    SIGNAL p, g : std_logic_vector (3 DOWNTO 0);
BEGIN
    pa1 : partial_adder PORT MAP(a(0), b(0), c, s(0), p(0), g(0));
    pa2 : partial_adder PORT MAP(a(1), b(1), c1, s(1), p(1), g(1));
    pa3 : partial_adder PORT MAP(a(2), b(2), c2, s(2), p(2), g(2));
    pa4 : partial_adder PORT MAP(a(3), b(3), c3, s(3), p(3), g(3));

    c1 <= g(0) OR (p(0) AND c);
    c2 <= g(1) OR (p(1) AND g(0)) OR (p(1) AND p(0) AND c);
    c3 <= g(2) OR (p(2) AND g(1)) OR (p(2) AND p(1) AND g(0)) OR (p(2) AND p(1) AND p(0) AND c);
    cout <= g(3) OR (p(3) AND g(2)) OR (p(3) AND p(2) AND g(1)) OR (p(3) AND p(2) AND p(1) AND g(0)) OR (p(3) AND p(2) AND p(1) AND p(0) AND c);
END structural;