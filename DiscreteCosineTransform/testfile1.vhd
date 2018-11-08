--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:27:24 04/12/2018
-- Design Name:   
-- Module Name:   C:/Users/Ashish Ojha/Desktop/vlsi/project1/testfile1.vhd
-- Project Name:  project1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: file1
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
 
ENTITY testfile1 IS 
END testfile1;
 
ARCHITECTURE behavior OF testfile1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT file1
    PORT(
         a : IN  std_logic_vector(14 downto 0);
         b : IN  std_logic_vector(14 downto 0);
         out1 : OUT  std_logic_vector(14 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(14 downto 0) := (others => '0');
   signal b : std_logic_vector(14 downto 0) := (others => '0');

 	--Outputs
   signal out1 : std_logic_vector(14 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: file1 PORT MAP (
          a => a,
          b => b,
          out1 => out1
        );

   -- Clock process definitions
  -- <clock>_process :process
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
      wait for 100 ns;
      --a<="100000010101110";
      --b<="000001111100000";

		a<="000110000000110";
      b<="000100000000010";

     -- wait for <clock>_period*10;

      -- insert stimulus here  
 
      wait;
   end process;

END;
