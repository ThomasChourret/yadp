library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

package registers_pkg is
    -- Définition du type registers
    type register_array is array (natural range <>) of std_logic_vector(7 downto 0);
    type rom_array is array (natural range <>) of std_logic_vector(31 downto 0);
end package registers_pkg;

package body registers_pkg is
    -- Pas besoin d'implémentation pour une simple déclaration de type
end package body registers_pkg;
