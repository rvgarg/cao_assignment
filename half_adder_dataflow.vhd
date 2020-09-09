----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2020 11:31:58 AM
-- Design Name: 
-- Module Name: half_adder_dataflow - DataFLOW
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

entity half_adder_dataflow is
    Port ( a : in std_logic;
       b : in std_logic;
       c : out std_logic;
       s : out std_logic);
end half_adder_dataflow;

architecture DataFLOW of half_adder_dataflow is

begin
process(a,b)
begin
    s <= (a xor b);
    c <= (a and b);
end process;
end DataFLOW;
