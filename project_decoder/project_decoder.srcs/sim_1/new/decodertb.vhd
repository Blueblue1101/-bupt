----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/28 14:19:30
-- Design Name: 
-- Module Name: decodertb - Behavioral
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

entity decodertb is
--  Port ( );
end decodertb;

architecture Behavioral of decodertb is
component decoder
port(c,b,a,g1,g2a,g2b:in std_logic;
noty:out std_logic_vector(7 downto 0)
);

end component;
signal c,b,a,g1,g2a,g2b:std_logic;
signal noty:std_logic_vector(7 downto 0);

begin 
dut: decoder port map(a=>a,b=>b,c=>c,g1=>g1,g2a=>g2a,g2b=>g2b,noty=>noty);
en_pro:process
begin
g1<='1';
g2a<='1';
g2b<='1';
wait for 200 ns;
g1<='0';
G2a<='0';
g2b<='1';
WAIT;



end process;
IN_PRO : PROCESS
begin
A <= '0';
   B <= '0';
   C <= '0';
   wait for 10 ns; 
   A <= '1';
   B <= '0';
   C <= '0';
   wait for 10 ns; 
   A <= '0';
   B <= '1';
   C<= '0';
   wait for 10 ns;
   A <= '1';
   B <= '1';
   C<= '0';
   wait for 10 ns;
   A <= '0';
   B <= '0';
   C <= '1';
   wait for 10 ns;   
   A <= '1';
   B <= '0';
   C <= '1';
   wait for 10 ns;
   A <= '0';
   B <= '1';
   C<= '1';
   wait for 10 ns;
   A <= '1';
   B <= '1';
   C <= '1';
   wait for 10 ns;
end process;



end Behavioral;
