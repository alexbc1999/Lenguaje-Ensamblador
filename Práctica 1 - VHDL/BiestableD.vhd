----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:55:24 02/19/2018 
-- Design Name: 
-- Module Name:    BiestableD - Behavioral 
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

entity BiestableD is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Clear : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end BiestableD;

architecture BiestableDarq of BiestableD is

BEGIN

	PROCESS (CLK, Clear)
	BEGIN
		IF (Clear = '1') THEN Q <= '0';
		ELSIF (CLK'event and CLK = '1') THEN
			Q <= D;
		END IF;
		
	END PROCESS;
END BiestableDarq;


