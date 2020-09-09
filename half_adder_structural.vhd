library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half_adder_structural is
    Port ( a : in std_logic;
       b : in std_logic;
       c1 : out std_logic;
       s1 : out std_logic);
end half_adder_structural;

architecture Structural of half_adder_structural is

component and_gate
port(a,b: in std_logic;
    c: out std_logic);
end component;

component xor_gate
port(a,b: in std_logic;
    c: out std_logic);
end component;

begin
 a1 : and_gate port map(a,b,c1);
 x1 : xor_gate port map(a,b,s1);
end Structural;
