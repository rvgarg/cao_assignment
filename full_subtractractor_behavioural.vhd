----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2020 11:42:27 AM
-- Design Name: 
-- Module Name: full_subtractractor_behavioural - Behavioral
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

entity full_subtractractor_behavioural is
Port ( a : in std_logic;
          b : in std_logic;
          ci: in std_logic;
          s : out std_logic;
          c : out std_logic);
end full_subtractractor_behavioural;

architecture Behavioral of full_subtractractor_behavioural is
 
begin
process (a,b,ci)
begin
if a&b&ci ="000" or a&b&ci ="101" or a&b&ci ="110" then 
c <= '0';
s <= '0';
elsif a&b&ci ="010" or a&b&ci ="111" or a&b&ci ="001" then
c<= '1';
s<= '1';
elsif a&b&ci ="011" then
s<= '0';
c<='1';
else
s<= '1';
c<='0';
end if;
end process;
end Behavioral;
