----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/26 23:28:06
-- Design Name: 
-- Module Name: tb_reg8bit - Behavioral
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

entity tb_reg8bit is
end tb_reg8bit;

architecture Behavioral of tb_reg8bit is
component reg8bit
port(clk,oe: in std_logic;
write:in std_logic_vector(7 downto 0);
q:out std_logic_vector(7 downto 0));
end component;
signal clk,oe:std_logic;
signal write:std_logic_vector(7 downto 0):="00000000";
signal q:std_logic_vector(7 downto 0);
begin
dut: reg8bit port map(clk=>clk,oe=>oe,write=>write,q=>q);
clock:process
begin
clk <= '0';
wait for 10 ns;
clk<= '1' ;
wait for 10 ns;
 end process;
oe_pro:process
begin
     oe <= '1';
     wait for 30 ns;
     oe <= '0';
     wait ;
end process;
wtite_pro :process
begin
write<="01001100";
wait for 20 ns;
write<="11110000";
wait for 20 ns;
end process;
end Behavioral;
