--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:57:53 02/19/2018
-- Design Name:   
-- Module Name:   C:/Xilinx/Biestable_D/BiestableD_tb.vhd
-- Project Name:  Biestable_D
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BiestableD
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
 
ENTITY BiestableD_tb IS
END BiestableD_tb;
 
ARCHITECTURE behavior OF BiestableD_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BiestableD
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         Clear : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Clear : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BiestableD PORT MAP (
          D => D,
          CLK => CLK,
          Clear => Clear,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

Clear <= '1', '0' after 325 ns;
D <= '0', '1' after 225 ns, '0' after 530 ns, '1' after 725 ns, '0' after 875 ns, '1' after 1035 ns;
END;

