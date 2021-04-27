--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:42:22 02/22/2018
-- Design Name:   
-- Module Name:   D:/abc4o/Desktop/Universidad/.VirtualBox/Xilinx/Comparador_4Bits/Test_Comparador_4Bits.vhd
-- Project Name:  Comparador_4Bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparador_4Bits
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
 
ENTITY Test_Comparador_4Bits IS
END Test_Comparador_4Bits;
 
ARCHITECTURE behavior OF Test_Comparador_4Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparador_4Bits
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Mayor : OUT  std_logic;
         Menor : OUT  std_logic;
         Igual : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Mayor : std_logic;
   signal Menor : std_logic;
   signal Igual : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparador_4Bits PORT MAP (
          A => A,
          B => B,
          Mayor => Mayor,
          Menor => Menor,
          Igual => Igual
        );

   A <= "0000", "1111" after 20 ns, "1010" after 40 ns;
	B <= "1111", "0000" after 20 ns, "1010" after 40 ns;

END;
