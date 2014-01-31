library ieee;
use ieee.std_logic_1164.all;
use WORK.tipos.all;

entity CU is
	port(
		Clock:in std_logic;
		IR:in std_logic_vector(8 downto 0);
		Zero, Reset, Run:in std_logic;
		Gin, Ain, IRin, DOUTin, ADDRin, inc_PC, W_D, add_sub, Done, PC_clear:buffer std_logic;
		muxCode:buffer std_logic_vector(10 downto 0);
		Rin:buffer std_logic_vector(7 downto 0)
	);	
end CU;

architecture behavior of CU is	
	--functions
	function I2State(I:std_logic_vector(2 downto 0)) return InstrState is
		variable r:InstrState;
		begin
		case I is
			when "000" => r := move;
			when "001" => r := loadImmediate;
			when "010" => r := addition;
			when "011" => r := subtraction;
			when "100" => r := load;
			when "101" => r := storage;
			when "110" => r := movenz;
			when others => r := fetchInstruction;
		end case;
		return r;
	end;
	
	function decodeRegister3to8(c:std_logic_vector(2 downto 0)) return std_logic_vector is
		variable r:std_logic_vector(7 downto 0);
	begin
		case c is
			when "000" => r := "00000001";
			when "001" => r := "00000010";
			when "010" => r := "00000100";
			when "011" => r := "00001000";
			when "100" => r := "00010000";
			when "101" => r := "00100000";
			when "110" => r := "01000000";
			when "111" => r := "10000000";
			when others => r := "00000000";
		end case;
		return r;
	end;	
	
	function codeGenerateOutput(PC, DIN, G:std_logic;
															R:std_logic_vector(7 downto 0)) return std_logic_vector is
		variable result:std_logic_vector(10 downto 0);
	begin
		result := PC & DIN & G & R;
		return result;
	end;
	
	function codeGenerateInput(	PC, G, IR, A, DOUT, ADDR:std_logic;
															R:std_logic_vector(7 downto 0)) return std_logic_vector is
		variable result:std_logic_vector(13 downto 0);
	begin
		result := PC & G & IR & A & DOUT & ADDR & R;
		return result;
	end;
	
	--signals 
	signal DINout, Gout, PCout:std_logic;
	signal Rout:std_logic_vector(6 downto 0);
	signal outputSignal:std_logic_vector(10 downto 0);
	signal inputSignal:std_logic_vector(13 downto 0);
	signal T:integer range 0 to 7;
	signal state:instrState;
	signal I:std_logic_vector(2 downto 0);
	signal Rx, Ry:std_logic_vector(7 downto 0);
	constant DISABLED:std_logic_vector(7 downto 0) := "00000000";
	
	begin	
	muxCode <= outputSignal;
	Gin <= inputSignal(12);
	IRin <= inputSignal(11);
	Ain <= inputSignal(10);
	DOUTin <= inputSignal(9);
	ADDRin <= inputSignal(8);
	Rin(6 downto 0) <= inputSignal(6 downto 0); -- Rin(7) is an aliasing with PC_load
	Rin(7) <= inputSignal(13) or inputSignal(7);
	
	I <= IR(8 downto 6);
	Rx <= decodeRegister3to8(IR(5 downto 3));
	Ry <= decodeRegister3to8(IR(2 downto 0));
	
	
	process(Clock, reset)
		variable cycle:integer range 0 to 7;
		variable present_state, next_state:InstrState;
		begin
		PC_clear <= '0';
		if reset = '0' then
			next_state := fetchInstruction;
			present_state := idle;
			PC_clear <= '1';
			cycle := 0;
		elsif clock = '0' and clock'event then
			if run = '1' then
				case present_state is
					when idle =>
						next_state := fetchInstruction;
					when fetchInstruction =>
						case cycle is
							when 0 =>
								cycle := cycle + 1;
							when 3 => -- Faz a leitura
								cycle := cycle + 1;
							when 4 =>
								next_state := I2State(I);
								cycle := 0;
							when others =>
								cycle := cycle + 1;
						end case;
					when move =>
						case cycle is
							when 0 =>
								cycle := cycle + 1;
								next_state := fetchInstruction;
								cycle := 0;
							when others =>
						end case;
					when loadImmediate =>
						case cycle is
							when 0 =>
								cycle := cycle + 1;
							when 3 =>
								cycle := 0;
								next_state := fetchInstruction;
							when others =>
								cycle := cycle + 1;
						end case;
					when addition =>
						case cycle is
							when 0 => 
								cycle := cycle + 1;
							when 1 =>
								cycle := cycle + 1;
							when 2 =>
								cycle := 0;
								next_state := fetchInstruction;
							when others =>
						end case;
					when subtraction =>
						case cycle is
							when 0 =>
								cycle := cycle + 1;
							when 1 =>
								cycle := cycle + 1;
							when 2 =>
								cycle := 0;
								next_state := fetchInstruction;
							when others =>
						end case;
					when load =>
						case cycle is
							when 0 =>
								cycle := cycle + 1;
							when 3 =>
								cycle := 0;
								next_state := fetchInstruction;
							when others =>
								cycle := cycle + 1;
						end case;
					when storage =>
						case cycle is
							when 0 => --Set address
								cycle := cycle + 1;
							when 1 => --Set data
								cycle := cycle + 1;
							when 2 => --Enable write
								cycle := 0;
								next_state := fetchInstruction;
							when others =>
						end case;
					when movenz =>
						case cycle is
							when 0 =>
								cycle := 0;
								if Zero = '0' then
									next_state := move;
								else
									next_state := fetchInstruction;
								end if;
							when others =>
						end case;
				end case;
				present_state := next_state;
			else
				next_state := present_state;
				present_state := idle;
			end if;
		end if;
		state <= present_state;
		T <= cycle;
	end process;
	
	process(state, T, Rx, Ry, Zero)
		begin
		inc_PC <= '0';
		Done <= '0';
		add_sub <= '1';
		W_D <= '0';
		inputSignal <= codeGenerateInput('0', '0', '0', '0','0', '0', DISABLED);
		outputSignal <= codeGenerateOutput('0', '0', '0', DISABLED);
		case state is
			when idle =>
			when fetchInstruction =>
				case T is
					when 0 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0','0', '1', DISABLED);
						outputSignal <= codeGenerateOutput('1', '0', '0', DISABLED);
					when 3 =>
						inputSignal <= codeGenerateInput('0', '0', '1', '0','0', '0', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', DISABLED);
					when 4 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0','0', '0', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', DISABLED);
						inc_PC <= '1';
					when others =>
				end case;
			when move =>
				case T is
					when 0 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '0', '0', Rx);
						outputSignal <= codeGenerateOutput('0', '0', '0', Ry);
						Done <= '1';
					when others =>
				end case;
			when loadImmediate =>
				case T is
					when 0 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '0', '1', DISABLED);
						outputSignal <= codeGenerateOutput('1', '0', '0', DISABLED);
					when 3 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '0', '0', Rx);
						outputSignal <= codeGenerateOutput('0', '1', '0', DISABLED);
						Done <= '1';
						inc_PC <= '1';
					when others =>
				end case;
			when addition =>
				case T is
					when 0 => 
						inputSignal <= codeGenerateInput('0', '0', '0', '1', '0', '0', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', Rx);
					when 1 =>
						inputSignal <= codeGenerateInput('0', '1', '0', '0', '0', '0', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', Ry);
					when 2 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '0', '0', Rx);
						outputSignal <= codeGenerateOutput('0', '0', '1', DISABLED);
						Done <= '1';
					when others =>
				end case;
			when subtraction =>
				case T is
					when 0 => 
						inputSignal <= codeGenerateInput('0', '0', '0', '1', '0', '0', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', Rx);
					when 1 =>
						inputSignal <= codeGenerateInput('0', '1', '0', '0', '0', '0', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', Ry);
						add_sub <= '0';
					when 2 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '0', '0', Rx);
						outputSignal <= codeGenerateOutput('0', '0', '1', DISABLED);
						Done <= '1';
					when others =>
				end case;
			when load =>
				case T is
					when 0 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '0', '1', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', Ry);
					when 3 =>
						inputSignal <= codeGenerateInput('0', '0', '0', '0','0', '0', Rx);
						outputSignal <= codeGenerateOutput('0', '1', '0', DISABLED);
						Done <= '1';
					when others =>
				end case;
			when storage =>
				case T is
					when 0 => --Set address
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '0', '1', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', Ry);
					when 1 => --Set data
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '1', '0', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', Rx);
					when 2 => --Enable write
						inputSignal <= codeGenerateInput('0', '0', '0', '0', '0', '0', DISABLED);
						outputSignal <= codeGenerateOutput('0', '0', '0', Rx);
						W_D <= '1';
						Done <= '1';
					when others =>
				end case;
			when movenz =>
				case T is
					when 0 =>
						if Zero = '1' then
							Done <= '1';
						end if;
					when others =>
				end case;
		end case;
	end process;
end behavior;