----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:59:16 04/12/2018 
-- Design Name: 
-- Module Name:    file1 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity file1 is
    Port ( a : in  STD_LOGIC_VECTOR (14 downto 0);
           b : in  STD_LOGIC_VECTOR (14 downto 0);
           out1 : out  STD_LOGIC_VECTOR (14 downto 0));
end file1;

architecture Behavioral of file1 is
signal s : STD_LOGIC_VECTOR (28 downto 0);
signal s1 : STD_LOGIC_VECTOR (13 downto 0);
signal s2 : STD_LOGIC_VECTOR (13 downto 0);
begin
 s(28)<= a(14) xor b(14);
 s1<=a(13 downto 0);
 s2<=b(13 downto 0);
 s(27 downto 0)<= s1 * s2 ;
 out1(14)<=s(28);
 out1(13 downto 10)<= s(23 downto 20);
 out1(9 downto 0)<= s(19 downto 10);

end Behavioral;

