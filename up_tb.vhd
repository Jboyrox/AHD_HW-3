

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity up_tb is
--  Port ( );
end up_tb;

architecture Behavioral of up_tb is

component countup is
    Port (clk: in std_logic;
          reset: in std_logic;
          cnt_en: in std_logic;
          count: out std_logic_vector(5 downto 0)
    );
end component;

signal t_Clk, t_Rst, t_Cnt_en : std_logic;
signal t_Cnt : std_logic_vector(5 downto 0);
constant clock_Period : time := 100 ns; --10 MHz
begin

CLOCK_PROCESS : process
    begin
        t_Clk <= '1';
        wait for clock_Period/2;
        t_Clk <= '0';
        wait for clock_Period/2;
    end process;

UUT : countup port map(
    clk => t_Clk,
    reset => t_Rst,
    cnt_en => t_Cnt_en,
    count => t_Cnt
    );
    
TEST_BENCH : process
 variable i : std_logic;
 variable bt : std_logic_vector(5 downto 0);
    begin   
        t_Rst <= '0'; t_Cnt_en <= '1'; wait for 200 ns;
        if(t_Cnt = "00000")
        then 
        i:='1';
        else
        i:='0';
        end if;
        t_Rst <= '0'; t_Cnt_en <= '0'; wait for 200 ns;
        if(t_Cnt = "00000")
        then
        if(i='1') then
        i:='1';
        end if ;
        else i:='0';
        end if;
        t_Rst <= '1'; t_Cnt_en <= '1'; wait for 200 ns;
        if(t_Cnt = "00000")
        then
        if(i='0') then
        i:='0';
        end if;
        else i:='1';
        bt := t_Cnt;
        end if;
        
        t_Rst <= '1'; t_Cnt_en <= '0'; wait for 200 ns;
        if(t_Cnt = bt)
        then
        if(i='1') then
        i:='1';
        end if;
        else i:='0';
        end if;
        
        t_Rst <= '0'; t_Cnt_en <= '0'; wait for 200 ns;
        if(t_Cnt = "00000")
        then
        if(i='1') then
        i:='1';
        end if ;
        else i:='0';
        end if;
        if (i='1') then report "all tests passed";
        else report "test failed";
   
        end if;
        
    end process;
end Behavioral;
