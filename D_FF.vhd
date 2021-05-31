----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:30:16 09/19/2020 
-- Design Name: 
-- Module Name:    D_FF - Behavioral 
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

Entity D_FF is 
	port (
		D, CLK, RES : in std_logic;
		Q : out std_logic
	);
End entity D_FF;

Architecture behavioral of D_FF is 
	
Begin
	Process(CLK, RES)
	begin
		if (RES = '0') then
			Q <= '0';
		elsif (CLK'event and clk = '1') then
			Q <= D;
		end if;
	end process;
End behavioral;

