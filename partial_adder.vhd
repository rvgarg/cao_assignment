LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY partial_adder IS
    PORT (
        a, b, cin : IN std_logic;
        s, p, g : OUT std_logic
    );
END partial_adder;

ARCHITECTURE partial_adder OF partial_adder IS

BEGIN
    s <= ((a XOR b) XOR c);
    p <= a XOR b;
    g <= a AND b;

END partial_adder;