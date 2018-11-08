--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:56:11 04/13/2018
-- Design Name:   
-- Module Name:   C:/Users/Ashish Ojha/Desktop/vlsi/multiplier/adder_test1.vhd
-- Project Name:  multiplier
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder_test1 IS
END adder_test1;
 
ARCHITECTURE behavior OF adder_test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         x : IN  std_logic_vector(14 downto 0);
         y : IN  std_logic_vector(14 downto 0);
         sum : OUT  std_logic_vector(14 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(14 downto 0) := (others => '0');
   signal y : std_logic_vector(14 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(14 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
          x => x,
          y => y,
          sum => sum
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      x<="000000000001110";
		y<="000000000000011";
		wait for 100 ns;	
		x<="000000000001100";
		y<="111111111110000";	

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
