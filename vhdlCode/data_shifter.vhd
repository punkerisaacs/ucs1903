library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
entity data_shifter is
	port(
	r, g, b, dataClock, enabled: in std_logic;
	data: out std_logic_vector(0 to 1));
end data_shifter;

architecture data_shifter_behavioral of data_shifter is
begin

	process (dataClock, enabled) --shifter
	variable rgb : std_logic_vector(0 to 23) := "000000001111111100000000";
	variable totalData: integer range 0 to 24;
	variable dataBit: std_logic;
	begin
	
	if r = '0' then
		rgb(0) := '1';
		rgb(1) := '1';
		rgb(2) := '1';
		rgb(3) := '1';
		rgb(4) := '1';
		rgb(5) := '1';
		rgb(6) := '1';
		rgb(7) := '1';	
	else
		rgb(0) := '0';
		rgb(1) := '0';
		rgb(2) := '0';
		rgb(3) := '0';
		rgb(4) := '0';
		rgb(5) := '0';
		rgb(6) := '0';
		rgb(7) := '0';
	end if;
	
	if g = '0' then
		rgb(8) := '1';
		rgb(9) := '1';
		rgb(10) := '1';
		rgb(11) := '1';
		rgb(12) := '1';
		rgb(13) := '1';
		rgb(14) := '1';
		rgb(15) := '1';
	else
		rgb(8) := '0';
		rgb(9) := '0';
		rgb(10) := '0';
		rgb(11) := '0';
		rgb(12) := '0';
		rgb(13) := '0';
		rgb(14) := '0';
		rgb(15) := '0';
	end if;
	
	if b = '0' then
		rgb(16) := '1';
		rgb(17) := '1';
		rgb(18) := '1';
		rgb(19) := '1';
		rgb(20) := '1';
		rgb(21) := '1';
		rgb(22) := '1';
		rgb(23) := '1';
	else
		rgb(16) := '0';
		rgb(17) := '0';
		rgb(18) := '0';
		rgb(19) := '0';
		rgb(20) := '0';
		rgb(21) := '0';
		rgb(22) := '0';
		rgb(23) := '0';
	end if;
	
		if enabled = '0' then
			data <= "11";
			totalData := 0;
		else if RISING_EDGE(dataClock) then
			if  totalData > 23 then
				data <= "11";
			else
				data(0) <= '0';
				data(1) <= rgb(totalData);	
			end if;
				totalData := totalData + 1;
			end if;
		end if;
		
	end process;
	
end data_shifter_behavioral;