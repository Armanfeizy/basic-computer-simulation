----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:18:31 09/19/2020 
-- Design Name: 
-- Module Name:    Decoder_3_8 - Behavioral 
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
use IEEE.std_logic_1164.all;

Entity Decoder_3_8 is 
	port (
		input : in std_logic_vector (2 downto 0);
		Result : out std_logic_vector(7 downto 0)
	);
End entity Decoder_3_8;

Architecture gatelevel of Decoder_3_8 is 
	
Begin 
	Result(0) <= (not input(2)) and (not input(1)) and (not input(0));
	Result(1) <= (not input(2)) and (not input(1)) and (input(0));
	Result(2) <= (not input(2)) and (input(1)) and (not input(0));
	Result(3) <= (not input(2)) and (input(1)) and (input(0));
	Result(4) <= (input(2)) and (not input(1)) and (not input(0));
	Result(5) <= (input(2)) and (not input(1)) and (input(0));
	Result(6) <= (input(2)) and (input(1)) and (not input(0));
	Result(7) <= (input(2)) and (input(1)) and (input(0));
	
End gatelevel;

