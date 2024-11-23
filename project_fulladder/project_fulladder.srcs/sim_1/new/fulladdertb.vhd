----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/28 13:16:21
-- Design Name: 
-- Module Name: fulladdertb - Behavioral
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

entity fulladdertb is

end fulladdertb;

architecture Behavioral of fulladdertb is
component fulladder
port(a,b,cin:in std_logic;
s,cout:out std_logic);
end component;
signal a,b,cin:std_logic;
signal s,cout:std_logic;
begin
dut:fulladder port map(a=>a,b=>b,cin=>cin,s=>s,cout=>cout);
process
begin
A <= '1';
   B <= '1';
   Cin <= '1';
   wait for 10 ns; 
   A <= '1';
   B <= '1';
   Cin <= '0';
   wait for 10 ns; 
   A <= '1';
   B <= '0';
   Cin <= '1';
   wait for 10 ns;
   A <= '0';
   B <= '0';
   Cin <= '0';
   wait for 10 ns;
   A <= '0';
   B <= '0';
   Cin <= '1';
   wait for 10 ns;   
   A <= '0';
   B <= '1';
   Cin <= '0';
   wait for 10 ns;
   A <= '0';
   B <= '1';
   Cin <= '1';
   wait for 10 ns;
   A <= '1';
   B <= '0';
   Cin <= '0';
   wait for 10 ns;
   end process;
end Behavioral;
