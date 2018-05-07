library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QuadratureDecoder is
 generic (wl : natural := 32);
 port ( 
	clk   : in std_logic;
	reset  : in std_logic;
	enable : in std_logic;
	GPIO_0		: inout std_logic_vector(wl -1 downto 0);
	GPIO_0_IN	: in    std_logic_vector(1 downto 0)

	);
end QuadratureDecoder;


architecture behavior of QuadratureDecoder is
	--variable counter : std_logic_vector(wl -1  downto 0) := (others => '0');
	signal counter : std_logic_vector(wl -1  downto 0) := (others => '0');
	signal GPIO_0_IN_old : std_logic_vector(1 downto 0) := (others => '0');
begin

process(GPIO_0_IN)
begin
	--if (enable = '1') and (rising_edge(GPIO_0_IN(0)) or rising_edge(GPIO_0_IN(1))) then
	if ((enable = '1') and ((GPIO_0_IN_old(0) = '0' and GPIO_0_IN(0) = '1') or (GPIO_0_IN_old(1) = '0' and GPIO_0_IN(1) = '1'))) then
		case GPIO_0_IN is
			when "10" => counter <= std_logic_vector(signed(counter) + 1);
			when "01" => counter <= std_logic_vector(signed(counter) - 1);
			when others => -- nothing
		end case;
	end if;
	GPIO_0_IN_old <= GPIO_0_IN;
end process;


process(clk, reset) 
begin
	if reset = '1' then
		--counter <= (others => '0');
		GPIO_0 <= (others => '0');
	elsif  rising_edge(clk) then
		GPIO_0 <= counter;
	end if;
end process;	

end behavior;
