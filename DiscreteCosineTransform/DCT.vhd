----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:03:55 04/13/2018 
-- Design Name: 
-- Module Name:    DCT - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DCT is

		-- bit(14) : sign bit
		-- bit(13 downto 10 ) :integer part
		-- bit(9 downto 0) : fractional part
    Port ( x0 : in  STD_LOGIC_VECTOR (14 downto 0);
           x1 : in  STD_LOGIC_VECTOR (14 downto 0);
           x2 : in  STD_LOGIC_VECTOR (14 downto 0);
           x3 : in  STD_LOGIC_VECTOR (14 downto 0);
           x4 : in  STD_LOGIC_VECTOR (14 downto 0);
           x5 : in  STD_LOGIC_VECTOR (14 downto 0);
           x6 : in  STD_LOGIC_VECTOR (14 downto 0);
           x7 : in  STD_LOGIC_VECTOR (14 downto 0);
           Y0 : out  STD_LOGIC_VECTOR (14 downto 0);
           Y1 : out  STD_LOGIC_VECTOR (14 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (14 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (14 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (14 downto 0); 
           Y5 : out  STD_LOGIC_VECTOR (14 downto 0);
           Y6 : out  STD_LOGIC_VECTOR (14 downto 0);
           Y7 : out  STD_LOGIC_VECTOR (14 downto 0));
end DCT;

architecture Behavioral of DCT is
signal M0,M1,M2,M3,M10,M11,M100 : std_logic_vector(14 downto 0);
signal P0,P1,P2,P3,P10,P11,P100 : std_logic_vector(14 downto 0);
signal c1,c2,c3,c4,c5,c6,c7 : std_logic_vector(14 downto 0);
signal T1,T11,T12,T13,T14,T112,T1123: std_logic_vector(14 downto 0);
signal T2,T21,T22,T23,T24,T212,T2123: std_logic_vector(14 downto 0);
signal T3,T31,T32,T33,T34,T312,T3123: std_logic_vector(14 downto 0);
signal T4,T41,T42,T43,T44,T412,T4123,T51,T52,T61,T62: std_logic_vector(14 downto 0);

component adder is
Port ( x : in  STD_LOGIC_VECTOR (14 downto 0);
           y : in  STD_LOGIC_VECTOR (14 downto 0);
           sum : out  STD_LOGIC_VECTOR (14 downto 0));
end component;

component subtractor is
Port ( x : in  STD_LOGIC_VECTOR (14 downto 0);
           y : in  STD_LOGIC_VECTOR (14 downto 0);
           diff : out  STD_LOGIC_VECTOR (14 downto 0));
end component;

component file1 is 
Port ( a : in  STD_LOGIC_VECTOR (14 downto 0);
           b : in  STD_LOGIC_VECTOR (14 downto 0);
           out1 : out  STD_LOGIC_VECTOR (14 downto 0));
end component;

begin
-- bit(14) : sign bit
-- bit(13 downto 10 ) :integer part
-- bit(9 downto 0) : fractional part
-- ci = cos(i*pi/16)
--c0<="000010000000000";
c1<="000001111101100"; -- 0.9807852804032304491262
c2<="000001110110010"; -- 0.9238795325112867561282
c3<="000001101010011"; -- 0.8314696123025452370788
c4<="000001011010100"; -- 0.7071067811865475244008
c5<="000001000111000"; -- 0.5555702330196022247428
c6<="000000110000111"; -- 0.3826834323650897717285
c7<="000000011000111"; -- 0.1950903220161282678483

mm0 : subtractor port map (x0,x7,M0);
mm1 : subtractor port map (x3,x4,M1);
mm2 : subtractor port map (x1,x6,M2);
mm3 : subtractor port map (x2,x5,M3);
mm10 : subtractor port map (P0,P1,M10);
mm11 : subtractor port map (P2,P3,M11);
mm100 : subtractor port map (P10,P11,M100);

pp0 : adder port map (x0,x7,P0);
pp1 : adder port map (x3,x4,P1);
pp2 : adder port map (x1,x6,P2);
pp3 : adder port map (x2,x5,P3);
pp10 : adder port map (P0,P1,P10);
pp11 : adder port map (P2,P3,P11);
pp100 : adder port map (P10, P11 ,P100);

tt11 : file1 port map (M0,c1,T11);
tt12 : file1 port map (M1,c7,T12);
tt13 : file1 port map (M2,c3,T13);
tt14 : file1 port map (M3,c5,T14);
aa11 : adder port map (T11,T12,T112);
aa12 : adder port map (T112,T13,T1123);
aa13 : adder port map (T1123,T14,Y1);

tt21 : file1 port map (M0,c7,T21);
tt22 : file1 port map (M1,c1,T22);
tt23 : file1 port map (M2,c5,T23);
tt24 : file1 port map (M3,c3,T24);
aa21 : subtractor port map (T21,T22,T212);
aa22 : subtractor port map (T212,T23,T2123);
aa23 : adder port map (T2123,T24,Y7);

tt31 : file1 port map (M0,c3,T31);
tt32 : file1 port map (M1,c5,T32);
tt33 : file1 port map (M2,c7,T33);
tt34 : file1 port map (M3,c1,T34);
aa31 : subtractor port map (T31,T32,T312);
aa32 : subtractor port map (T312,T33,T3123);
aa33 : subtractor port map (T3123,T34,Y3);

tt41 : file1 port map (M0,c5,T41);
tt42 : file1 port map (M1,c3,T42);
tt43 : file1 port map (M2,c1,T43);
tt44 : file1 port map (M3,c7,T44);
aa41 : adder port map (T41,T42,T412);
aa42 : subtractor port map (T412,T43,T4123);
aa43 : adder port map (T4123,T44,Y5);

tt51 : file1 port map (M10,c2,T51);
tt52 : file1 port map (M11,c6,T52);
aa51 : adder port map (T51,T52,Y2);

tt61 : file1 port map (M10,c6,T61);
tt62 : file1 port map (M11,c2,T62);
aa61 : subtractor port map (T61,T62,Y6);

aa71 : file1 port map (M100,c4,Y4);

aa81 : file1 port map (P100,c4,Y0);


end Behavioral;

