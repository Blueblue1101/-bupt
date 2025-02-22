----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/26 17:09:03
-- Design Name: 
-- Module Name: testbench_counter - Behavioral
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

entity tb_counters is
end tb_counters;

architecture Behavioral of tb_counters is

component UP_COUNTER 
    Port ( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           counter: out std_logic_vector(3 downto 0) -- output 4-bit counter
     );
end component;
signal reset,clk: std_logic;
signal counter:std_logic_vector(3 downto 0):=x"f";

begin
dut: UP_COUNTER port map (clk => clk, reset=>reset, counter => counter);
   -- Clock process definitions
clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;
-- Stimulus process
stim_proc: process
begin        
   -- hold reset state for 100 ns.
   
    reset <= '1';
    wait for 20 ns;
    reset <='0';
   wait for 120 ns;
   reset <='1';
   wait for 20 ns;
   reset <='0';
   wait ;
end process;
end Behavioral;