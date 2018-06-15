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
	ENC_A : in std_logic;
	ENC_B : in std_logic
	--GPIO_0_IN	: in    std_logic_vector(1 downto 0)
	);
end QuadratureDecoder;


architecture behavior of QuadratureDecoder is
	signal counter : signed(wl -1  downto 0) := (others => '0');
	signal GPIO_0_IN_old : std_logic_vector(1 downto 0) := (others => '0');
	--signal GPIO_0_IN_debounced : std_logic_vector(1 downto 0) := (others => '0');
	--signal GPIO_0_IN_debounced_old : std_logic_vector(1 downto 0) := (others => '0');
	--signal bouncecounter : integer range 0 to debouncer + 1;
	signal flipflop : std_logic_vector(1 downto 0) := (others => '0');
	
begin


GPIO_0 <= std_logic_vector(counter);

process(clk, reset)
	variable GPIO_0_IN : std_logic_vector(1 downto 0);
begin
	if rising_edge(clk) then
	  GPIO_0_IN(0) := ENC_A;
	  GPIO_0_IN(1) := ENC_B;
	  flipflop <= GPIO_0_IN;
	end if;
end process;

process(clk, reset) 
  
begin
	if reset = '1' then
		counter <= (others => '0');
		GPIO_0_IN_old <= (others => '1');
	elsif rising_edge(clk) then

  
	  
	  --if (not(GPIO_0_IN_debounced = GPIO_0_IN_debounced_old)) and GPIO_0_IN_debounced_old = "00" then
	--if not(GPIO_0_IN = GPIO_0_IN_old) and GPIO_0_IN_old = "00" then
		if not(flipflop = GPIO_0_IN_old) and GPIO_0_IN_old = "00" then
		 	case flipflop is
	  		when "10" => counter <= counter + 1;
			when "01" => counter <= counter - 1;
			when others => 
	   	end case;
		end if;
		
		--GPIO_0_IN_debounced_out <= GPIO_0_IN_debounced;
		--GPIO_0_IN_debounced_old <= GPIO_0_IN_debounced;
		GPIO_0_IN_old <= flipflop;
	end if;
end process;	

end behavior;
