library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity left_tb is
--  Port ( );
end left_tb;

architecture Behavioral of left_tb is

signal t_A: std_logic_vector(31 downto 0);
signal t_B: integer range 0 to 31;
signal t_O: std_logic_vector(31 downto 0);

component DataDependentLeftRotator is
   Port (input_data: in std_logic_vector(31 downto 0);
         rot_amount: in  integer range 0 to 31; 
         output_data: out std_logic_vector(31 downto 0));
end component;

begin

UUT : DataDependentLeftRotator port map(
        input_data => t_A,
        rot_amount => t_B,
        output_data => t_O
    );

TEST_BENCH : process
    variable i : std_logic;
    begin
    
        t_A <= "00101111011010100110100100101101";
        t_B <= 0;
        wait for 10 ns;
         if (t_O = "00101111011010100110100100101101") then i := '1';
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 1;
        wait for 10 ns;
         if (t_O = "01011110110101001101001001011010") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
        t_A <= "00101111011010100110100100101101";
        t_B <= 2;
        wait for 10 ns;
         if (t_O = "10111101101010011010010010110100") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
        t_A <= "00101111011010100110100100101101";
        t_B <= 3;
        wait for 10 ns;
         if (t_O = "01111011010100110100100101101001") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
        t_A <= "00101111011010100110100100101101";
        t_B <= 4;
        wait for 10 ns;
         if (t_O = "11110110101001101001001011010010") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
       end if;
        t_A <= "00101111011010100110100100101101";
        t_B <= 5;
        wait for 10 ns;
         if (t_O = "11101101010011010010010110100101") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 6;
        wait for 10 ns;
         if (t_O = "11011010100110100100101101001011") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 7;
        wait for 10 ns;
         if (t_O = "10110101001101001001011010010111") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 8;
        wait for 10 ns;
         if (t_O = "01101010011010010010110100101111") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 9;
        wait for 10 ns;
         if (t_O = "11010100110100100101101001011110") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 10;
        wait for 10 ns;
         if (t_O = "10101001101001001011010010111101") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 11;
        wait for 10 ns;
         if (t_O = "01010011010010010110100101111011") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 12;
        wait for 10 ns;
         if (t_O = "10100110100100101101001011110110") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 13;
        wait for 10 ns;
         if (t_O = "01001101001001011010010111101101") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 14;
        wait for 10 ns;
         if (t_O = "10011010010010110100101111011010") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 15;
        wait for 10 ns;
         if (t_O = "00110100100101101001011110110101") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 16;
        wait for 10 ns;
         if (t_O = "01101001001011010010111101101010") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 17;
        wait for 10 ns;
         if (t_O = "11010010010110100101111011010100") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 18;
        wait for 10 ns;
         if (t_O = "10100100101101001011110110101001") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 19;
        wait for 10 ns;
         if (t_O = "01001001011010010111101101010011") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 20;
        wait for 10 ns;
         if (t_O = "10010010110100101111011010100110") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 21;
        wait for 100 ns;
         if (t_O = "00100101101001011110110101001101") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 22;
        wait for 10 ns;
         if (t_O = "01001011010010111101101010011010") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 23;
        wait for 10 ns;
         if (t_O = "10010110100101111011010100110100") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 24;
        wait for 10 ns;
         if (t_O = "00101101001011110110101001101001") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 25;
        wait for 10 ns;
         if (t_O = "01011010010111101101010011010010") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 26;
        wait for 10 ns;
         if (t_O = "10110100101111011010100110100100") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 27;
        wait for 10 ns;
         if (t_O = "01101001011110110101001101001001") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 28;
        wait for 10 ns;
         if (t_O = "11010010111101101010011010010010") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 29;
        wait for 10 ns;
         if (t_O = "10100101111011010100110100100101") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 30;
        wait for 10 ns;
         if (t_O = "01001011110110101001101001001011") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
         t_A <= "00101111011010100110100100101101";
        t_B <= 31;
        wait for 10 ns;
         if (t_O = "10010111101101010011010010010110") then 
         if (i ='1') 
         then i := '1';
         end if;
        else i := '0' ;
        end if;
        if (i= '1') then report "all tests passed";
        else report "test failed";
        end if;
        
end process;

end Behavioral;
