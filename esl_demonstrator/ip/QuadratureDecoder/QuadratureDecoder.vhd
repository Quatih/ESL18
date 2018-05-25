library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity QuadratureDecoder is
 generic (wl : natural := 32;
  	       debouncer : natural := 1);

 port ( 
	clk   : in std_logic;
	reset  : in std_logic;
	enable : in std_logic;
	GPIO_0		: inout std_logic_vector(wl -1 downto 0);
	GPIO_0_IN_debounced_out : out std_logic_vector(1 downto 0);
	GPIO_0_IN	: in    std_logic_vector(1 downto 0)

	);
end QuadratureDecoder;


architecture behavior of QuadratureDecoder is
	signal counter : signed(wl -1  downto 0) := (others => '0');
	signal GPIO_0_IN_old : std_logic_vector(1 downto 0) := (others => '0');
	signal GPIO_0_IN_debounced : std_logic_vector(1 downto 0) := (others => '0');
	signal GPIO_0_IN_debounced_old : std_logic_vector(1 downto 0) := (others => '0');
	signal bouncecounter : integer range 0 to debouncer + 1;
	signal flipflop : std_logic_vector(1 downto 0) := (others => '0');
begin



GPIO_0 <= std_logic_vector(counter);

process(clk, reset)
begin
	if falling_edge(clk) then
		flipflop <= GPIO_0_IN;
	end if;
end process;

process(clk, reset) 
  
begin
	if reset = '1' then
		counter <= (others => '0');
		GPIO_0_IN_old <= (others => '1');
	elsif rising_edge(clk) then
	  
	  --Debouncing
--	  if(GPIO_0_IN = GPIO_0_IN_old) then
--	   bouncecounter <= bouncecounter + 1;
--	   if(bouncecounter = debouncer) then
--	     bouncecounter <= 0;
--	     GPIO_0_IN_debounced <= GPIO_0_IN;
--	   end if;
--	  else
--	    bouncecounter <= 0;
--	  end if;
	  
	  
	  
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
