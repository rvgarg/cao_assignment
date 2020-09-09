LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.gates.ALL;

ENTITY sixteen_one_mux_struct IS
    PORT (
        ai : IN std_logic_vector (15 DOWNTO 0);
        s : IN std_logic_vector (3 DOWNTO 0);
        op : OUT std_logic
    );
END sixteen_one_mux_struct;

ARCHITECTURE arch OF sixteen_one_mux_struct IS

    SIGNAL nsi : std_logic_vector (3 DOWNTO 0);

    COMPONENT four_one_mux_struct
        PORT (
            a, b, c, d : IN std_logic;
            s : IN std_logic_vector (1 DOWNTO 0);
            op : OUT std_logic
        );
    END COMPONENT;

BEGIN
    gen : FOR i IN 0 TO 3 GENERATE
        mux : four_one_mux_struct PORT MAP(ai(i), ai(i + 1), ai(i + 2), ai(i + 3), s(1 DOWNTO 0), nsi(i));
    END GENERATE;
    mux_f : four_one_mux_struct PORT MAP(nsi(0), nsi(1), nsi(2), nsi(3), s(3 DOWNTO 2), op);
END arch; -- arch