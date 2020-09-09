library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half_adder_not_structural is
    Port ( a : in std_logic;
       b : in std_logic;
       c1 : out std_logic;
       s1 : out std_logic);
end half_adder_not_structural;

architecture Structural of half_adder_not_structural is

component and_gate
port(a,b: in std_logic;
    c: out std_logic);
end component;

component xor_gate
port(a,b: in std_logic;
    c: out std_logic);
end component;

component not_gate
port(a: in std_logic;
    c: out std_logic);
end component; 

component or_gate
port(a,b: in std_logic;
    c: out std_logic);
end component;

signal an,an1,bn,bn1:std_logic;
begin

 a1 : and_gate port map(a,b,c1);
 n1 : not_gate port map(a,an);
 a2 : and_gate port map(an,b,an1);
 n2 : not_gate port map(b,bn);
 a3 : and_gate port map(bn,a,bn1);
 o1 : or_gate port map(an1,bn1,s1);
 
end Structural;
