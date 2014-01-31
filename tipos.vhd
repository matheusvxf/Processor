library ieee;
use ieee.std_logic_1164.all;

package tipos is
	type dataArray is array(natural range <>) of std_logic_vector(15 downto 0);
	type InstrState is (idle, fetchInstruction, move, loadImmediate, addition, subtraction, load, storage, movenz);
end tipos;