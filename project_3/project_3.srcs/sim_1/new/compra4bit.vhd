----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/27 21:03:49
-- Design Name: 
-- Module Name: compra4bit - Behavioral
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
USE IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compra4bit is

end compra4bit;

architecture Behavioral of compra4bit is
component compra 
port( a:in std_logic_vector(3 downto 0);
b:in std_logic_vector(3 downto 0);
YA,YB,YC:OUT std_logic);
END component;
signal a,b:std_logic_vector(3 downto 0);
signal YA,YB,YC:std_logic;
begin
dut: compra port map(a=>a,b=>b,YA=>YA,YB=>YB,YC=>YC);
ab_pro :process
begin
a<=x"1";
b<=x"0";
wait for 10 ns;
a<=x"f";
b<=x"7";
wait for 10 ns;
a<=x"c";
b<=x"c";
wait for 10 ns;
a<=x"8";
b<=x"f";
wait for 10 ns;
end process;

end Behavioral;
