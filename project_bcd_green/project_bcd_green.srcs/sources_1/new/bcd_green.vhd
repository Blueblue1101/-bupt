----------------------------------------------------------------------------------
-- Company:bupt 
-- Engineer: wwt
-- 
-- Create Date: 2023/05/27 00:26:54
-- Design Name: wwt
-- Module Name: bcd_green - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
USE IEEE.std_logic_arith.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_green is
generic(N:integer:=4);
Port ( bcd:in std_logic_vector(n-1 downto 0);
green:out std_logic_vector(n-1 downto 0);
en:in std_logic);
end bcd_green;

architecture Behavioral of bcd_green is



begin
 process(en,bcd)
 
begin
if(en='1') then
    
      
       green(n-1)<=bcd(n-1);
        
for i in n-2 downto 0 loop
green(i)<=bcd(i+1) xor bcd(i);
end loop;


end if;
end process;
end Behavioral;
