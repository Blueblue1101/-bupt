----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/28 13:32:04
-- Design Name: 
-- Module Name: decoder - Behavioral
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

entity decoder is
Port (G1,G2A,G2B:IN std_logic;
C,B,A:IN std_logic;
NOTY:OUT std_logic_vector(7 downto 0) );
end decoder;

architecture Behavioral of decoder is
signal tmpa:integer;
signal bin:std_logic_vector(2 downto 0);
begin 
 
PROCESS(G1,G2A,G2B,c,b,a,tmpa)
BEGIN
 bin<=c&b&a;
 tmpa<=conv_integer(bin);
IF(G1='1' AND G2A='1' AND G2B='1') then
   

          noty<=(tmpa=>'0',others=>'1');
       else
       noty<="11111111";
         END IF;
END PROCESS; 

end Behavioral;
