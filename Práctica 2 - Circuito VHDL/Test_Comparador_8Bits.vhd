--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:15:51 02/22/2018
-- Design Name:   
-- Module Name:   D:/abc4o/Desktop/Universidad/.VirtualBox/Xilinx/Comparador_4Bits/Test_Comparador_8Bits.vhd
-- Project Name:  Comparador_4Bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparador_8Bits
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
 
ENTITY Test_Comparador_8Bits IS
END Test_Comparador_8Bits;
 
ARCHITECTURE behavior OF Test_Comparador_8Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparador_8Bits
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Mayor2 : OUT  std_logic;
         Menor2 : OUT  std_logic;
         Igual2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Mayor2 : std_logic;
   signal Menor2 : std_logic;
   signal Igual2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparador_8Bits PORT MAP (
          A => A,
          B => B,
          Mayor2 => Mayor2,
          Menor2 => Menor2,
          Igual2 => Igual2
        );

 A <= "11110000", "11111001" after 20 ns, "10101010" after 40 ns;
 B <= "11111101", "11110011" after 20 ns, "10101010" after 40 ns;

END;
