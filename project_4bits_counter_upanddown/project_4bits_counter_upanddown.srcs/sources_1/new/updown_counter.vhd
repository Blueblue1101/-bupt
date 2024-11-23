----------------------------------------------------------------------------------
-- Company:bupt 
-- Engineer: wwt
-- 
-- Create Date: 2023/05/26 20:44:04
-- Design Name:wwt 
-- Module Name: updown_counter - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UPDOWN_COUNTER is
    Port ( clk: in std_logic; 
           reset: in std_logic; 
               up_down: in std_logic; --input tp control up or down
           counter: out std_logic_vector(3 downto 0) 
     );
end UPDOWN_COUNTER;

architecture Behavioral of UPDOWN_COUNTER is
signal counter_updown: std_logic_vector(3 downto 0);
begin

process(clk)
begin
if(reset='1') then
counter_updown <= x"f";
else
    if(rising_edge(clk)) then
         
       if(up_down='1') then
         counter_updown <= counter_updown - x"1"; -- count down
  else 
   counter_updown <= counter_updown + x"1"; -- count up
        end if;
    end if;
 end if;
end process;
 counter <= counter_updown;

end Behavioral;