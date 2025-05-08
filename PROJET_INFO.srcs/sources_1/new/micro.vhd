----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2025 18:12:38
-- Design Name: 
-- Module Name: micro - Behavioral
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

entity micro is
    Port (
        clk_external   : in std_logic;
        rst            : in std_logic
    );
end micro;

architecture Behavioral of micro is

    signal clk_internal     : std_logic;
   
    signal pc_load          : std_logic;
    signal pc_way           : std_logic;
    signal pc_enable        : std_logic;
    signal pc_in            : std_logic_vector(7 downto 0);
    signal program_counter  : std_logic_vector(7 downto 0);
    
    -- NOP FLAG
    signal stall_pipeline   : std_logic;

    signal rom_comp_output  : std_logic_vector(31 downto 0);
    signal rom_output       : std_logic_vector(31 downto 0);
    signal rom_a            : std_logic_vector(7 downto 0);
    signal rom_op           : std_logic_vector(7 downto 0);
    signal rom_b            : std_logic_vector(7 downto 0);
    signal rom_c            : std_logic_vector(7 downto 0);
    
    -- DI IN
    signal di_in_a         : std_logic_vector(7 downto 0);
    signal di_in_op        : std_logic_vector(7 downto 0);
    signal di_in_b         : std_logic_vector(7 downto 0);
    signal di_in_c         : std_logic_vector(7 downto 0);
    
    -- DI OUT
    signal register_a       : std_logic_vector(7 downto 0);
    signal register_b       : std_logic_vector(7 downto 0);
    signal register_data    : std_logic_vector(7 downto 0);
    signal register_waddr   : std_logic_vector(3 downto 0);
    signal register_w       : std_logic;
    
    -- EX IN
    signal ex_in_a         : std_logic_vector(7 downto 0);
    signal ex_in_op        : std_logic_vector(7 downto 0);
    signal ex_in_b         : std_logic_vector(7 downto 0);
    signal ex_in_c         : std_logic_vector(7 downto 0);
    
    -- EX (OUT)
    signal ex_s            : std_logic_vector(7 downto 0);
    
    -- MEM IN
    signal mem_in_a         : std_logic_vector(7 downto 0);
    signal mem_in_op        : std_logic_vector(7 downto 0);
    signal mem_in_b         : std_logic_vector(7 downto 0);

    -- MEM INTERNAL
    signal mem_intern_addr  : std_logic_vector(7 downto 0);
    signal mem_intern_rw    : std_logic;
    
    -- MEM OUT
    signal mem_out_b        : std_logic_vector(7 downto 0);
    signal mem_mux_out      : std_logic_vector(7 downto 0);
    
    -- REGISTERS WRITING IN
    signal reg_w_a          : std_logic_vector(7 downto 0);
    signal reg_w_op         : std_logic_vector(7 downto 0);
    signal reg_w_b          : std_logic_vector(7 downto 0);
    
begin

    clk_div_inst: entity work.clock_divider -- clock divier
        generic map (
            prescaler => 2
        )
        port map (
            clk_in => clk_external,
            clk_out => clk_internal
        );
        
    pc_inst: entity work.counter_heightbits -- Program Counter
        port map (
            clk => clk_internal,
            rst => rst,
            load => pc_load,
            sens => pc_way,
            en => pc_enable,
            din => pc_in,
            dout => program_counter
        );
       
    pc_load <= '0';
    pc_way <= '1';
    
    rom_inst: entity work.rom -- ROM
        port map (
            addr => program_counter,
            clk => clk_internal,
            dout => rom_comp_output
        );
        
    
    -- ---------------------------------------------------------------------------------------- --
    --                    Prefetch                                                              --
    -- ---------------------------------------------------------------------------------------- --
        
    -- Prefetch instruction (async because the ROM itselft is already sync to the internal clk)
    rom_op <= rom_output(31 downto 24);
    rom_a  <= rom_output(23 downto 16);
    rom_b  <= rom_output(15 downto 8);
    rom_c  <= rom_output(7 downto 0);
   
   
    -- ---------------------------------------------------------------------------------------- --
    --                    LI / DI                                                               --
    -- ---------------------------------------------------------------------------------------- --
    di_proc : process(clk_internal) -- LI/DI
    begin
        if rising_edge(clk_internal) then
            if stall_pipeline = '1' then -- If the pipeline is stalled, don't send the next instruction
                di_in_op <= x"00";
                di_in_a  <= x"00";
                di_in_b  <= x"00";
                di_in_c  <= x"00";
            else                         -- If the pipeline is unstalled, send the next instruction
                di_in_op <= rom_op;
                di_in_a  <= rom_a;
                di_in_b  <= rom_b;
                di_in_c  <= rom_c;
            end if;
        end if;
    end process;
    
    pc_enable <= stall_pipeline;
   
    -- ---------------------------------------------------------------------------------------- --
    --                                 Hazzard Detection                                        --
    -- ---------------------------------------------------------------------------------------- --
    hazzard_detction : process(rom_comp_output, ex_in_op, ex_in_a, mem_in_op, mem_in_a, reg_w_op, reg_w_a)
        variable op  : std_logic_vector(7 downto 0);
        variable a   : std_logic_vector(7 downto 0);
        variable b   : std_logic_vector(7 downto 0);
        variable c   : std_logic_vector(7 downto 0);
    begin
        -- Parse the next instruction directly from ROM output
        op := rom_comp_output(31 downto 24);
        a  := rom_comp_output(23 downto 16);
        b  := rom_comp_output(15 downto 8);
        c  := rom_comp_output(7 downto 0);
    
        stall_pipeline <= '0';  -- Default
    
        -- DI hazard
        if op = x"06" and (a = b or a = c) then
            stall_pipeline <= '1';
        end if;
    
        -- EX hazard
        if ex_in_op = x"06" and (ex_in_a = b or ex_in_a = c) then
            stall_pipeline <= '1';
        end if;
    
        -- MEM hazard
        if mem_in_op = x"06" and (mem_in_a = b or mem_in_a = c) then
            stall_pipeline <= '1';
        end if;
    
        -- WB hazard
        if reg_w_op = x"06" and (reg_w_a = b or reg_w_a = c) then
            stall_pipeline <= '1';
        end if;
        
        if stall_pipeline = '0' then
            rom_output <= rom_comp_output;
        end if;
    end process;    









    -- ---------------------------------------------------------------------------------------- --
    --                                 Register Stage                                           --
    -- ---------------------------------------------------------------------------------------- --
    registers_inst: entity work.registers -- Registers
        port map (
            addr_a => di_in_b(3 downto 0),
            addr_b => di_in_c(3 downto 0),
            addr_w => register_waddr,
            w => register_w,
            rst => rst,
            clk => clk_internal,
            data => register_data,
            a => register_a,
            b => register_b
        );

        
    -- ---------------------------------------------------------------------------------------- --
    --                                 EX Pipeline                                              --
    -- ---------------------------------------------------------------------------------------- --
    di_ex_proc : process (clk_internal) -- DI/EX
    begin
        if rising_edge(clk_internal) then
            -- DI MUX
            case di_in_op is
                when x"01" =>  -- ADD
                    ex_in_b <= register_a;
                when x"06" =>  -- AFC
                    ex_in_b <= di_in_b;
                when others =>
                    ex_in_b <= "00000000";
            end case;
            ex_in_a     <= di_in_a;
            ex_in_op    <= di_in_op;
            ex_in_c     <= register_b;
        end if;        
    end process;
    
    alu_inst : entity work.alu -- ALU
        port map (
            din_a => ex_in_b,
            din_b => ex_in_c,
            dout  => ex_s,
            op    => ex_in_op(3 downto 0)
        );
        
    ex_mem_proc : process (clk_internal) -- EX/MEM
    begin
        if rising_edge(clk_internal) then
            -- EX MUX
            case ex_in_op is
                when "00000001" =>  -- ADD
                    mem_in_b <= ex_s;
                when x"06" =>  -- AFC
                    mem_in_b <= ex_in_b;
                when others =>
                    mem_in_b <= "00000000";
            end case;
            mem_in_a    <= ex_in_a;
            mem_in_op   <= ex_in_op;
        end if;        
    end process;
    
    with mem_in_op select
        mem_intern_addr <= "00000000" when "00000001",  -- ADD
                           "00000000" when others;

    with mem_in_op select
        mem_intern_rw <= '1' when "00000001",  -- ADD
                           '1' when others;
                           
   ram_inst : entity work.ram -- RAM
   -- addr : in std_logic_vector(3 downto 0);
   -- rw, rst, clk : in std_logic;
   -- din : in std_logic_vector(7 downto 0);
   -- dout : out std_logic_vector(7 downto 0)
   port map (
        addr => mem_intern_addr,
        rw   => mem_intern_rw,
        rst  => rst,
        clk  => clk_internal,
        din  => mem_in_b,
        dout => mem_out_b
   );
   
   with mem_in_op select -- MEM OUT MUX (last one)
        mem_mux_out <=  mem_in_b when x"01",  -- ADD
                        mem_in_b when x"06",  -- AFC
                           "00000000" when others;
   
   mem_re_proc : process (clk_internal)
   begin
        if rising_edge(clk_internal) then
            reg_w_a     <= mem_in_a;
            reg_w_op    <= mem_in_op;
            reg_w_b     <= mem_mux_out;
        end if;
   end process;
   
   register_waddr   <= reg_w_a(3 downto 0);
   register_data    <= reg_w_b;

   with reg_w_op select
        register_w <=   '1' when x"01",  -- ADD
                        '1' when x"06",  -- AFC
                           '0' when others;

end Behavioral;
