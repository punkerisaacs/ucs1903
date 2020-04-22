library ieee;
use ieee.std_logic_1164.all;

entity multiplexor is
	port(
	data: in std_logic_vector(0 to 1) := "11";
	higthClock, slowClock: in std_logic;
	UCS1903_data: out std_logic );
end multiplexor;

architecture multiplexor_behavioral of multiplexor is
begin

 PROCESS (data, higthClock, slowClock)
	BEGIN
	CASE data IS
		WHEN "00" => UCS1903_data <= slowClock;
		WHEN "01" => UCS1903_data <= higthClock;
		WHEN OTHERS => UCS1903_data <= '0';
	 END CASE;
 END PROCESS;

end multiplexor_behavioral;
