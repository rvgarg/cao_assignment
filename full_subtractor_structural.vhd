----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/27/2020 12:26:14 PM
-- Design Name: 
-- Module Name: full_adder_structural - structural
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

entity full_subtractor_structural is
    Port ( a : in std_logic;
           b : in std_logic;
           ci: in std_logic;
           s : out std_logic;
           c : out std_logic);
end full_subtractor_structural;

architecture structural of full_subtractor_structural is

component and_gate
port(a,b: in std_logic;
    c: out std_logic);
end component;

component xor_gate
port(a,b: in std_logic;
    c: out std_logic);
end component;

component or_gate
port(a,b: in std_logic;
    c: out std_logic);
end component;

component not_gate
port(a: in std_logic;
    c: out std_logic);
end component;
signal c1,c1n,b1,an,b2: std_logic;
begin
 x1: xor_gate port map(a,b,c1);
 x2: xor_gate port map(c1,ci,s);
 n1: not_gate port map(c1,c1n);
 a1: and_gate port map(ci,c1n,b1);
 n2: not_gate port map(a,an);
 a2: and_gate port map(an,b,b2);
 o1: or_gate port map(b1,b2,c);
 
-- h1 : half_adder_structural port map();
end structural;
