LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.adder.full_adder_structural;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY four_std_logic_ripple_structural IS
  PORT (
    a, b : IN std_logic_vector(3 DOWNTO 0);
    ci : IN std_logic;
    c : OUT std_logic;
    s : OUT std_logic_vector(3 DOWNTO 0));
END four_std_logic_ripple_structural;

ARCHITECTURE Structural OF four_std_logic_ripple_structural IS
  SIGNAL c1 : std_logic_vector(3 DOWNTO 0);
BEGIN
  f1 : full_adder_structural PORT MAP(a(0), b(0), ci, s(0), c1(0));
  f2 : full_adder_structural PORT MAP(a(1), b(1), c1(0), s(1), c1(1));
  f3 : full_adder_structural PORT MAP(a(2), b(2), c1(1), s(2), c1(2));
  f4 : full_adder_structural PORT MAP(a(3), b(3), c1(2), s(3), c);
END Structural;