----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/26 20:07:46
-- Design Name: 
-- Module Name: counter_down - Behavioral
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

entity tb_counter_down is
--  Port ( );
end tb_counter_down;

architecture Behavioral of tb_counter_down is

component DOWN_COUNTER
port(clk,reset:in std_logic;
counter :out std_logic_vector(3 downto 0));
end component;
signal clk,reset:std_logic;
signal counter:std_logic_vector(3 downto 0):=x"0";
begin
dut: DOWN_COUNTER port map(clk=>clk,
reset=>reset,counter=>counter);
clock_process:process

begin
clk<='0';
wait for 10 ns;
clk<='1';
wait for 10 ns;
end process;
stim_proc:process
begin
  reset<='1';
  wait for 20 ns;
  reset <='0';
  wait ;
  end process;
  

end Behavioral;
