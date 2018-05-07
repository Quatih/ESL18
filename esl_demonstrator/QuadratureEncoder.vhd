
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QuadratureEncoder is
 generic (wl : natural := 32);
 port ( 
	clk   : in std_logic;
	reset  : in std_logic;
	enable : in std_logic;
	GPIO_0		: inout std_logic_vector(wl -1 downto 0);
	GPIO_0_IN	: in    std_logic_vector(1 downto 0);

	);
end QuadratureEncoder;


architecture behavior of QuadratureEncoder is
	
	signal counter : std_logic_vector(wl -1  downto 0) := (others => '0');
begin

process(GPIO_0_IN)
begin
	if rising_edge(GPIO_0_IN(0)) or rising_edge(GPIO_0_IN(1) and enable = '1' then
		case GPIO_0_IN is
			when "10" => counter <= std_logic_vector(signed(counter) + 1);
			when "01" => counter <= std_logic_vector(signed(counter) - 1);
			when others => -- nothing
		end case;
	end if;
end process;


process(clk, reset) 
begin
	if reset = '1' then
		counter <= '0';
		GPIO_0 <= (others => '0');
	elsif  rising_edge(clk) then
		GPIO_0 <= counter;
	end if;
end process;	

end behavior;
