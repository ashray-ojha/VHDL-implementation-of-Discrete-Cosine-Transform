----------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:52:36 04/13/2018
-- Design Name:   
-- Module Name:   C:/Users/Ashish Ojha/Desktop/vlsi/multiplier/DCTtest.vhd
-- Project Name:  multiplier
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DCT
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
 
ENTITY DCTtest IS
END DCTtest;
 
ARCHITECTURE behavior OF DCTtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DCT
    PORT(
         x0 : IN  std_logic_vector(14 downto 0);
         x1 : IN  std_logic_vector(14 downto 0);
         x2 : IN  std_logic_vector(14 downto 0);
         x3 : IN  std_logic_vector(14 downto 0);
         x4 : IN  std_logic_vector(14 downto 0);
         x5 : IN  std_logic_vector(14 downto 0);
         x6 : IN  std_logic_vector(14 downto 0);
         x7 : IN  std_logic_vector(14 downto 0);
         Y0 : OUT  std_logic_vector(14 downto 0);
         Y1 : OUT  std_logic_vector(14 downto 0);
         Y2 : OUT  std_logic_vector(14 downto 0);
         Y3 : OUT  std_logic_vector(14 downto 0);
         Y4 : OUT  std_logic_vector(14 downto 0);
         Y5 : OUT  std_logic_vector(14 downto 0);
         Y6 : OUT  std_logic_vector(14 downto 0);
         Y7 : OUT  std_logic_vector(14 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x0 : std_logic_vector(14 downto 0) := (others => '0');
   signal x1 : std_logic_vector(14 downto 0) := (others => '0');
   signal x2 : std_logic_vector(14 downto 0) := (others => '0');
   signal x3 : std_logic_vector(14 downto 0) := (others => '0');
   signal x4 : std_logic_vector(14 downto 0) := (others => '0');
   signal x5 : std_logic_vector(14 downto 0) := (others => '0');
   signal x6 : std_logic_vector(14 downto 0) := (others => '0');
   signal x7 : std_logic_vector(14 downto 0) := (others => '0');

 	--Outputs
   signal Y0 : std_logic_vector(14 downto 0);
   signal Y1 : std_logic_vector(14 downto 0);
   signal Y2 : std_logic_vector(14 downto 0);
   signal Y3 : std_logic_vector(14 downto 0);
   signal Y4 : std_logic_vector(14 downto 0);
   signal Y5 : std_logic_vector(14 downto 0);
   signal Y6 : std_logic_vector(14 downto 0);
   signal Y7 : std_logic_vector(14 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DCT PORT MAP (
          x0 => x0,
          x1 => x1,
          x2 => x2,
          x3 => x3,
          x4 => x4,
          x5 => x5,
          x6 => x6,
          x7 => x7,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4,
          Y5 => Y5,
          Y6 => Y6,
          Y7 => Y7
        );

   -- Clock process definitions
   --<clock>_process :process
  -- begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
         x0<="000110000000000";
         x1<="000010000000000";
         x2<="000100000000000";
         x3<="000000000000000";
         x4<="000010000000000";
         x5<="000100000000000";
         x6<="000110000000000";
         x7<="000110000000000";

		wait for 100 ns;	
         x0<="000100000000000";
         x1<="000000000000000";
         x2<="001000000000000";
         x3<="000000000000000";
         x4<="000010000000000";
         x5<="000110000000000";
         x6<="000100000000000";
         x7<="000101000000000";

     -- wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
