library ieee;
use ieee.std_logic_1164.all;

entity clocks_entity is
	port(
	clock, enabled: in std_logic;
	higthClock, slowClock, reset: out std_logic);
end clocks_entity;

architecture clocks_behavioral of clocks_entity is
signal higthCount, slowCount: integer RANGE 0 TO 125;
begin

	process (clock, enabled) --higthClock
	begin
		if enabled = '0' then
			higthClock <= '0';
		elsif  RISING_EDGE(clock) then
			higthCount <= higthCount + 1;	
		end if;	
		
	end process;
	
end clocks_behavioral;
