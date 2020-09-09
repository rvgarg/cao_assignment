----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2020 11:31:58 AM
-- Design Name: 
-- Module Name: half_adder_behavioural - Behavioral
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


entity half_adder_behavioural is
    Port ( a : in std_logic;
           b : in std_logic;
           c : out std_logic;
           s : out std_logic);
end half_adder_behavioural;

architecture Behavioral of half_adder_behavioural is

begin
process(a,b)
begin
if a & b = "00" then
s<= '0';
c<= '0'; 
elsif a & b = "01" or a & b = "10" then
s<= '1';
c<= '0';
else
s<= '0';
c<= '1';
end if;
end process;

end Behavioral;
