----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:29 09/19/2020 
-- Design Name: 
-- Module Name:    SequenceCounter - Behavioral 
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

Entity SequenceCounter is 
	port (
		CLKbase, RESET : in std_logic;
		Q : out std_logic_vector(3 downto 0)
	);
End entity SequenceCounter;

Architecture structure of SequenceCounter is 
	Component T_FF is 
		port (
			T, CLK, RES : in std_logic;
			Q : out std_logic
		);
	End component T_FF;
	Signal Ts : std_logic;
	Signal Qs, Qsnot : std_logic_vector(3 downto 0);
	 
Begin
	Qsnot <= not Qs;
	Q <= Qs;
	Ts <= '1';
	T_FF_ins1 : T_FF port map (T => Ts, CLK => CLKbase, RES => RESET, Q => Qs(0));
	T_FF_ins2 : T_FF port map (T => Ts, CLK => Qsnot(0), RES => RESET, Q => Qs(1));
	T_FF_ins3 : T_FF port map (T => Ts, CLK => Qsnot(1), RES => RESET, Q => Qs(2));
	T_FF_ins4 : T_FF port map (T => Ts, CLK => Qsnot(2), RES => RESET, Q => Qs(3));
End structure;

