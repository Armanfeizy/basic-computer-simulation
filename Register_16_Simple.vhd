----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:45:24 09/19/2020 
-- Design Name: 
-- Module Name:    Register_16_Simple - Behavioral 
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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;  

Entity Register_16_Simple is 
	port (
		CLK, Load: in std_logic;
		D : in std_logic_vector (15 downto 0);
		Q : out std_logic_vector (15 downto 0)
	);
End entity Register_16_Simple;

Architecture behavioral of Register_16_Simple is 
	
Begin
	Process(CLK)
		variable t : std_logic_vector (15 downto 0) := (others => '0');
	begin
		if (CLK'event and clk = '1') then
			if (Load = '1') then
				t := D;
			end if;
		end if;
		Q <= t;
	end process;
End behavioral;

