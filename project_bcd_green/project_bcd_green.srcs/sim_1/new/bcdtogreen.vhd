----------------------------------------------------------------------------------
-- Company: BUPT
-- Engineer: WWT
-- 
-- Create Date: 2023/05/27 00:39:10
-- Design Name: WWT
-- Module Name: bcdtogreen - Behavioral
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

entity bcdtogreen is
generic(n:integer:=4);
end bcdtogreen;

architecture Behavioral of bcdtogreen is
component bcd_green
port(bcd:in std_logic_vector(n-1 downto 0);
green:out std_logic_vector(n-1 downto 0);
en:in std_logic);
end component;
signal bcd:std_logic_vector(n-1 downto 0);
signal green:std_logic_vector(n-1 downto 0):=(others=>'0');
signal en :std_logic;

begin
dut: bcd_green port map(bcd=>bcd,green=>green,en=>en);
bcd_pro:process
begin

bcd<=x"0";
wait for 20 ns;
bcd<=x"1";
wait for 10 ns;
bcd<=x"2";
wait for 10 ns;
bcd<=x"3";
wait for 10 ns;
bcd<=x"4";
wait for 10 ns;
bcd<=x"5";
wait for 10 ns;
bcd<=x"6";
wait for 10 ns;
bcd<=x"7";
wait for 10 ns;
bcd<=x"8";
wait for 10 ns;
bcd<=x"9";
wait for 10 ns;
bcd<=x"A";
wait for 10 ns;
bcd<=x"B";
wait for 10 ns;
bcd<=x"C";
wait for 10 ns;
bcd<=x"D";
wait for 10 ns;
bcd<=x"E";
wait for 10 ns;
bcd<=x"F";
end process;
en_pro:process
begin
en<='0';
wait for 10 ns;
en <='1';
wait ;
end process;



end Behavioral;
