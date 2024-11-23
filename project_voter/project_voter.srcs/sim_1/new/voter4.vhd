----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/29 00:11:03
-- Design Name: 
-- Module Name: voter4 - Behavioral
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

entity voter4 is
--  Port ( );
end voter4;

architecture Behavioral of voter4 is
component voter
port (a:in std_logic_vector(3 downto 0);
y:out std_logic);
end component;
signal a:std_logic_vector(3 downto 0);
signal y:std_logic;

begin
dut:voter port map(a=>a,y=>y);
process 
begin 
a<=x"0";
wait for 10 ns;
a<=x"1";
wait for 10 ns;
a<=x"2";
wait for 10 ns;
a<=x"3";
wait for 10 ns;
a<=x"4";
wait for 10 ns;
a<=x"5";
wait for 10 ns;
a<=x"6";
wait for 10 ns;
a<=x"7";
wait for 10 ns;
a<=x"8";
wait for 10 ns;
a<=x"9";
wait for 10 ns;
a<=x"a";
wait for 10 ns;
a<=x"b";
wait for 10 ns;
a<=x"c";
wait for 10 ns;
a<=x"d";
wait for 10 ns;
a<=x"e";
wait for 10 ns;
a<=x"f";
wait for 10 ns;
end process;

end Behavioral;
