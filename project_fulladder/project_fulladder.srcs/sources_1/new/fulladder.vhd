----------------------------------------------------------------------------------
-- Company: bupt
-- Engineer: wwt
-- 
-- Create Date: 2023/05/28 13:08:00
-- Design Name: wwt
-- Module Name: fulladder - Behavioral
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
USE IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder is
 Port (A,B,CIN:IN std_logic;
 S,COUT:OUT std_logic );
end fulladder;

architecture Behavioral of fulladder is
signal tmpa:std_logic_vector(1 downto 0);
begin
process(A,B,CIN)
begin
tmpa<=('0'&a)+('0'&b)+('0'&cin);
end process;
s<=tmpa(0);
cout<=tmpa(1);

end Behavioral;
