----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2025 03:01:45 PM
-- Design Name: 
-- Module Name: OneHzClock - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;



entity OneHzClock is

    Generic (
        f_in : integer := 50000000  -- generic input clock frequency in Hz 
        );
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           led : out STD_LOGIC);
end OneHzClock;

architecture Behavioral of OneHzClock is

signal counter: integer:=0;
signal s_led: std_logic:='0';

begin
    process(clk,reset)
        begin
        if reset = '1' then
                counter <= 0;
                s_led <= '0';			
        else
            if (clk'event and clk='1') then
                if(counter =f_in/2-1) then   -- 0.5s
                    counter <= 0;				-- reset the counter
                    s_led <= not s_led;		-- switch the state of the led
                else	
                    counter <= counter +1;	-- continue the count
                end if;
             end if;
         end if;
    end process;
    
    led <= s_led;
                


end architecture Behavioral;
