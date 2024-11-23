----------------------------------------------------------------------------------
-- Company:bupt
-- Engineer:wwt 
-- 
-- Create Date: 2023/05/29 00:02:44
-- Design Name: 
-- Module Name: voter - Behavioral
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


library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
  entity voter is 
  generic(n:integer:=3);
  port( a:in std_logic_vector(n downto 0); 
  y:out std_logic ); 
  end voter;
 architecture behaviour of voter is
 begin process(a) 
    variable q:integer; 
    begin q:=0;
     for i in 0 to n loop
      if(a(i)='1')then 
      q:=q+1; end if;
       end loop; 
       if q>= (n+1)/2 +1 then 
       y<='1';
        else y<='0'; 
      end if;
         end process;
          end behaviour;