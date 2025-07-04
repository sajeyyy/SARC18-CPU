----------------------------------------------------------------------------------
-- File        : sarc18_top.vhd
-- Author      : Saje Cowell
--
-- Description : Top-level design for the SARC18 16-bit RISC CPU. Integrates all
--               components including Program Counter, Register File, ALU,
--               Control Unit, ROM, and Memory Controller.
--
-- Inputs      : clk  - Global clock
--               rst  - Global reset
--
-- Outputs     : 
--
-- Dependencies: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sarc18_top is
    Port (
        clk : in std_logic;
        rst : in std_logic
     );
end sarc18_top;

architecture Behavioral of sarc18_top is


------ Component Counter Component & Signals ------
    component program_counter is
        Port ( 
               clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               next_pc : in std_logic_vector(7 downto 0);
               pc_out : out std_logic_vector(7 downto 0)
              );
    end component program_counter;
    
    signal pc_out : std_logic_vector(7 downto 0);
    signal next_pc : std_logic_vector(7 downto 0);
    


------ Control Unit Component & Signals ------    
    component control_unit is
        Port ( 
            op_func : in STD_LOGIC_VECTOR (5 downto 0);
            is_Rtype : out std_logic;
            alu_src : out std_logic;
            pc_src : out std_logic;
            mem_en_read : out std_logic;
            mem_en_write : out std_logic;
            reg_en_write : out std_logic      
    );
    end component control_unit;
    
            signal op_func : STD_LOGIC_VECTOR (5 downto 0);
            signal is_Rtype : std_logic;
            signal alu_src : std_logic;
            signal pc_src : std_logic;
            signal mem_en_read : std_logic;
            signal mem_en_write : std_logic;
            signal reg_en_write : std_logic;
    
    
    
------ Register File Component & Signals ------  
    component register_file is
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
    end component register_file;
    
    signal write_en    : std_logic;
    signal read_addr1  : std_logic_vector(3 downto 0);
    signal read_addr2  : std_logic_vector(3 downto 0);
    signal write_addr  : std_logic_vector(3 downto 0);
    signal write_data  : std_logic_vector(15 downto 0);
    signal read_data1  : std_logic_vector(15 downto 0);
    signal read_data2  : std_logic_vector(15 downto 0);



------ ALU Component & Signals ------ 
    component alu is
        Port( 
               in1 : in STD_LOGIC_VECTOR (15 downto 0);
               in2 : in STD_LOGIC_VECTOR (15 downto 0);
               op_sel : in STD_LOGIC_VECTOR (3 downto 0);
               alu_result : out STD_LOGIC_VECTOR (15 downto 0)
        );
    end component alu;
    
    signal in1 : STD_LOGIC_VECTOR (15 downto 0);
    signal in2 : STD_LOGIC_VECTOR (15 downto 0);
    signal op_sel : STD_LOGIC_VECTOR (3 downto 0);
    signal alu_result : STD_LOGIC_VECTOR (15 downto 0);
    
    
    
------ RAM Component & Signals ------ 
    component RAM IS
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
    END component RAM;
    
    signal ram_ena : STD_LOGIC;
    signal wea : STD_LOGIC_VECTOR(0 DOWNTO 0);
    signal ram_addra : STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal dina : STD_LOGIC_VECTOR(15 DOWNTO 0);
    signal ram_douta : STD_LOGIC_VECTOR(15 DOWNTO 0);



------ ROM Component & Signals ------ 
    component ROM IS
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
    );
    END component ROM;
    
    signal rom_ena : STD_LOGIC;
    signal rom_addra : STD_LOGIC_VECTOR(4 DOWNTO 0);
    signal rom_douta : STD_LOGIC_VECTOR(17 DOWNTO 0);

begin

    






end Behavioral;
