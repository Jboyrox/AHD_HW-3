`timescale 1ns / 1ps


module right_tb();

reg [31:0] a;
reg [4:0] b;
wire [31:0] o;

ddprs test_bench_design(
    .a(a),
    .b(b),
    .o(o)
);
reg i;
initial begin
     
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b00000;
    #10;
    if (o == 32'b00101111011010100110100100101101) i=1 ;
    else i=0;
     
   
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b00001;
    #10;
    if (o == 32'b10010111101101010011010010010110)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b00010;
    #10;
    if (o == 32'b01001011110110101001101001001011)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b00011;
    #10;
    if (o == 32'b10100101111011010100110100100101)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b00100;
    #10;
    if (o == 32'b011010010111101101010011010010010)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b00101;
    #10;
    if (o == 32'b01101001011110110101001101001001)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b00110;
    #10;
    if (o == 32'b10110100101111011010100110100100)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b00111;
    #10;
    if (o == 32'b01011010010111101101010011010010)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b01000;
    #10;
    if (o == 32'b00101101001011110110101001101001)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b01001;
    #10;
    if (o == 32'b10010110100101111011010100110100)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b01010;
    #10;
    if (o == 32'b01001011010010111101101010011010)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b01011;
    #10;
    if (o == 32'b00100101101001011110110101001101)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b01100;
    #10;
    if (o == 32'b10010010110100101111011010100110)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b01101;
    #10;
    if (o == 32'b01001001011010010111101101010011)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b01110;
    #10;
    if (o == 32'b10100100101101001011110110101001)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b01111;
    #10;
    if (o == 32'b11010010010110100101111011010100)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b10000;
    #10;
    if (o == 32'b01101001001011010010111101101010)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b10001;
    #10;
    if (o == 32'b00110100100101101001011110110101)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b10010;
    #10;
    if (o == 32'b10011010010010110100101111011010)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
     a <= 32'b00101111011010100110100100101101;
    b <= 5'b10011;
    #10;
    if (o == 32'b01001101001001011010010111101101)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
     a <= 32'b00101111011010100110100100101101;
    b <= 5'b10100;
    #10;
    if (o == 32'b10100110100100101101001011110110)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
     a <= 32'b00101111011010100110100100101101;
    b <= 5'b10101;
    #10;
    if (o == 32'b01010011010010010110100101111011)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b10110;
    #10;
    if (o == 32'b10101001101001001011010010111101)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b10111;
    #10;
    if (o == 32'b11010100110100100101101001011110)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
    a <= 32'b00101111011010100110100100101101;
    b <= 5'b11000;
    #10;
    if (o == 32'b01101010011010010010110100101111)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
     a <= 32'b00101111011010100110100100101101;
    b <= 5'b11001;
    #10;
    if (o == 32'b10110101001101001001011010010111)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
      a <= 32'b00101111011010100110100100101101;
    b <= 5'b11010;
    #100;
    if (o == 32'b11011010100110100100101101001011)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
       a <= 32'b00101111011010100110100100101101;
    b <= 5'b11011;
    #10;
    if (o == 32'b11101101010011010010010110100101)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
      a <= 32'b00101111011010100110100100101101;
    b <= 5'b11100;
    #10;
    if (o == 32'b11110110101001101001001011010010)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
      a <= 32'b00101111011010100110100100101101;
    b <= 5'b11101;
    #10;
    if (o == 32'b01111011010100110100100101101001)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
      a <= 32'b00101111011010100110100100101101;
    b <= 5'b11110;
    #10;
    if (o == 32'b10111101101010011010010010110100)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
    end
      a <= 32'b00101111011010100110100100101101;
    b <= 5'b11111;
    #10;
    if (o == 32'b01011110110101001101001001011010)
    begin
    if (i==1)
    begin
    i=1;
    end
    else
    i =0 ;
 end
    
    if (i==1) $display 
    ("all tests passed");
    else begin $display("the test failed");
               $stop;
    end
    end
    endmodule