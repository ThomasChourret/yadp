library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Définition de l'entité du Testbench
entity test_nand_gate is
end entity test_nand_gate;

architecture tb of test_nand_gate is
    -- Déclaration des signaux pour simuler les entrées et sorties
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal o : std_logic;

    -- Composant à tester : la porte NAND
    component nand_gate
        port(
            a : in std_logic;
            b : in std_logic;
            o : out std_logic
        );
    end component;

begin
    -- Instanciation de la porte NAND dans le Testbench
    UUT: nand_gate port map (a => a, b => b, o => o);

    -- Processus de test
    process
    begin
        wait for 100 ns;
    
        -- Test 1 : a = 0, b = 0
        a <= '0';
        b <= '0';
        wait for 100 ns;  -- Attendre 10 ns

        -- Test 2 : a = 0, b = 1
        a <= '0';
        b <= '1';
        wait for 100 ns;

        -- Test 3 : a = 1, b = 0
        a <= '1';
        b <= '0';
        wait for 100 ns;

        -- Test 4 : a = 1, b = 1
        a <= '1';
        b <= '1';
        wait for 100 ns;

        -- Fin du test
        wait;
    end process;
end architecture tb;
