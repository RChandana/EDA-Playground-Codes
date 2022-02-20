// Code your testbench here
// or browse Examples
module Half_subtracter_circkt_tb_behavioural();
  reg  a, b;
  wire  difference, borrow;
  behavioural_half_subtracter_circket a1(a,b,difference,borrow);
  initial begin
     $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
  end 
  initial
    begin
  a = 0; b =0;
      $monitor ("a=%0b b=%0b difference=%0b borrow=%0b", a,b,difference,borrow);  
  #5; a = 0; b =1;
  #5; a = 1; b =0;
  #5; a = 1; b =1;
  #5;
    end
endmodule










// Code your design here
module behavioural_half_subtracter_circket(a,b,difference,borrow);
  input a,b ;
  output difference,borrow ;
  reg difference,borrow;
  always @ (a,b)
    begin
       if (a==1'b0 && b==1'b0)
         begin 
           difference = 1'b0;
           borrow = 1'b0;
         end
      else if (a==1'b1 && b==1'b0)
        begin
         difference = 1'b1;
         borrow = 1'b0;
        end
      else if (a==1'b0 && b==1'b1)
        begin
         difference = 1'b1;
         borrow = 1'b1;
        end
       else 
         begin
           difference = 1'b0;
           borrow = 1'b0;
         end
    end
endmodule   













// Code your testbench here
// or browse Examples
module test_full_subtractor_circkt_behavioural;
  reg a, b,c;
  wire difference , borrow;
  full_subtracter_circkt_behavioural a1(a, b, c, difference, borrow);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
  end
initial
begin
a=0; b=0; c=0;
  $monitor ("a=%0b b=%0b c=%0b difference=%0b borrow=%0b", a, b, c,difference,borrow);
#5 a=0; b=0; c=1;
#5 a=0; b=1; c=0;
#5 a=0; b=1; c=1;
#5 a=1; b=0; c=0;
#5 a=1; b=0; c=1;
#5 a=1; b=1; c=0;
#5 a=1; b=1; c=1;
  
end
endmodule















// Code your design here
module full_subtracter_circkt_behavioural (a, b, c, difference, borrow);
  input a,b,c;
  output difference , borrow;
  reg difference , borrow;
  always @(a,b,c)
    begin
      if(a==1'b0 && b==1'b0 && c==1'b0)
        begin
          difference =0;
          borrow =0;
        end
      else if(a==1'b0 && b==1'b0 && c==1'b1)
        begin
          difference =1;
          borrow =1;
        end
      else if(a==1'b0 && b==1'b1 && c==1'b0)
        begin 
          difference =1;
          borrow =1;
        end
      else if(a==1'b0 && b==1'b1 && c==1'b1)
        begin
          difference =0;
          borrow =1;
        end
      else if(a==1'b1 && b==1'b0 && c==1'b0)
        begin
          difference =1;
          borrow =0;
        end
      else if(a==1'b1 && b==1'b0 && c==1'b1)
        begin
          difference =0;
          borrow =0;
        end
      else if(a==1'b1 && b==1'b1 && c==1'b0)
        begin 
          difference =0;
          borrow =0;
        end
      else
        begin
          difference =1;
          borrow =1;
        end
    end
endmodule
