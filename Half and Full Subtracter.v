// Verilog Code for Half Subtractor Behavioural
module Half_subtracter_tb_behavioural();
  reg  a, b;
  wire  difference, borrow;
  behavioural_half_subtracter a1(a,b,difference,borrow);
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




// Design Code for Half Subtractor Behavioural
module behavioural_half_subtracter(a,b,difference,borrow);
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













// Verilog Code for Full Subtractor Behavioural
module test_full_subtractor_behavioural;
  reg a, b,c;
  wire difference , borrow;
  full_subtracter_behavioural a1(a, b, c, difference, borrow);
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




// Design Code for Full Subtractor Behavioural
module full_subtracter_behavioural (a, b, c, difference, borrow);
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











// Verilog Code for Full Subtractor Dataflow
module test_full_subtractor_dataflow;
  reg a, b,c;
  wire difference , borrow;
  qfull_subtracter_circkt a1(a, b, c, difference, borrow);
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


// Design Code for Full Subtractor Dataflow
module qfull_subtracter (a, b, c,difference,borrow);
  input a,b,c;
  output difference,borrow;
  assign difference = (a^b)^c;
  assign borrow = (((~a)&b)||(b&c)||((~a)&c));
endmodule











// Verilog Code for Half Subtractor Dataflow
module Half_subtractor_tb;
  reg  a, b;
  wire  difference, borrow;
  half_subtracter a1(a,b,difference,borrow);
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
    end
endmodule


// Design Code for Half Subtractor Dataflow
module half_subtracter (a,b,difference,borrow);
  output difference, borrow;
  input a, b;
  assign difference = a ^ b;
  assign borrow = ((~a) & b); 
endmodule
