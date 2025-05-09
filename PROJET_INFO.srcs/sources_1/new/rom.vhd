----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2025 17:50:07
-- Design Name: 
-- Module Name: rom - Behavioral
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
use IEEE.numeric_std.ALL;

use work.registers_pkg.all;

entity rom is

    Port ( 
        addr : in std_logic_vector(7 downto 0);
        clk : in std_logic;
        dout : out std_logic_vector(31 downto 0);
        dout_plus1 : out std_logic_vector(31 downto 0)
    );
end rom;

architecture Behavioral of rom is

    signal regs : rom_array(0 to 255) := (
        0 => x"06000500", -- [@0] <- 5
        1 => x"06010300", -- [@1] <- 3
        2 => x"01020001", -- [@2] <- [@0]+[@1]
        3 => x"02030001", -- [@3] <- [@0]*[@1]
        4 => x"03040001", -- [@4] <- [@0]-[@1]
        5 => x"04050001", -- [@5] <- [@0]/[@1]
        6 => x"05060000", -- [@6] <- [@0]
        7 => x"09070001", -- [@7] <- [@0]<[@1]
        8 => x"0a080001", -- [@2] <- [@0]>[@1]
        9 => x"0b090006", -- [@2] <- [@0]==[@6] 
        others => (others => '0')
    );


begin

    process (clk)
    begin
        if rising_edge(clk) then
            dout <= regs(to_integer(unsigned(addr)));
            dout_plus1 <= regs(to_integer(unsigned(addr))+1);
        end if;
        
    end process;

end Behavioral;
