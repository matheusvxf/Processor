library ieee;
use ieee.std_logic_1164.all;
use WORK.tipos.all;
entity ProcessorIR is
	port(
		Clock, Run, Reset:in std_logic;
		DIN:in std_logic_vector(15 downto 0);
		Done, W:buffer std_logic;
		ADDR, DOUT:buffer std_logic_vector(15 downto 0)
	);	
end ProcessorIR;

architecture behavior of ProcessorIR is
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
	
	component Mux
		port(
			PC, DIN, G, R0, R1, R2, R3, R4, R5, R6:in std_logic_vector(15 downto 0);
			control:in std_logic_vector(10 downto 0);
			Mbus:buffer std_logic_vector (15 downto 0)
		);	
	end component;
	
	component Counter
		PORT
		(
			clock		: IN STD_LOGIC ;
			sclr		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
		);
	end component;
	
	component Addsub
		PORT
		(
			add_sub		: IN STD_LOGIC ;
			dataa		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			datab		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	end component;
	
	component CU
		port(
			clock:in std_logic;
			IR:in std_logic_vector(8 downto 0);
			Zero, Reset, Run:in std_logic;
			Gin, Ain, IRin, DOUTin, ADDRin, inc_PC, W_D, add_sub, Done, PC_clear:buffer std_logic;
			muxCode:buffer std_logic_vector(10 downto 0);
			Rin:buffer std_logic_vector(7 downto 0)
		);
	end component;
	
	component ProgramCounter
		PORT
		(
			aclr		: IN STD_LOGIC ;
			clock		: IN STD_LOGIC ;
			cnt_en		: IN STD_LOGIC ;
			data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			sload		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	end component;
	
	--signals
	signal PBus, G, A, addSubResult:std_logic_vector (15 downto 0);
	signal IR:std_logic_vector(8 downto 0);
	signal R:dataArray (7 downto 0);
	signal Rin, Rout:std_logic_vector(7 downto 0);
	signal PC_clear, Zero, Gin, Gout, DINout, Ain, IRin, DOUTin, ADDRin, inc_PC, add_sub, clear, W_D:std_logic;
	signal muxCode:std_logic_vector(10 downto 0);
	alias PC:std_logic_vector(15 downto 0) is R(7);
	alias PCout:std_logic is Rout(7);
	alias PC_load:std_logic is Rin(7);
	begin
	
	REGISTERS:for i in 6 downto 0 generate
		RegisterBlocks: Registern generic map (16) port map(PBus, Rin(i), Clock, R(i));
	end generate;
	
	ProgramCounterBlock: ProgramCounter port map(PC_clear, Clock, inc_PC, PBus, PC_load, PC);
	IntructionRegister: Registern generic map(9) port map(DIN(15 downto 7), IRin, Clock, IR);
	addSubRegister: Registern generic map(16) port map(addSubResult, Gin, Clock, G);
	AcumulatorRegister: Registern generic map(16) port map(PBus, Ain, Clock, A);
	ADDR_Register: Registern generic map(16) port map(PBus, ADDRin, Clock, ADDR);
	DOUT_Register: Registern generic map(16) port map(PBus, DOUTin, Clock, DOUT);
	
	Multiplexar:Mux port map(PC, DIN, G, R(0), R(1), R(2), R(3), R(4), R(5), R(6), muxCode, PBus);
	AddSubBlock: Addsub port map(add_sub, A, PBus, addSubResult);
	ControlUnityBlock: CU port map(clock, IR, Zero, Reset, Run, Gin, Ain, IRin, DOUTin, ADDRin, inc_PC, W_D, add_sub, Done, PC_clear, muxCode, Rin);
	
	process(G)
		begin
		if G = "0000000000000000"then
			Zero <= '1';
		else
			Zero <= '0';
		end if;
	end process;
	
	process(clock)
		begin
		if clock = '1' and clock'event then
			W <= W_D;
		end if;
	end process;
end behavior;