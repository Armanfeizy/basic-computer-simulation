----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:33:48 09/19/2020 
-- Design Name: 
-- Module Name:    Register_16 - Behavioral 
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

Entity Register_16 is 
	port (
		CLK, RES, Load, Inc : in std_logic;
		D : in std_logic_vector (15 downto 0);
		Q : out std_logic_vector (15 downto 0)
	);
End entity Register_16;

Architecture behavioral of Register_16 is 
	
Begin
	Process(CLK)
		variable t : std_logic_vector (15 downto 0) := (others => '0');
	begin
		if (CLK'event and clk = '1') then
			if (RES = '1') then
				t := (others => '0');
			elsif (Load = '1') then
				t := D;
			elsif (Inc = '1') then
				t := conv_std_logic_vector(conv_integer(t) + 1, 16);
			end if;
		end if;
		Q <= t;
	end process;
End behavioral;

