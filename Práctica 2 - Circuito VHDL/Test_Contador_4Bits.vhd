--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:09:50 02/28/2018
-- Design Name:   
-- Module Name:   D:/abc4o/Desktop/Universidad/.VirtualBox/Xilinx/Contador/Test_Contador_4Bits.vhd
-- Project Name:  Contador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Contador_4Bits
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
 
ENTITY Test_Contador_4Bits IS
END Test_Contador_4Bits;
 
ARCHITECTURE behavior OF Test_Contador_4Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Contador_4Bits
    PORT(
         Dato : IN  std_logic_vector(3 downto 0);
         Carga : IN  std_logic;
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         AD : IN  std_logic;
         Sal : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Dato : std_logic_vector(3 downto 0) := (others => '0');
   signal Carga : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal AD : std_logic := '0';

 	--Outputs
   signal Sal : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Contador_4Bits PORT MAP (
          Dato => Dato,
          Carga => Carga,
          Reset => Reset,
          Clk => Clk,
          AD => AD,
          Sal => Sal
        );
		  
	
	
   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
 
	AD <= '1', '0' AFTER 200 ns;
	Reset <= '0', '1' AFTER 100 ns, '0' AFTER 120 ns;
	Dato <= "0111";
	Carga <= '0', '1' AFTER 140 ns, '0' AFTER 180 ns;
  

END;
