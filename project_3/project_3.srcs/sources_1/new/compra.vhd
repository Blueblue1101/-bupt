----------------------------------------------------------------------------------
-- Company:bupt 
-- Engineer: wwt
-- 
-- Create Date: 2023/05/27 20:49:20
-- Design Name: wwt
-- Module Name: compra - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compra is
generic(n:integer:=3);
 Port ( A,B:IN std_logic_vector(n downto 0);
 YA,YB,YC:OUT std_logic);--YA--A>B--YB--A<B--YC--A=B
end compra;

architecture Behavioral of compra is

begin
Process(a,b)
begin
for i in n downto 0 loop
   if(A(i)=B(i))then
   YA<='0';
   YB<='0';
   YC<='1';
   NEXT ;
   
   elsif(A(i)>B(i)) then
   YA<='1';
   YB<='0';
   YC<='0';
   exit ;
   
   ELSIF(A(i)<B(I)) THEN
   YA<='0';
   YB<='1';
   YC<='0';
   EXIT ;
      
   end if;
 end loop;
   end  process;
   
   
end Behavioral;
