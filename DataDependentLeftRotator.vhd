library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataDependentLeftRotator is
    Port (
        input_data  : in std_logic_vector(31 downto 0);  -- 32-bit input data
        rot_amount  : in integer range 0 to 31;       -- Rotation amount
        output_data : out std_logic_vector(31 downto 0) -- Rotated output data
    );
end DataDependentLeftRotator;

architecture Behavioral of DataDependentLeftRotator is
begin
    -- Circular left shift for different rotation amounts
    with rot_amount select
        output_data <= 
            input_data(31 downto 0) when 0,
            input_data(30 downto 0) & input_data(31) when 1,
            input_data(29 downto 0) & input_data(31 downto 30) when 2,
            input_data(28 downto 0) & input_data(31 downto 29) when 3,
            input_data(27 downto 0) & input_data(31 downto 28) when 4,
            input_data(26 downto 0) & input_data(31 downto 27) when 5,
            input_data(25 downto 0) & input_data(31 downto 26) when 6,
            input_data(24 downto 0) & input_data(31 downto 25) when 7,
            input_data(23 downto 0) & input_data(31 downto 24) when 8,
            input_data(22 downto 0) & input_data(31 downto 23) when 9,
            input_data(21 downto 0) & input_data(31 downto 22) when 10,
            input_data(20 downto 0) & input_data(31 downto 21) when 11,
            input_data(19 downto 0) & input_data(31 downto 20) when 12,
            input_data(18 downto 0) & input_data(31 downto 19) when 13,
            input_data(17 downto 0) & input_data(31 downto 18) when 14,
            input_data(16 downto 0) & input_data(31 downto 17) when 15,
            input_data(15 downto 0) & input_data(31 downto 16) when 16,
            input_data(14 downto 0) & input_data(31 downto 15) when 17,
            input_data(13 downto 0) & input_data(31 downto 14) when 18,
            input_data(12 downto 0) & input_data(31 downto 13) when 19,
            input_data(11 downto 0) & input_data(31 downto 12) when 20,
            input_data(10 downto 0) & input_data(31 downto 11) when 21,
            input_data(9 downto 0) & input_data(31 downto 10) when 22,
            input_data(8 downto 0) & input_data(31 downto 9) when 23,
            input_data(7 downto 0) & input_data(31 downto 8) when 24,
            input_data(6 downto 0) & input_data(31 downto 7) when 25,
            input_data(5 downto 0) & input_data(31 downto 6) when 26,
            input_data(4 downto 0) & input_data(31 downto 5) when 27,
            input_data(3 downto 0) & input_data(31 downto 4) when 28,
            input_data(2 downto 0) & input_data(31 downto 3) when 29,
            input_data(1 downto 0) & input_data(31 downto 2) when 30,
            input_data(0) & input_data(31 downto 1) when others;
end Behavioral;
