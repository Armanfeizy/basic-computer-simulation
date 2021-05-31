----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:53 09/06/2020 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
	port (
		I1, I2, Cin : in std_logic;
		S, Cout : out std_logic
	);
end entity full_adder;

architecture Structure of full_adder is
	Component half_adder is 
		Port (
			in1, in2: in std_logic;
			out1, out2 : out std_logic
	);
	End component half_adder;
	signal wire1, wire2, wire3 : std_logic;
begin
	half_adder_ins1 : half_adder port map (in1 => I1, in2 => I2, out1 => wire1, out2 => wire2);
	half_adder_ins2 : half_adder port map (in1 => wire1, in2 => Cin, out1 => S, out2 => wire3);
	Cout <= wire2 or wire3;
end Structure;

