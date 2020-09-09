LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.gates.ALL;


ENTITY full_adder_structural IS
    PORT (
        a : IN std_logic;
        b : IN std_logic;
        ci : IN std_logic;
        s : OUT std_logic;
        c : OUT std_logic);
END full_adder_structural;

ARCHITECTURE structural OF full_adder_structural IS

    -- component and_gate
    -- port(a,b: in std_logic;
    --     c: out std_logic);
    -- end component;

    -- component xor_gate
    -- port(a,b: in std_logic;
    --     c: out std_logic);
    -- end component;

    -- component or_gate
    -- port(a,b: in std_logic;
    --     c: out std_logic);
    -- end component;

    -- component not_gate
    -- port(a: in std_logic;
    --     c: out std_logic);
    -- end component;
    SIGNAL c1, a1, a2, a3, a12 : std_logic;
BEGIN
    x1 : xor_gate PORT MAP(a, b, c1);
    x2 : xor_gate PORT MAP(c1, ci, s);
    an1 : and_gate PORT MAP(a, b, a1);
    an2 : and_gate PORT MAP(a, ci, a2);
    an3 : and_gate PORT MAP(ci, b, a3);
    o1 : or_gate PORT MAP(a1, a2, a12);
    o2 : or_gate PORT MAP(a3, a12, c);

    -- h1 : half_adder_structural port map();
END structural;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
PACKAGE adder IS
    COMPONENT full_adder_structural
        PORT (
            a : IN std_logic;
            b : IN std_logic;
            c : OUT std_logic);
    END COMPONENT;
END PACKAGE;