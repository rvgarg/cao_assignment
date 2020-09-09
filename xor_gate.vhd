----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2020 11:21:08 AM
-- Design Name: 
-- Module Name: and_gate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xor_gate is
     Port ( a : in std_logic;
          b : in std_logic;
          c : out std_logic);
end xor_gate;

architecture Behavioral of xor_gate is
begin
process(a,b)
begin
    c <= (a and not(b)) or (not(a) and b);
end process;
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
package gates is
    component xor_gate
        Port ( a : in std_logic;
        b : in std_logic;
        c : out std_logic);
    end component;
end package;