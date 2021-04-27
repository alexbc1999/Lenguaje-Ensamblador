----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:23 02/28/2018 
-- Design Name: 
-- Module Name:    Contador_4Bits - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Contador_4Bits is
    Port ( Dato : in  STD_LOGIC_VECTOR (3 downto 0);
           Carga : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           AD : in  STD_LOGIC;
           Sal : out  STD_LOGIC_VECTOR (3 downto 0));
end Contador_4Bits;

architecture Behavioral of Contador_4Bits is

	signal cnt_tmp: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";

begin

  proceso_contador: process (Carga, Reset, Clk, Dato) begin
        if Reset = '1' then
            cnt_tmp <= "0000"; 
        elsif rising_edge(Clk) then
				if Carga = '1' then
            cnt_tmp <= Dato;
				else
					if AD='1' then
						if cnt_tmp = "1111" then
						cnt_tmp <= "0000";
						else
						cnt_tmp <= cnt_tmp + 1;
						end if;
					 else 
						if cnt_tmp = "0000" then
						cnt_tmp <= "1111";
						else
						cnt_tmp <= cnt_tmp-1;
						end if;
					end if;
				end if;
        end if;
    end process;
 
    Sal <= cnt_tmp;


end Behavioral;

