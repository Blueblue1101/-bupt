----------------------------------------------------------------------------------
-- Company:BUPT 
-- Engineer: WWT
-- 
-- Create Date: 2023/05/26 23:03:55
-- Design Name: WWT
-- Module Name: reg8bit - Behavioral
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

entity reg8bit is
 Port (OE,clk:IN std_logic;
 WRITE:IN std_logic_vector(7 downto 0);
 Q:OUT std_logic_vector(7 downto 0)
  );
end reg8bit;

architecture Behavioral of reg8bit is

begin
PROCESS(CLK,oe)
begin
if (OE='0') then
  IF(rising_edge(CLK)) THEN
        Q<=WRITE;
  end if;
else
   Q<=(others=>'Z');
  END IF;
  
   END PROCESS;

   
          


end Behavioral;
