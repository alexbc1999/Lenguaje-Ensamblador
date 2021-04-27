----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:15 02/22/2018 
-- Design Name: 
-- Module Name:    Comparador_8Bits - Behavioral 
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

entity Comparador_8Bits is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Mayor2 : out  STD_LOGIC;
           Menor2 : out  STD_LOGIC;
           Igual2 : out  STD_LOGIC);
end Comparador_8Bits;

architecture Behavioral of Comparador_8Bits is

component Comparador_4Bits is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Mayor : out  STD_LOGIC;
           Menor : out  STD_LOGIC;
           Igual : out  STD_LOGIC);
end component;

SIGNAL S1,S2,S3,S4,S5,S6,S7,S8 : STD_LOGIC;

begin

Comp1: Comparador_4Bits PORT MAP(A=> A(7 downto 4), B=> B(7 downto 4), Mayor => S1, Igual =>S2, Menor =>S3);
Comp2: Comparador_4Bits PORT MAP(A=> A(3 downto 0), B=> B(3 downto 0), Mayor => S4, Igual =>S5, Menor =>S6);

S7 <= S6 AND S2;
Igual2 <= S5 AND  S2;
S8 <= S4 AND S2;

Mayor2 <= S8 OR S1;
Menor2 <= S7 OR S3;

end Behavioral;

