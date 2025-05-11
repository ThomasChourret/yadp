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
use IEEE.std_logic_unsigned.ALL; 
use work.opcode_pkg.all;

entity micro is
    Port (
        clk_external   : in std_logic;
        rst            : in std_logic;
            -- PRINT TO LEDS
        leds           : out std_logic_vector(7 downto 0);
        pc_leds        : out std_logic_vector(6 downto 0);
        clk_led        : out std_logic;
        seg            : out STD_LOGIC_VECTOR(6 downto 0);
        an             : out STD_LOGIC_VECTOR(3 downto 0)
    );
    
end micro;

architecture Behavioral of micro is

    attribute keep_hierarchy : string;
    attribute keep_hierarchy of Behavioral : architecture is "yes";

    signal clk_internal     : std_logic;
   
    signal pc_load          : std_logic;
    signal pc_way           : std_logic;
    signal pc_enable        : std_logic;
    signal pc_in            : std_logic_vector(7 downto 0);
    signal program_counter  : std_logic_vector(7 downto 0);
    
    -- NOP FLAG
    signal stall_pipeline   : std_logic;

    signal rom_output       : std_logic_vector(31 downto 0);
    signal rom_a            : std_logic_vector(7 downto 0);
    signal rom_op           : std_logic_vector(7 downto 0);
    signal rom_b            : std_logic_vector(7 downto 0);
    signal rom_c            : std_logic_vector(7 downto 0);
    
    signal rom_fetched      : std_logic_vector(31 downto 0);
    signal fetched          : std_logic;
    signal stalled_pc       : std_logic_vector(7 downto 0);
    
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
    signal mem_base_pointer_diff : std_logic_vector(7 downto 0);
    signal mem_base_pointer_way, mem_base_pointer_change : std_logic;
    
    -- MEM OUT
    signal mem_out_b        : std_logic_vector(7 downto 0);
    signal mem_mux_out      : std_logic_vector(7 downto 0);
    
    -- REGISTERS WRITING IN
    signal reg_w_a          : std_logic_vector(7 downto 0);
    signal reg_w_op         : std_logic_vector(7 downto 0);
    signal reg_w_b          : std_logic_vector(7 downto 0);
    signal reg_w_c          : std_logic_vector(7 downto 0);
    
    -- JUMP CONTROL
    signal jumped           : std_logic;
   
   -- RESET SYNC
    signal reset_sync       : std_logic;
    
    -- 7 SEG
    signal seg_r            : std_logic_vector(7 downto 0);
    signal seg_l            : std_logic_vector(7 downto 0);
begin

    clk_led <= clk_internal;
    --seg_l <= x"ac";
    --seg_r <= x"dc";
    
        
    seven_seg_inst: entity work.seven_seg_controller
        port map (
            clk => clk_external,
            right_in => seg_r,
            left_in => seg_l,
            seg => seg,
            an => an
        );    
    
    process(clk_internal, rst)
    begin
        if rst = '0' then
            reset_sync <= '0';
        elsif rising_edge(clk_internal) then
            reset_sync <= '1';
        end if;
    end process;
    

    clk_div_inst: entity work.clock_divider -- clock divier
        generic map (
            prescaler => 5--0000000
        )
        port map (
            clk_in => clk_external,
            clk_out => clk_internal
        );
        
    pc_inst: entity work.counter_heightbits -- Program Counter
        port map (
            clk => clk_internal,
            rst => reset_sync,
            load => pc_load,
            sens => pc_way,
            en => pc_enable,
            din => pc_in,
            dout => program_counter
        );
       
    pc_way <= '1';
    
    rom_inst: entity work.rom -- ROM
        port map (
            addr => program_counter,
            clk => clk_internal,
            dout => rom_output,
            rst => reset_sync
        );
        
    
    -- ---------------------------------------------------------------------------------------- --
    --                    Prefetch                                                              --
    -- ---------------------------------------------------------------------------------------- --
        
    -- Prefetch instruction (async because the ROM itselft is already sync to the internal clk)
    rom_op <= rom_fetched(31 downto 24);
    rom_a  <= rom_fetched(23 downto 16);
    rom_b  <= rom_fetched(15 downto 8);
    rom_c  <= rom_fetched(7 downto 0);
   
   
    -- ---------------------------------------------------------------------------------------- --
    --                    LI / DI                                                               --
    -- ---------------------------------------------------------------------------------------- --
    di_proc : process(clk_internal) -- LI/DI
    begin
        if rising_edge(clk_internal) then

        end if;
    end process;
        
    pc_enable <= stall_pipeline;
   
    -- ---------------------------------------------------------------------------------------- --
    --                                 Hazzard Detection                                        --
    -- ---------------------------------------------------------------------------------------- --
    hazzard_detction : process(clk_internal)--program_counter, rom_output, rom_fetched, ex_in_op, ex_in_a, mem_in_op, mem_in_a, reg_w_op, reg_w_a)
        variable op  : std_logic_vector(7 downto 0);
        variable a   : std_logic_vector(7 downto 0);
        variable b   : std_logic_vector(7 downto 0);
        variable c   : std_logic_vector(7 downto 0);
        
        variable f_op : std_logic_vector(7 downto 0);
        variable f_a  : std_logic_vector(7 downto 0);
        variable f_b  : std_logic_vector(7 downto 0);
        variable f_c  : std_logic_vector(7 downto 0);
        
        variable before : std_logic;
        variable ns     : std_logic;
        variable ft     : std_logic;
    begin
        
        if rising_edge(clk_internal) then
        
            before := stall_pipeline;
        
            if reset_sync = '0' then --reset
                ft := '0';
                ns := '0';
                before := '0';
                stall_pipeline  <= '0';
                stalled_pc      <= x"00";
            end if;
        
            if stall_pipeline = '0' then   
                rom_fetched <= rom_output; -- fetch next instruction if the pipeline isnt stall
            end if;
            
            ns := '0';
            
            for i in 0 to 1 loop
                if i = 0 then
                    op := rom_fetched(31 downto 24);
                    a  := rom_fetched(23 downto 16);
                    b  := rom_fetched(15 downto 8);
                    c  := rom_fetched(7 downto 0);
                elsif i = 1 then
                    op := rom_output(31 downto 24);
                    a  := rom_output(23 downto 16);
                    b  := rom_output(15 downto 8);
                    c  := rom_output(7 downto 0);
                end if;
                
                -- Rom Fetched Hazzard (only if pipeline isn't already stall)
                if before = '0' then
                    
                    if not Is_X(rom_fetched) and i = 1 then
                        
                        if rom_op /= x"00" then
                            if a = rom_a or a = rom_b or a = rom_b then
                                ns := '1';
                            end if;
                        end if;
                    end if;
                end if;
                
                -- JMP JMF IMP DMP LOAD detection
                if (not Is_X(di_in_op)      and (di_in_op = OP_JMP  or di_in_op = OP_IMP or di_in_op = OP_DMP or di_in_op = OP_LOAD or di_in_op = OP_JMF or di_in_op = OP_JMPM)  ) 
                    or (not Is_X(ex_in_op)  and (ex_in_op = OP_JMP  or ex_in_op = OP_IMP or ex_in_op = OP_DMP or ex_in_op = OP_LOAD or ex_in_op = OP_JMF or ex_in_op = OP_JMPM)  ) 
                    or (not Is_X(mem_in_op) and (mem_in_op = OP_JMP or mem_in_op = OP_IMP or mem_in_op = OP_DMP or mem_in_op = OP_LOAD or mem_in_op = OP_JMF or mem_in_op = OP_JMPM)) 
                    or (not Is_X(reg_w_op)  and (reg_w_op = OP_JMP  or reg_w_op = OP_IMP or reg_w_op = OP_DMP or reg_w_op = OP_LOAD or reg_w_op = OP_JMF or reg_w_op = OP_JMPM)  )
                then
                    ns := '1';
                end if;
    
                -- DI hazard
                if not Is_X(di_in_op) and di_in_op /= x"00" and (di_in_a = b or di_in_a = c or di_in_a = a) then
                    ns := '1';
                end if;
            
                -- EX hazard
                if not Is_X(ex_in_op) and ex_in_op /= x"00" and (ex_in_a = b or ex_in_a = c or ex_in_a = a) then
                    ns := '1';
                end if;
            
                -- MEM hazard
                if not Is_X(mem_in_op) and mem_in_op /= x"00" and (mem_in_a = b or mem_in_a = c or mem_in_a = a) then
                    ns := '1';
                end if;
            
                -- WB hazard
                if not Is_X(reg_w_op) and reg_w_op /= x"00" and (reg_w_a = b or reg_w_a = c or reg_w_a = a) then
                    ns := '1';
                end if;
            
            end loop;   
            
            
            
            report "sp:" & std_logic'image(stall_pipeline) & ",ns:" & std_logic'image(ns);
            if ns = '1' and stall_pipeline = '0' then
                report "trigered";
                stalled_pc <= program_counter;
                pc_in <= program_counter;
            else
                report "not triggered";
            end if;
            
            stall_pipeline <= ns;
                     
            if stall_pipeline = '0' then   
                di_in_op <= rom_op; -- send fetched instruction if the pipeline isnt stall
                di_in_a  <= rom_a;
                di_in_b  <= rom_b;
                di_in_c  <= rom_c;
            else
                di_in_op <= x"00"; -- clear the pipeline entry if the pipeline is stall
                di_in_a  <= x"00";
                di_in_b  <= x"00";
                di_in_c  <= x"00";
            end if; 
           
            if ns = '1' and ft = '0' then
                pc_load <= '1';
                ft := '1';
            else
                if ns = '0' then
                    ft := '0';
                end if;
                pc_load <= '0';
            end if;
                 
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
            rst => reset_sync,
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
                when OP_ADD =>  -- ADD
                    ex_in_b <= register_a;
                when OP_MUL => 
                    ex_in_b <= register_a;
                when OP_SOU =>
                    ex_in_b <= register_a;
                when OP_DIV =>
                    ex_in_b <= register_a;
                when OP_COP =>
                    ex_in_b <= register_a;              
                when OP_AFC =>  -- AFC
                    ex_in_b <= di_in_b;
                when OP_JMP =>
                    ex_in_b <= di_in_b;
                when OP_JMF =>
                    ex_in_b <= register_a;
                when OP_SUP =>
                    ex_in_b <= register_a;
                when OP_INF =>
                    ex_in_b <= register_a;
                when OP_EQU =>
                    ex_in_b <= register_a;
                when OP_PRI =>
                    ex_in_b <= register_a;
                when OP_IMP =>
                    ex_in_b <= di_in_b;
                when OP_DMP =>
                    ex_in_b <= di_in_b;
                when OP_JMPM =>
                    ex_in_b <= register_a;
                when OP_LOAD =>
                    ex_in_b <= di_in_b;
                when OP_STORE =>
                    ex_in_b <= register_a;
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
            mem_base_pointer_change <= '0';
            case ex_in_op is
                when OP_ADD =>  -- ADD
                    mem_in_b <= ex_s;
                when OP_MUL =>
                    mem_in_b <= ex_s;
                when OP_SOU =>
                    mem_in_b <= ex_s;
                when OP_DIV =>
                    mem_in_b <= ex_s;
                when OP_COP => 
                    mem_in_b <= ex_in_b;
                when OP_AFC =>
                    mem_in_b <= ex_in_b;
                when OP_JMP =>
                    mem_in_b <= ex_in_b;
                when OP_JMF =>
                    mem_in_b <= ex_in_b;
                when OP_INF =>
                    mem_in_b <= ex_s;
                when OP_SUP =>
                    mem_in_b <= ex_s;
                when OP_EQU =>
                    mem_in_b <= ex_s;
                when OP_PRI =>
                    mem_in_b <= ex_in_b;
                when OP_IMP =>
                    mem_in_b <= ex_in_b;
                    mem_base_pointer_diff <= ex_in_a;
                    mem_base_pointer_way  <= '1';
                    mem_base_pointer_change <= '1';
                when OP_DMP =>
                    mem_in_b <= ex_in_b;
                    mem_base_pointer_diff <= ex_in_a;
                    mem_base_pointer_way  <= '0';
                    mem_base_pointer_change <= '1';
                when OP_JMPM => 
                    mem_in_b <= ex_in_b;
                when OP_LOAD =>
                    mem_in_b <= ex_in_b;
                when OP_STORE =>
                    mem_in_b <= ex_in_b;
                when others =>
                    mem_in_b <= "00000000";
            end case;           
            
            mem_in_a    <= ex_in_a;
            mem_in_op   <= ex_in_op;
        end if;        
    end process;
    
    -- ---------------------- --
    -- Print Logic Controller --
    -- ---------------------- --
    print_proc: process (clk_internal)
    begin
        if rising_edge(clk_internal) then
            if reset_sync = '0' then
                leds <= x"ff";
            elsif ex_in_op = OP_PRI then
                leds <= ex_in_b;
            end if;
        end if;
    end process;
    pc_leds <= program_counter(6 downto 0);
    --leds <= register_data;
    seg_l <= rom_output(31 downto 24);
    seg_r <= rom_fetched(31 downto 24);
    --seg_r <= x"01" when stall_pipeline = '1' else x"00";
    
    -- --------------------- --
    -- Jump Logic Controller --
    -- --------------------- --
    jmp_proc: process (clk_internal)
    begin
        if rising_edge(clk_internal) then
        
            if reset_sync = '0' then
                jumped <= '0';
            end if;
        
            if ex_in_op = OP_JMP then
                    
                --rom_fetched <= x"00000000";
            
                --pc_in <= ex_in_a;
                --pc_load <= '1';
                jumped <= '1';
            elsif ex_in_op = OP_JMF then
                if ex_in_b = x"00" then
                    
                    --rom_fetched <= x"00000000";
                
                    --pc_in <= ex_in_a;
                    --pc_load <= '1';    
                    jumped <= '1';
                end if;
            elsif ex_in_op = OP_JMPM then
                --pc_in <= ex_in_b;
                --pc_load <= '1';
                jumped <= '1';
            else
                --pc_load <= '0';
                jumped <= '0';
            end if;
        end if; 
    end process;
    
    with mem_in_op select
        mem_intern_addr <= mem_in_b when OP_LOAD,
                           mem_in_a when OP_STORE,
                           "00000000" when others;

    with mem_in_op select
        mem_intern_rw <= '0' when OP_STORE,  -- STORE => write => 0
                           '1' when others;
                           
   ram_inst : entity work.ram -- RAM
   port map (
        addr => mem_intern_addr,
        rw   => mem_intern_rw,
        rst  => reset_sync,
        clk  => clk_internal,
        din  => mem_in_b,
        dout => mem_out_b,
        base_pointer_diff => mem_base_pointer_diff,
        base_pointer_way => mem_base_pointer_way,
        base_pointer_change => mem_base_pointer_change
   );
   
   --with mem_in_op select -- MEM OUT MUX (last one)
   --     mem_mux_out <=  mem_in_b when x"01",  -- ADD
   --                     mem_in_b when x"06",  -- AFC
   --                        "00000000" when others;
   
   mem_re_proc : process (clk_internal)
   begin
        if rising_edge(clk_internal) then
            
            if mem_in_op = OP_ADD
            or mem_in_op = OP_SOU 
            or mem_in_op = OP_MUL
            or mem_in_op = OP_DIV
            or mem_in_op = OP_AFC
            or mem_in_op = OP_INF
            or mem_in_op = OP_SUP
            or mem_in_op = OP_EQU
            or mem_in_op = OP_LOAD
            or mem_in_op = OP_COP
            then
                reg_w_a     <= mem_in_a;
                if mem_in_op /= OP_LOAD and mem_in_op /= OP_NOP then
                    reg_w_c     <= mem_in_b;                 
                end if;
            elsif mem_in_op = OP_NOP then
                reg_w_c     <= register_data;
            end if;
            
            reg_w_op    <= mem_in_op;
            
        end if;

   end process;
   
   register_waddr   <= reg_w_a(3 downto 0);
   register_data    <= mem_out_b when (reg_w_op = OP_LOAD ) else reg_w_c;

   with reg_w_op select
        register_w <=   '1' when OP_ADD,  -- ADD
                        '1' when OP_MUL,
                        '1' when OP_SOU,
                        '1' when OP_DIV,
                        '1' when OP_COP,
                        '1' when OP_INF,
                        '1' when OP_SUP,
                        '1' when OP_EQU,
                        '1' when OP_LOAD,
                        '1' when x"06",  -- AFC
                           '0' when others;

end Behavioral;