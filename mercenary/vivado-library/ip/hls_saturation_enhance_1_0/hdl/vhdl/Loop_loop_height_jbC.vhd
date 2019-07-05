-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Loop_loop_height_jbC_rom is 
    generic(
             dwidth     : integer := 8; 
             awidth     : integer := 8; 
             mem_size    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Loop_loop_height_jbC_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000", 1 => "00000010", 2 => "00000011", 3 => "00000101", 
    4 => "00000110", 5 => "00001000", 6 => "00001010", 7 => "00001011", 
    8 => "00001101", 9 => "00001110", 10 => "00010000", 11 => "00010001", 
    12 => "00010011", 13 => "00010100", 14 => "00010110", 15 => "00010111", 
    16 => "00011001", 17 => "00011011", 18 => "00011100", 19 => "00011110", 
    20 => "00011111", 21 => "00100001", 22 => "00100010", 23 => "00100100", 
    24 => "00100101", 25 => "00100111", 26 => "00101000", 27 => "00101001", 
    28 => "00101011", 29 => "00101100", 30 => "00101110", 31 => "00101111", 
    32 => "00110001", 33 => "00110010", 34 => "00110100", 35 => "00110101", 
    36 => "00110111", 37 => "00111000", 38 => "00111001", 39 => "00111011", 
    40 => "00111100", 41 => "00111110", 42 => "00111111", 43 => "01000000", 
    44 => "01000010", 45 => "01000011", 46 => "01000101", 47 => "01000110", 
    48 => "01000111", 49 => "01001001", 50 => "01001010", 51 => "01001011", 
    52 => "01001101", 53 => "01001110", 54 => "01010000", 55 => "01010001", 
    56 => "01010010", 57 => "01010100", 58 => "01010101", 59 => "01010110", 
    60 => "01011000", 61 => "01011001", 62 => "01011010", 63 => "01011011", 
    64 => "01011101", 65 => "01011110", 66 => "01011111", 67 => "01100001", 
    68 => "01100010", 69 => "01100011", 70 => "01100100", 71 => "01100110", 
    72 => "01100111", 73 => "01101000", 74 => "01101010", 75 => "01101011", 
    76 => "01101100", 77 => "01101101", 78 => "01101110", 79 => "01110000", 
    80 => "01110001", 81 => "01110010", 82 => "01110011", 83 => "01110101", 
    84 => "01110110", 85 => "01110111", 86 => "01111000", 87 => "01111001", 
    88 => "01111011", 89 => "01111100", 90 => "01111101", 91 => "01111110", 
    92 => "01111111", 93 => "10000000", 94 => "10000010", 95 => "10000011", 
    96 => "10000100", 97 => "10000101", 98 => "10000110", 99 => "10000111", 
    100 => "10001000", 101 => "10001010", 102 => "10001011", 103 => "10001100", 
    104 => "10001101", 105 => "10001110", 106 => "10001111", 107 => "10010000", 
    108 => "10010001", 109 => "10010010", 110 => "10010100", 111 => "10010101", 
    112 => "10010110", 113 => "10010111", 114 => "10011000", 115 => "10011001", 
    116 => "10011010", 117 => "10011011", 118 => "10011100", 119 => "10011101", 
    120 => "10011110", 121 => "10011111", 122 => "10100000", 123 => "10100001", 
    124 => "10100010", 125 => "10100011", 126 => "10100100", 127 => "10100101", 
    128 => "10100110", 129 => "10100111", 130 => "10101000", 131 => "10101001", 
    132 => "10101010", 133 => "10101011", 134 => "10101100", 135 => "10101101", 
    136 => "10101110", 137 => "10101111", 138 => "10110000", 139 => "10110001", 
    140 => "10110010", 141 => "10110011", 142 => "10110100", 143 => "10110101", 
    144 => "10110110", 145 to 146=> "10110111", 147 => "10111000", 148 => "10111001", 
    149 => "10111010", 150 => "10111011", 151 => "10111100", 152 => "10111101", 
    153 => "10111110", 154 to 155=> "10111111", 156 => "11000000", 157 => "11000001", 
    158 => "11000010", 159 => "11000011", 160 => "11000100", 161 to 162=> "11000101", 
    163 => "11000110", 164 => "11000111", 165 => "11001000", 166 => "11001001", 
    167 to 168=> "11001010", 169 => "11001011", 170 => "11001100", 171 => "11001101", 
    172 to 173=> "11001110", 174 => "11001111", 175 => "11010000", 176 to 177=> "11010001", 
    178 => "11010010", 179 => "11010011", 180 => "11010100", 181 to 182=> "11010101", 
    183 => "11010110", 184 to 185=> "11010111", 186 => "11011000", 187 => "11011001", 
    188 to 189=> "11011010", 190 => "11011011", 191 to 192=> "11011100", 193 => "11011101", 
    194 => "11011110", 195 to 196=> "11011111", 197 => "11100000", 198 to 199=> "11100001", 
    200 => "11100010", 201 to 202=> "11100011", 203 to 204=> "11100100", 205 => "11100101", 
    206 to 207=> "11100110", 208 => "11100111", 209 to 210=> "11101000", 211 to 212=> "11101001", 
    213 => "11101010", 214 to 215=> "11101011", 216 to 217=> "11101100", 218 => "11101101", 
    219 to 220=> "11101110", 221 to 222=> "11101111", 223 to 224=> "11110000", 225 to 226=> "11110001", 
    227 to 228=> "11110010", 229 => "11110011", 230 to 231=> "11110100", 232 to 233=> "11110101", 
    234 to 235=> "11110110", 236 to 237=> "11110111", 238 to 240=> "11111000", 241 to 242=> "11111001", 
    243 to 244=> "11111010", 245 to 246=> "11111011", 247 to 248=> "11111100", 249 to 251=> "11111101", 
    252 to 253=> "11111110", 254 to 255=> "11111111" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity Loop_loop_height_jbC is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Loop_loop_height_jbC is
    component Loop_loop_height_jbC_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Loop_loop_height_jbC_rom_U :  component Loop_loop_height_jbC_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

