library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity seven_seg_controller is
    Port (
        clk      : in  STD_LOGIC;                     -- Horloge de la carte (100 MHz)
        right_in : in  STD_LOGIC_VECTOR(7 downto 0);   -- Valeur pour les afficheurs de droite
        left_in  : in  STD_LOGIC_VECTOR(7 downto 0);   -- Valeur pour les afficheurs de gauche
        seg      : out STD_LOGIC_VECTOR(6 downto 0);   -- Segments (a à g)
        an       : out STD_LOGIC_VECTOR(3 downto 0)    -- Anodes (contrôle des 4 afficheurs)
    );
end seven_seg_controller;

architecture Behavioral of seven_seg_controller is
    signal counter     : unsigned(15 downto 0) := (others => '0');  -- Compteur pour le multiplexage
    signal digit_sel   : integer range 0 to 3 := 0;                -- Sélection de l'afficheur actif
    signal bcd_digit   : STD_LOGIC_VECTOR(3 downto 0);              -- Chiffre BCD à afficher
    signal right_bcd   : STD_LOGIC_VECTOR(7 downto 0);              -- Valeur de droite en BCD
    signal left_bcd    : STD_LOGIC_VECTOR(7 downto 0);              -- Valeur de gauche en BCD
begin

    -- Conversion binaire vers BCD pour les entrées
    -- Vous pouvez implémenter un convertisseur plus élaboré si nécessaire
    right_bcd <= right_in;  -- Simplification (à remplacer par un vrai convertisseur BCD)
    left_bcd  <= left_in;   -- Simplification (à remplacer par un vrai convertisseur BCD)

    -- Processus de comptage pour le multiplexage
    process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;
            if counter = 0 then
                digit_sel <= (digit_sel + 1) mod 4;
            end if;
        end if;
    end process;

    -- Sélection du chiffre à afficher selon digit_sel
    with digit_sel select
        bcd_digit <= left_bcd(7 downto 4)  when 0,   -- Afficheur gauche (chiffre de gauche)
                     left_bcd(3 downto 0)  when 1,   -- Afficheur gauche-milieu (chiffre de droite)
                     right_bcd(7 downto 4) when 2,   -- Afficheur droit-milieu (chiffre de gauche)
                     right_bcd(3 downto 0)  when 3;   -- Afficheur droit (chiffre de droite)

    -- Activation de l'anode appropriée
    with digit_sel select
        an <= "0111" when 0,   -- Active l'afficheur le plus à gauche
              "1011" when 1,
              "1101" when 2,
              "1110" when 3,   -- Active l'afficheur le plus à droite
              "1111" when others;

    -- Décodage BCD vers 7 segments (a à g)
    with bcd_digit select
        seg <= "0000001" when "0000",  -- 0
               "1001111" when "0001",  -- 1
               "0010010" when "0010",  -- 2
               "0000110" when "0011",  -- 3
               "1001100" when "0100",  -- 4
               "0100100" when "0101",  -- 5
               "0100000" when "0110",  -- 6
               "0001111" when "0111",  -- 7
               "0000000" when "1000",  -- 8
               "0000100" when "1001",  -- 9
               "0000010" when "1010",  -- A
               "1100000" when "1011",  -- b
               "0110001" when "1100",  -- C
               "1000010" when "1101",  -- d
               "0110000" when "1110",  -- E
               "0111000" when "1111",  -- F
               "1111111" when others;  -- Eteint

end Behavioral;