library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity or_gate is
     Port ( a : in std_logic;
          b : in std_logic;
          c : out std_logic);
end or_gate;

architecture Behavioral of or_gate is
begin
process(a,b)
begin
    c <= a or b;
end process;
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
package gates is
    component or_gate
        Port ( a : in std_logic;
        b : in std_logic;
        c : out std_logic);
    end component;
end package;