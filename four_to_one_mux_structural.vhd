LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.gates.ALL;

ENTITY four_one_mux_struct IS
    PORT (
        a, b, c, d : IN std_logic;
        s : IN std_logic_vector (1 DOWNTO 0);
        op : OUT std_logic
    );
END four_one_mux_struct;

ARCHITECTURE arch OF four_one_mux_struct IS

    SIGNAL sn1, ns2, a1, a2, a3, a4, a5, a6, a7, a8, o1, o2, o3 : std_logic;

BEGIN
    -- not gate block
    ng1 : not_gate PORT MAP(s(0), ns1);
    ng2 : not_gate PORT MAP(s(1), ns2);
    -- and gate block 
    ag1 : and_gate PORT MAP(ns1, ns2, a1);
    ag2 : and_gate PORT MAP(ns2, s(0), a2);
    ag3 : and_gate PORT MAP(ns1, s(1), a3);
    ag4 : and_gate PORT MAP(s(1), s(0), a4);
    ag5 : and_gate PORT MAP(a, a1, a5);
    ag6 : and_gate PORT MAP(b, a2, a6);
    ag7 : and_gate PORT MAP(c, a3, a7);
    ag8 : and_gate PORT MAP(d, a4, a8);
    -- or gate block
    og1 : or_gate PORT MAP(a5, a6, o1);
    og2 : or_gate PORT MAP(a7, a8, o2);
    og3 : or_gate PORT MAP(o1, o2, o3);
END arch;