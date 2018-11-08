----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:49:55 04/12/2018 
-- Design Name: 
-- Module Name:    subtractor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity subtractor is
    Port ( x : in  STD_LOGIC_VECTOR (14 downto 0);
           y : in  STD_LOGIC_VECTOR (14 downto 0);
           diff : out  STD_LOGIC_VECTOR (14 downto 0));
end subtractor;

architecture Behavioral of subtractor is

signal x1,y1: std_logic_vector (13 downto 0);
signal z : std_logic_vector (13 downto 0);
signal z0 : std_logic;
--signal z1,z2,z3,z4 : std_logic_vector (13 downto 0);

begin
x1 <= x(13 downto 0);
y1 <= y(13 downto 0);

--z1 <= x1-y1;
--z2 <= x1 + y1;
--z3 <= y1-x1;
--z4 <= y1+x1;

process(x,y,x1,y1,z0,z)

begin

if( x1>y1 and x(14)='1' and y(14)='1') then
	z <= x1-y1;
	z0 <= '1';
elsif (x1>y1 and x(14)='1' and y(14)='0') then
	z <= x1+y1;
	z0 <= '1';
elsif (x1 > y1 and x(14) = '0' and y(14)= '1') then
	z <= x1 + y1;
	z0 <= '0';
elsif (x1>y1 and x(14) = '0' and y(14)='0') then
	z <= x1 - y1;
	z0 <= '0';
elsif (y1>x1 and x(14) = '1' and y(14)='1') then
	z<= y1-x1;
	z0 <= '0';
elsif (y1>x1 and x(14)='1' and y(14)='0') then
	z <= y1+x1;
	z0 <= '1';
elsif (y1 > x1 and x(14) = '0' and y(14)= '1') then
	z <= x1 + y1;
	z0 <= '0';
else --(y1>x1 and x(14) = '0' and y(14)='0') then
	z <= y1 - x1;
	z0 <= '1';
end if;

diff <= z0 & z;
	
end process;

end Behavioral;

