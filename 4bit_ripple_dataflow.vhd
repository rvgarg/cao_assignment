

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_ripple_dataflow is
    Port ( a,b,ci : in bit_vector(3 downto 0);
       s : out bit_vector(3 downto 0);
       c : out bit);
       
end four_bit_ripple_dataflow;

architecture Dataflow of four_bit_ripple_dataflow is

begin
process(a,b,ci)
begin
    c

end process;
end Dataflow;
