library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity counter_heightbits is
    port(
        clk : in std_logic;
        rst : in std_logic;
        load : in std_logic;
        sens : in std_logic;
        en : in std_logic;
        din : in std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end counter_heightbits;

architecture Behavioral of counter_heightbits is

    signal internal_counter : std_logic_vector(7 downto 0) := (others => '0');

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '0' then
                internal_counter <= (others => '0');
            elsif load = '1' then
                internal_counter <= din;
            else
                if en = '0' then
                    if sens = '1' then
                        internal_counter <= internal_counter + 1;
                    else
                        internal_counter <= internal_counter - 1;
                    end if;                 
                end if;
            end if;         
        end if;
    end process;

    dout <= internal_counter;

end Behavioral;
