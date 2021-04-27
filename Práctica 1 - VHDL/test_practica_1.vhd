--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:59:09 02/19/2018
-- Design Name:   
-- Module Name:   C:/Xilinx/practica_1/test_practica_1.vhd
-- Project Name:  practica_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sumador_4bits
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
 
ENTITY test_practica_1 IS
END test_practica_1;
 
ARCHITECTURE test_flujo OF test_practica_1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumador_4bits
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C0 : IN  std_logic;
         C4 : OUT  std_logic;
         S : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
FOR C1: sumador_4bits USE ENTITY WORK.sumador_4bits;

SIGNAL Dato_A, Dato_B : STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   C1: sumador_4bits PORT MAP (
          A => Dato_A,
          B => Dato_B,
          C0 => Cin
        );
		  
Cin <= '0', '1' AFTER 20 ns, '0' AFTER 40 ns, '1' AFTER 60 ns, '0' AFTER 80 ns;
Dato_A <= "0000", "1111" AFTER 10 ns, "1101" AFTER 20 ns, "1100" AFTER 30 ns,
"0111" AFTER 40 ns, "0101" AFTER 50 ns;
Dato_B <= "1001", "0110" AFTER 10 ns, "0111" AFTER 20 ns, "0100" AFTER 30 ns,
"1000" AFTER 40 ns, "1001" AFTER 50 ns;

END test_flujo;
 

  