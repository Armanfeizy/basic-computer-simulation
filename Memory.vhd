----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:36:40 09/13/2020 
-- Design Name: 
-- Module Name:    Simple_RAM - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory is
	port ( 
			WR, RD, RESET, CLK : in std_logic;
			Addr : in std_logic_vector (11 downto 0);
			Data_in : in std_logic_vector (15 downto 0);
			Data_out : out std_logic_vector (15 downto 0)
	);		
end Memory ;

architecture Behavioral of Memory  is
	type MEM is array (2**12 - 1 downto 0) of std_logic_vector (15 downto 0);
	Signal storage : MEM;
	
begin

	Process (CLK, RESET)
	begin
		if (RESET = '1') then
				for i in 0 to (2**12 - 1) loop
					storage(i) <= (others => '0'); -- you can set defaults here
				end loop;
		end if;
		if (CLK'event and CLK = '1') then
			
			if (RD = '1') then
				Data_out <= storage (conv_integer(Addr));
			end if;
			if (WR ='1') then 	
				storage (conv_integer(Addr)) <= Data_in;
			end if;
			
		
		end if;
	end process;
end Behavioral;

