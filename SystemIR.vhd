library ieee;
use ieee.std_logic_1164.all;

entity SystemIR is
	port(
		Clock, Reset, Run:in std_logic;
		LEDs:buffer std_logic_vector(15 downto 0)
	);	
end SystemIR;

architecture behavior of SystemIR is
	component processorIR
		port(
			Clock, Run, Reset:in std_logic;
			DIN:in std_logic_vector(15 downto 0);
			Done, W:buffer std_logic;
			ADDR, DOUT:buffer std_logic_vector(15 downto 0)
		);	
	end component;
	
	component RAM
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	end component;
	
	component Registern
		generic(
			n : integer := 16
		);
		port(
			R:in std_logic_vector(n-1 downto 0);
			Rin, clock:in std_logic;
			Q:buffer std_logic_vector (n-1 downto 0)
		);
	end component;
	
	signal DIN, ADDR, q, DOUT:std_logic_vector(15 downto 0);
	signal W, Qin, Done, wr_en:std_logic;
	
	begin
	DIN <= q;
	
	MEMORY: RAM port map(ADDR(6 downto 0), Clock, DOUT, wr_en, q);
	PROC: ProcessorIR port map(Clock, Run, Reset, DIN, Done, W, ADDR, DOUT);
	LEDREGISTER: Registern generic map(16) port map(DOUT, Qin, clock, LEDs);
	
	process(ADDR, W)
		begin
		wr_en <= W and not(ADDR(12) or ADDR(13) or ADDR(14) or ADDR(15));
		Qin <= W and not(not ADDR(12) or ADDR(13) or ADDR(14) or ADDR(15));
	end process;
	
end behavior;