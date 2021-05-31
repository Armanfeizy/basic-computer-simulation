----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:16:54 09/19/2020 
-- Design Name: 
-- Module Name:    T_FF - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

Entity T_FF is 
	port (
		T, CLK, RES : in std_logic;
		Q : out std_logic
	);
End entity T_FF;

Architecture behavioral of T_FF is 
	
Begin
	Process(CLK)
	Variable F : std_logic;
	begin
		if (CLK'event and clk = '1') then
			if (RES = '1') then
				F := '0';
			else
				F := F xor T;	
			end if;
		end if;
	Q <= F;
	end process;
End behavioral;

