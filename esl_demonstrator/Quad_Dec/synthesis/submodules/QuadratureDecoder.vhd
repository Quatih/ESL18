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
	signal counter : signed(wl -1  downto 0) := (others => '0');
	signal GPIO_0_IN_old : std_logic_vector(1 downto 0) := (others => '0');
	signal high : std_logic := '0';
begin

GPIO_0 <= std_logic_vector(counter);

process(clk, reset) 
begin
	if reset = '1' then
		counter <= (others => '0');
		GPIO_0_IN_old <= (others => '0');
		high <= '0';
	elsif  rising_edge(clk) then
	  if high = '0' and (not(GPIO_0_IN = GPIO_0_IN_old)) and GPIO_0_IN_old = "00" then
		 	case GPIO_0_IN is
	  		when "10" => counter <= counter + 1;
	   		when "01" => counter <= counter - 1;
	   		when others => 
	   	end case;
			high <= '1';
		else
			high <= '0';
		end if;
		
		GPIO_0_IN_old <= GPIO_0_IN;
	end if;
end process;	

end behavior;
