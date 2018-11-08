--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:10:03 04/12/2018
-- Design Name:   
-- Module Name:   C:/Users/Ashish Ojha/Desktop/vlsi/multiplier/testsub.vhd
-- Project Name:  multiplier
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: subtractor
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
 
ENTITY testsub IS
END testsub;
 
ARCHITECTURE behavior OF testsub IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT subtractor
    PORT(
         x : IN  std_logic_vector(14 downto 0);
         y : IN  std_logic_vector(14 downto 0);
         diff : OUT  std_logic_vector(14 downto 0)
        );
    END COMPONENT;
     

   --Inputs
   signal x : std_logic_vector(14 downto 0) := (others => '0');
   signal y : std_logic_vector(14 downto 0) := (others => '0');

 	--Outputs
   signal diff : std_logic_vector(14 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: subtractor PORT MAP (
          x => x,
          y => y,
          diff => diff
        );

   -- Clock process definitions
--   <clock>_process :process
  -- begin
	--	<clock> <= '0';
		--wait for <clock>_period/2;
	--	<clock> <= '1';
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
		--y<="000000000000001";

     -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
