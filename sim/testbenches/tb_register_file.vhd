-- Testbench for control_unit.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_register_file is
end tb_register_file;

architecture test of tb_register_file is

    component register_file
        Port (
            clk         : in  std_logic;
            reset       : in  std_logic;
            write_en    : in  std_logic;
            read_addr1  : in  std_logic_vector(3 downto 0);
            read_addr2  : in  std_logic_vector(3 downto 0);
            write_addr  : in  std_logic_vector(3 downto 0);
            write_data  : in  std_logic_vector(15 downto 0);
            read_data1  : out std_logic_vector(15 downto 0);
            read_data2  : out std_logic_vector(15 downto 0)
        );
    end component;

    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal write_en    : std_logic := '0';
    signal read_addr1  : std_logic_vector(3 downto 0) := (others => '0');
    signal read_addr2  : std_logic_vector(3 downto 0) := (others => '0');
    signal write_addr  : std_logic_vector(3 downto 0) := (others => '0');
    signal write_data  : std_logic_vector(15 downto 0) := (others => '0');
    signal read_data1  : std_logic_vector(15 downto 0);
    signal read_data2  : std_logic_vector(15 downto 0);

    constant CLK_PERIOD : time := 10 ns;

begin

    uut: register_file
        port map (
            clk         => clk,
            reset       => reset,
            write_en    => write_en,
            read_addr1  => read_addr1,
            read_addr2  => read_addr2,
            write_addr  => write_addr,
            write_data  => write_data,
            read_data1  => read_data1,
            read_data2  => read_data2
        );

    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

 stim_proc: process
begin
    reset <= '1';
    wait for CLK_PERIOD;
    reset <= '0';
    wait for CLK_PERIOD;

    -- Write 0xAAAA to register 2
    write_en   <= '1';
    write_addr <= "0010";
    write_data <= x"AAAA";
    wait for CLK_PERIOD;
    wait for CLK_PERIOD;  -- <-- extra wait for signal to register

    -- Write 0x1234 to register 7
    write_addr <= "0111";
    write_data <= x"1234";
    wait for CLK_PERIOD;
    wait for CLK_PERIOD;

    -- Write 0xBEEF to register 12
    write_addr <= "1100";
    write_data <= x"BEEF";
    wait for CLK_PERIOD;
    wait for CLK_PERIOD;

    -- Disable write
    write_en <= '0';
    wait for CLK_PERIOD;

    -- Read from registers 2 and 7
    read_addr1 <= "0010";
    read_addr2 <= "0111";
    wait for CLK_PERIOD;

    -- Read from registers 7 and 12
    read_addr1 <= "0111";
    read_addr2 <= "1100";
    wait for CLK_PERIOD;

    wait;
end process;

end test;