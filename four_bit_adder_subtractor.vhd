LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.adder.full_adder_structural;
USE work.gates.ALL;

ENTITY four_bit_adder_subtractor IS
    PORT (
        a, b : IN std_logic_vector (3 DOWNTO 0);
        ci : IN std_logic;
        ch : IN std_logic;
        cout : OUT std_logic;
        s : OUT std_logic_vector (3 DOWNTO 0)
    );
END four_bit_adder_subtractor;

ARCHITECTURE adder_subtractor OF four_bit_adder_subtractor IS

    SIGNAL bp, c : std_logic_vector (3 DOWNTO 0);

BEGIN
    -- xor ch = 0 for addition ch = 1 for subtraction 
    bp(0) <= b(0) XOR ch;
    bp(1) <= b(1) XOR ch;
    bp(2) <= b(2) XOR ch;
    bp(3) <= b(3) XOR ch;
    -- port mapping to the full adder
    fa1 : full_adder_structural PORT MAP(a(0), bp(0), ci, s(0), c(1));
    fa2 : full_adder_structural PORT MAP(a(1), bp(1), c(1), s(1), c(2));
    fa2 : full_adder_structural PORT MAP(a(2), bp(2), c(2), s(2), c(3));
    fa3 : full_adder_structural PORT MAP(a(3), bp(3), c(3), s(3), cout);

END adder_subtractor;