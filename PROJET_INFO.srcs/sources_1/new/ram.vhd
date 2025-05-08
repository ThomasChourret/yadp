----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2025
-- Design Name: 
-- Module Name: ram - Behavioral
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

entity ram is

    Port ( 
        addr : in std_logic_vector(7 downto 0);
        rw, rst, clk : in std_logic;
        din : in std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end ram;

architecture Behavioral of ram is

    signal regs : register_array(0 to 255);

begin

    process (clk)
    begin
        if rising_edge(clk) then
            if (rst = '0') then
                for i in 0 to 255 loop
                    regs(i) <= (others => '0');
                end loop;            
            elsif (rw = '0') then -- write
                regs(to_integer(unsigned(addr))) <= din;
            elsif (rw = '1') then -- read
                dout <= regs(to_integer(unsigned(addr)));
            end if;
        end if;
        
    end process;

end Behavioral;
