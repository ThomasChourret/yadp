----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2025 17:10:06
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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

entity clock_divider is
    generic(
        prescaler : integer := 50000000
    );

    Port(
        clk_in : in std_logic;
        clk_out : out std_logic
    );
end clock_divider;

architecture Behavioral of clock_divider is
    signal internal : integer range 0 to prescaler;
    signal clk : std_logic;
begin

    process (clk_in)
    begin
        if rising_edge(clk_in) then
            internal <= internal + 1;
            if (internal = prescaler - 1) then
                internal <= 0;
            end if;
            if internal = 0 then
                clk <= '0';
            end if;
            if internal = prescaler/2 then
                clk <= '1';
            end if; 
        end if;
    end process;

    clk_out <= clk;

end Behavioral;