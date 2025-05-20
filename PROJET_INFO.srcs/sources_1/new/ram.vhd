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
        base_pointer_diff : in  std_logic_vector(7 downto 0);
        base_pointer_way  : in std_logic;
        base_pointer_change : in std_logic;
        rw, rst, clk : in std_logic;
        din : in std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end ram;

architecture Behavioral of ram is

    signal regs : register_array(0 to 255);
    signal base_pointer : std_logic_vector(7 downto 0);

begin

    process (clk)
    begin
        if rising_edge(clk) then
            if (rst = '0') then
                for i in 0 to 255 loop
                    regs(i) <= (others => '0');
                end loop;
                base_pointer <= x"00";
            else

                if base_pointer_change = '1' then
                    if base_pointer_way = '1' then
                        base_pointer <= std_logic_vector(unsigned(base_pointer) + unsigned(base_pointer_diff));
                    elsif base_pointer_way = '0' then
                        base_pointer <= std_logic_vector(unsigned(base_pointer) - unsigned(base_pointer_diff));
                    end if;
                else
                    if (rw = '0') then -- write
                        regs(to_integer(unsigned(addr)) + to_integer(unsigned(base_pointer))) <= din;
                    elsif (rw = '1') then -- read
                        dout <= regs(to_integer(unsigned(addr)) + to_integer(unsigned(base_pointer)));
                    end if;
                end if;                
            end if;
        end if;
        
    end process;

end Behavioral;
