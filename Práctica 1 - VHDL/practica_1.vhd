----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:55 02/19/2018 
-- Design Name: 
-- Module Name:    practica_1 - Behavioral 
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

entity sumador_4bits is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C0 : in  STD_LOGIC;
           C4 : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end sumador_4bits;

architecture Behavioral of sumador_4bits is

COMPONENT Sumador_completo
PORT ( X, Y, Cin: IN STD_LOGIC;
		Sum, Cout: OUT STD_LOGIC);
		
END COMPONENT;

SIGNAL C1, C2, C3: STD_LOGIC;

begin

Sum1: Sumador_completo PORT MAP (A(0), B(0), C0, S(0), C1);
Sum2: Sumador_completo PORT MAP (A(1), B(1), C1, S(1), C2);
Sum3: Sumador_completo PORT MAP (A(2), B(2), C2, S(2), C3);
Sum4: Sumador_completo PORT MAP (A(3), B(3), C3, S(3), C4);

END Behavioral;

