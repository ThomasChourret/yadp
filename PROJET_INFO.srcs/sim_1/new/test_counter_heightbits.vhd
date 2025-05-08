library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Déclaration du testbench
entity tb_counter_heightbits is
end tb_counter_heightbits;

architecture behavior of tb_counter_heightbits is

    -- Déclaration des signaux pour connecter au compteur
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal load : std_logic := '0';
    signal sens : std_logic := '1'; -- sens '1' pour incrémenter
    signal en : std_logic := '1';   -- Initialement désactivé
    signal din : std_logic_vector(7 downto 0) := (others => '0');
    signal dout : std_logic_vector(7 downto 0);

    -- Composant compteur_heightbits
    component counter_heightbits is
        port(
            clk : in std_logic;
            rst : in std_logic;
            load : in std_logic;
            sens : in std_logic;
            en : in std_logic;
            din : in std_logic_vector(7 downto 0);
            dout : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    -- Instantiation du compteur
    uut: counter_heightbits
        port map (
            clk => clk,
            rst => rst,
            load => load,
            sens => sens,
            en => en,
            din => din,
            dout => dout
        );

    -- Générateur d'horloge (horloge de 10ns)
    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Application des stimuli
    stim_proc: process
    begin
        -- Initialisation
        rst <= '0'; -- Reset actif
        load <= '0';
        en <= '1';
        sens <= '1';
        din <= "00000000";  -- Compteur initial à 0

        wait for 20 ns;  -- Attente pour s'assurer que la réinitialisation est effective

        rst <= '1'; -- Désactivation du reset
        en <= '0';  -- Activation du compteur

        -- Test de l'incrémentation
        for i in 0 to 5 loop
            wait for 20 ns;  -- Attendre un cycle d'horloge
            sens <= '1'; -- Incrémenter
        end loop;

        -- Test de la décrémentation
        sens <= '0'; -- Changer le sens de comptage
        for i in 0 to 5 loop
            wait for 20 ns;  -- Attendre un cycle d'horloge
        end loop;

        -- Test de chargement de din
        load <= '1';    -- Charger une valeur spécifique dans le compteur
        din <= "11001100"; -- Valeur à charger (205 en décimal)
        wait for 20 ns;

        -- Test de la réinitialisation
        rst <= '0'; -- Activer le reset
        wait for 20 ns;

        -- Fin du test
        wait;
    end process;

end behavior;
