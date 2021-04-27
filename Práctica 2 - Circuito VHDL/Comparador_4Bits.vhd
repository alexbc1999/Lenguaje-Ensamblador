----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:37:07 02/22/2018 
-- Design Name: 
-- Module Name:    Comparador_4Bits - Behavioral 
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

entity Comparador_4Bits is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Mayor : out  STD_LOGIC;
           Menor : out  STD_LOGIC;
           Igual : out  STD_LOGIC);
end Comparador_4Bits;

architecture Behavioral of Comparador_4Bits is

begin

Mayor <= '1' when (A>B) else '0';
Menor <= '1' when (A<B) else '0';
Igual <= '1' when (A=B) else '0';

end Behavioral;

