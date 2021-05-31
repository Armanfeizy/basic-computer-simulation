----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:18:52 09/19/2020 
-- Design Name: 
-- Module Name:    Decoder_4_16 - Behavioral 
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

Entity Decoder_4_16 is 
	port (
		input : in std_logic_vector (3 downto 0);
		Result : out std_logic_vector(15 downto 0)
	);
End entity Decoder_4_16;

Architecture gatelevel of Decoder_4_16 is 
	
Begin 
	Result(0) <=  (not input(3)) and (not input(2)) and (not input(1)) and (not input(0));
	Result(1) <=  (not input(3)) and (not input(2)) and (not input(1)) and (input(0));
	Result(2) <=  (not input(3)) and (not input(2)) and (input(1)) and (not input(0));
	Result(3) <=  (not input(3)) and (not input(2)) and (input(1)) and (input(0));
	Result(4) <=  (not input(3)) and (input(2)) and (not input(1)) and (not input(0));
	Result(5) <=  (not input(3)) and (input(2)) and (not input(1)) and (input(0));
	Result(6) <=  (not input(3)) and (input(2)) and (input(1)) and (not input(0));
	Result(7) <=  (not input(3)) and (input(2)) and (input(1)) and (input(0));
	Result(8) <=  (input(3)) and (not input(2)) and (not input(1)) and (not input(0));
	Result(9) <=  (input(3)) and (not input(2)) and (not input(1)) and (input(0));
	Result(10) <= (input(3)) and (not input(2)) and (input(1)) and (not input(0));
	Result(11) <= (input(3)) and (not input(2)) and (input(1)) and (input(0));
	Result(12) <= (input(3)) and (input(2)) and (not input(1)) and (not input(0));
	Result(13) <= (input(3)) and (input(2)) and (not input(1)) and (input(0));
	Result(14) <= (input(3)) and (input(2)) and (input(1)) and (not input(0));
	Result(15) <= (input(3)) and (input(2)) and (input(1)) and (input(0));
	
End gatelevel;

