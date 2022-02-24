// Code your testbench here
// or browse Examples
module test_full_adder_circkt_dataflow;
  reg a, b,c;
  wire sum, carry;
  qfull_adder_circkt a1(a, b, c, sum, carry);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
  end
initial
begin
a=0; b=0; c=0;
  $monitor ("a=%0b b=%0b c=%0b sum=%0b carry=%0b", a, b, c, sum, carry);
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
module qfull_adder_circkt (a, b, c, sum, carry);
  input a,b,c;
  output sum , carry;
  assign sum = (a^b)^c;
  assign carry = ((a&b)||(b&c)||(a&c));
endmodule










// Code your testbench here
// or browse Examples
module Half_adder_circkt_tb();
  reg  a, b;
  wire  sum, carry;
  half_adder_circket a1(a,b,sum,carry);
  initial begin
     $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
  end 
  initial
    begin
  a = 0; b =0;
      $monitor ("a=%0b b=%0b sum=%0b carry=%0b", a,b,sum,carry);  
  #5; a = 0; b =1;
  #5; a = 1; b =0;
  #5; a = 1; b =1;
  #5;
    end
endmodule



// Code your design here
module half_adder_circket(a,b,sum,carry);
  output sum, carry;
  input a, b;
  assign sum = a ^ b;
  assign carry = a & b; 
endmodule
