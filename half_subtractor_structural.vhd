----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2020 11:07:37 AM
-- Design Name: 
-- Module Name: half_subtractor_structural - Behavioral
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

entity half_subtractor_structural is
    Port ( a : in std_logic;
   b : in std_logic;
   c1 : out std_logic;
   s1 : out std_logic);
end half_subtractor_structural;

architecture Behavioral of half_subtractor_structural is

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

signal a1:std_logic; 
begin
x1 : not_gate port map(a,a1);
x2 : and_gate port map(a1,b,c1);
x3 : xor_gate port map(a,b,s1);

end Behavioral;
