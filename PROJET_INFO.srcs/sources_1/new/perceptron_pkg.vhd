library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

package perceptron_pkg is
    -- Définition du type weight
    type weight is array (natural range <>) of std_logic_vector(31 downto 0);
end package perceptron_pkg;

package body perceptron_pkg is
    -- Pas besoin d'implémentation pour une simple déclaration de type
end package body perceptron_pkg;
