`timescale 1ns / 1ps




`default_nettype none
module down_tb();

reg t_Clk, t_Rst, t_En;
wire [5:0] t_Cnt;

down_counter test_bench_design(
    .clk(t_Clk),
    .reset(t_Rst),
    .cnt_en(t_En),
    .count(t_Cnt)
    );
    reg i;

initial begin
    t_Clk <=0;
    #50;
    
    t_Clk <= 1;
    t_Rst <= 0;
    t_En <= 0;
    
    #50;
    if(t_Cnt==6'b111111)
     i =1 ;
     else
     i=0;
     
    
   t_Clk <= 0;
   
   #50;
   
   t_Clk <= 1;
   t_Rst <= 0;
   t_En <= 0;
   
   #50;
   
   if(t_Cnt==6'b111111)
   begin
   if(i==1)
   i=1;
   end
   else
   i=0;
   
   
   t_Clk <= 0;
   
   #50;
   
   t_Clk <=1;
   t_Rst <=1;
   t_En <= 1;
   
   #50; 
   
   if(t_Cnt == 6'b111110)
   begin
   if(i==1)
   i=1;
   end
   else i=0;
   
   t_Clk <= 0 ;
   
   #50;
   
   t_Clk <=1;
   t_Rst <=1;
   t_En <= 1;
   
   #50;
   if(t_Cnt == 6'b111101)
   begin
   if(i==1)
   i=1;
   end
   else i=0;
   
   t_Clk <=0;
   
   #50;
   
    t_Clk <=1;
   t_Rst <=1;
   t_En <= 0;
   
   #50;
   
   if(t_Cnt == 6'b111101)
   begin
   if(i==1)
   i=1;
   end
   else i=0;
   
   t_Clk <=0;
   
   #50;
   
    t_Clk <= 1;
    t_Rst <= 0;
    t_En <= 0;
    
    #50;
    if(t_Cnt==6'b111111)
    begin 
    if (i==1)
    i=1;
    else
    i=0;
    end
   
   
    $display (i);
    if (i == 1) $display ("all tests passed");
    else begin $display("the test failed");
               $stop;
    end 
end
endmodule