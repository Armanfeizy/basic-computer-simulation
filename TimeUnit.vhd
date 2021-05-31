----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:15 09/19/2020 
-- Design Name: 
-- Module Name:    TimeUnit - Behavioral 
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

entity TimeUnit is
	port (
			CLK, RES : in std_logic;
			T : out std_logic_vector (15 downto 0)
	);
end TimeUnit;

architecture structure of TimeUnit is
	component SequenceCounter is 
		port (
			CLKbase, RESET : in std_logic;
			Q : out std_logic_vector(3 downto 0)
		);
	end component SequenceCounter ;
	
	component Decoder_4_16 is
		port (
			input : in std_logic_vector (3 downto 0);
			Result : out std_logic_vector(15 downto 0)
		);
	end component Decoder_4_16;
	Signal wire : std_logic_vector (3 downto 0) := (others => '0');
begin
	counter : SequenceCounter port map (CLKbase => CLK, RESET => RES, Q => wire);
	decoder : Decoder_4_16 port map (input => wire, Result => T);

end structure;

