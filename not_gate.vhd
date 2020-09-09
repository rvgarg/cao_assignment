library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity not_gate is
     Port ( a : in std_logic;
          c : out std_logic);
end not_gate;

architecture Behavioral of not_gate is
begin
process(a)
begin
    c <= not(a);
end process;
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
package gates is
    component not_gate
        Port ( a : in std_logic;
        c : out std_logic);
    end component;
end package;