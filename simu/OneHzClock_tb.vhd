----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/30/2025 03:19:38 PM
-- Design Name: 
-- Module Name: OneHzClock_tb - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OneHzClock_tb is
--  Port ( );
end OneHzClock_tb;

architecture Behavioral of OneHzClock_tb is


component OneHzClock is
    Generic (
        F_IN : integer := 100000000  -- generic input clock frequency in Hz 
        );
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           led : out STD_LOGIC);
end component;

signal s_clk : std_logic := '0';
signal s_reset : std_logic :='0';
signal s_led : std_logic;

begin

s_clk <= not s_clk after 10ns;
s_reset <= '1', '0' after 100us, '1' after 355us;



U1:  OneHzClock
    generic map(F_IN => 1000)  --  100 Hz
    port map(clk => s_clk,
             reset => s_reset, 
             led => s_led);
end Behavioral;
