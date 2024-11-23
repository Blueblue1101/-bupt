----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/05/25 13:43:48
-- Design Name: 
-- Module Name: testbench_check - Behavioral
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

entity testbench_check2 is

end testbench_check2;

architecture Behavioral of testbench_check2 is
component sequence_check
port(
     clk:in std_logic;
     clr:in std_logic;
     din:in std_logic;
     z:out std_logic
     );
     end component;
 signal clk,clr,din:std_logic :='0';
 signal z:std_logic;
 constant clk_period :time :=10ns;--定义clock时间
 begin
 --实例化
 uut: sequence_check port map(
 clr=>clr,
 clk=>clk,
 din=>din,
 z=>z);
 --时钟进程定义
 clk_process :process
 begin 
 clk<='0';
 wait for clk_period/2;
 clk<='1';
 wait for clk_period/2;
 end process;
 --激励
 stim_proc:process
 begin
 din<='0';
 clr<='1';
 wait for 30 ns;
 clr <='0';
 wait for 35 ns;
 din <='1';
 wait for 10 ns;
 din <='0';
 wait for 10 ns;
 din <='1';
 wait for 10 ns;
 din <='1';
 wait for 10ns;
 din <='1';
 wait for 10 ns;
 din <='0';
 wait for 10 ns;
 din <='0';
 wait for 10 ns;
 din <='1';
 wait for 10 ns;
 din <='0';
 wait for 10 ns;
 din <='0';
 wait for 10 ns;
 din <='0';
 din <='1';
 wait for 10 ns;
 din <='1';
 wait for 10ns;
 din <='1';
 wait for 10 ns;
 din <='0';
 wait for 10 ns;
 din <='0';
 wait for 10 ns;
 din <='1';
 wait for 10 ns;
 din <='0';
 wait for 10 ns;
 din <='1';
 wait for 10 ns;
 end process;
 
end Behavioral;