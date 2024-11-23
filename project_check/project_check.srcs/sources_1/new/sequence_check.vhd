----------------------------------------------------------------------------------
-- Company: bupt
-- Engineer: wangwanting
-- 
-- Create Date: 2023/05/24 23:34:11
-- Design Name: wangwnating
-- Module Name: eda1 - Behavioral
-- Project Name: sequential detector
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

entity sequence_check is
 Port (din,CLK,CLR:IN std_logic;Z:OUT std_logic );
end sequence_check;

architecture behav of sequence_check is
type statetype is(s0,s1,s2,s3,s4,s5,s6,s7);
signal present_state,next_state:statetype;

begin
  state_machine:process(present_state,din)
 begin 
     case present_state is
     when s0 => z<='0';
       IF din='1'then
       next_state<=s1;
       else
       next_state<=s0;
       end if;
     when s1=> z<='0';
       IF din='1'then
       next_state<=s2;
       else
       next_state<=s0;
       end if;
     when s2=> z<='0';
       IF din='1'then
       next_state<=s3;
       else
       next_state<=s0;
       end if;
     when s3=> z<='0';
       IF din='0'then
       next_state<=s4;
       else
       next_state<=s3;
       end if;
     when s4=>  z<='0';
       IF din='0'then
       next_state<=s5;
       else
       next_state<=s1;
       end if;
     when s5=>  z<='0';
       IF din='1'then
       next_state<=s6;
       else
       next_state<=s0;
       end if;
     when s6=> z<='0';
       IF din='0'then
       next_state<=s7;
       else
       next_state<=s2;
       end if;
     when s7=> z<='1';IF din='1'then next_state<=s1; else next_state<=s0; end if;
   end case;
   end process state_machine;
   state_clocked:process(clk,clr)
   begin
     if(clr='1')then    --复位端高电平有效,异步复位
     present_state<=s0;
     elsif(clk'event and clk='1')then  
     present_state<=next_state;   
     end if;
     end process state_clocked; 
     
end behav;
