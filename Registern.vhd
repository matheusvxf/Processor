library ieee;
use ieee.std_logic_1164.all;

entity registern is 
	generic(
		n : integer := 16
	);
	port(
		R:in std_logic_vector(n-1 downto 0);
		Rin, clock:in std_logic;
		Q:buffer std_logic_vector (n-1 downto 0)
	);	
end registern;

architecture behavior of registern is
	begin
	process(clock, Rin)
		begin
			if clock'event and clock = '1' and Rin = '1' then
				Q <= R;
			end if;
	end process;
end behavior;