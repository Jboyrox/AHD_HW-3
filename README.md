# AHD_HW-3 Testbenches

1) Data Dependent Left shift
   <img width="1234" alt="leftrotatelatestwaveform" src="https://github.com/Jboyrox/AHD_HW-3/assets/45749588/8f556474-0ffa-441e-bfed-fd5b32555116">
   <img width="1239" alt="leftrotatelatestalltestpassed" src="https://github.com/Jboyrox/AHD_HW-3/assets/45749588/2820581a-f547-4fe8-8c0e-4901d4abaa28">

For our Datadependent left shift module which we designed using VHDL. We created a self checking test bench using VHDL which had 32 test cases in which a 32 bit binary number was shifted left from 0 to 31 times in each test case.


2)  Data Dependent Right Shift
   <img width="1245" alt="rightrotatelatestwaveform" src="https://github.com/Jboyrox/AHD_HW-3/assets/45749588/68ce2154-382f-4576-b0d6-eac7a62eac96">
   <img width="1243" alt="rightrotatelatestalltestpassed" src="https://github.com/Jboyrox/AHD_HW-3/assets/45749588/d144d810-f489-4e8b-ae9f-cfc3c86aeb8e">

For our Datadependent right shift module which we designed using Verilog. We created a self checking test bench using Verilog which had 32 test cases in which a 32 bit binary number was shifted right from 0 to 31 times in each test case.


3) Up counter
   <img width="1241" alt="upcounterwaveform" src="https://github.com/Jboyrox/AHD_HW-3/assets/45749588/ad442f80-3e36-43a3-895e-736b0a4a5c12">
   <img width="1239" alt="upcounteralltestpassed" src="https://github.com/Jboyrox/AHD_HW-3/assets/45749588/9bf0bbba-850c-4b49-bcde-dcb2d94678bd">

   For our up counter module which we designed using verilog. We created a self checking testbench using VHDL which checked the following cases. When the reset pin was 0 irrespective of the counter_enable's value the count value was 000000. When the reset pin was set to 1 and the counter_enable was set to 1 the count value started increasing . The next case was when the count enable value was set to 0 and reset was 1 the value of count remained the same.  Finally when the reset was set to 0 again the value of the count became 000000.



4) Down Counter
   <img width="1242" alt="downcounterwaveform" src="https://github.com/Jboyrox/AHD_HW-3/assets/45749588/8442a16a-d039-44fd-afa9-4b8959935103">
   <img width="1245" alt="downcounteralltestpassed" src="https://github.com/Jboyrox/AHD_HW-3/assets/45749588/1d25aa36-e055-4124-80cd-e0a4d389552d">

For our down counter module which we designed using VHDL. We created a self checking testbench using verilog which checked the following cases. When the reset was set to 0 regardless of the count enables value the value of the count was 111111 (3f in hexadecimal). When the reset pin was set to 1 and count enable was set to 1. The value of the count started decreasing. Once the count enable was set to 0 with the reset pin as 1 the count value remained the same and stopped decreasing. Finally when the reset pin was set to 0 the count value became 111111(3f in hexadecimal ) again.


Yes, it is possible to validate the Verilog Data Dependent Right Rotate (DDRR) using the VHDL testbench for the VHDL Data Dependent Left Rotate (DDLR). This is because the DDRR and DDLR are essentially the same operation, but with the direction of the rotation reversed.

In both cases, the amount of rotation is determined by a data input. The only difference is that in the DDRR, the bits are rotated to the right, while in the DDLR, the bits are rotated to the left.

Therefore, by testing the VHDL DDLR with a variety of data inputs, it is possible to ensure that the Verilog DDRR will also function correctly. For example, if the VHDL DDLR is tested with a data input of 0x12345678, the expected output would be 0x2468ACF0. If the Verilog DDRR is then tested with the same data input, it should also produce the same output.

In addition to testing the basic functionality of the DDRR, it is also possible to use the VHDL DDLR testbench to test for corner cases. For example, the testbench could be used to test the DDRR's behavior when the amount of rotation is equal to the width of the data input.

Overall, by using the VHDL DDLR testbench, it is possible to gain a high degree of confidence in the correctness of the Verilog DDRR.

Here is an example of a VHDL testbench for the DDLR:
entity ddlr_tb is
end entity;

architecture behavior of ddlr_tb is
  signal data_in : std_logic_vector(31 downto 0);
  signal amount : std_logic_vector(4 downto 0);
  signal data_out : std_logic_vector(31 downto 0);

  component ddlr
    port (
      data_in : in std_logic_vector(31 downto 0);
      amount : in std_logic_vector(4 downto 0);
      data_out : out std_logic_vector(31 downto 0)
    );
  end component;

begin
  uut : ddlr
    port map (
      data_in => data_in,
      amount => amount,
      data_out => data_out
    );

  process
  begin
    for i in 0 to 255 loop
      data_in <= std_logic_vector(to_unsigned(i, 32));
      amount <= std_logic_vector(to_unsigned(i % 32, 5));
      wait for 10 ns;
      assert data_out = std_logic_vector(rotate_left(to_unsigned(data_in, 32), to_unsigned(amount, 5)));
    end loop;
  end process;
end architecture;

This testbench can be used to test the DDLR with all possible data inputs and amounts of rotation. The assert statement will ensure that the output of the DDLR is correct for each test case.

The same testbench can be used to test the DDRR by simply replacing the rotate_left function with the rotate_right function



