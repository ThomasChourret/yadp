library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
    port(
        i : in std_logic;
        o : out std_logic
    );
end not_gate;

architecture Behavioral of not_gate is
begin
    o <= not i;
end Behavioral;
