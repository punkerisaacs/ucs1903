library ieee;
use ieee.std_logic_1164.all;

entity frecuencies is
	port(
	clock, enabled: in std_logic;
	dataClock, higthClock, slowClock, reset: out std_logic);
end frecuencies;

architecture frecuencies_behavioral of frecuencies is
signal count: integer RANGE 0 TO 125;
begin

	reset <= enabled;
	process (clock, enabled) --dataClock
	begin
		if enabled = '0' then
			dataClock <= '0';
			higthClock <= '0';
			slowClock <= '0';
			count <= 0;
		else if  RISING_EDGE(clock) then
				count <= count + 1;	
				
				if count < 62 then --DATA CLOCK
					dataClock <= '1';
				else
					dataClock <= '0';
				end if;
				
				if count < 25 then --slowClock
					slowClock <= '1';
				else
					slowClock <= '0';
				end if;
			
				if count < 100 then --higthClock
					higthClock <= '1';
				else
					higthClock <= '0';
				end if;
			
			end if;
		
		end if;	
		
	end process;

end frecuencies_behavioral;
