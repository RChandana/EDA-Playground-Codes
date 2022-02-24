// Verilog Code for Full Adder Data Flow
module test_full_adder_dataflow;
  reg a, b,c;
  wire sum, carry;
  qfull_adder a1(a, b, c, sum, carry);
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
  



// Desgin Code for Full Adder
module qfull_adder (a, b, c, sum, carry);
  input a,b,c;
  output sum , carry;
  assign sum = (a^b)^c;
  assign carry = ((a&b)||(b&c)||(a&c));
endmodule




// Verilog Code for Half Adder
module Half_adder_tb();
  reg  a, b;
  wire  sum, carry;
  half_adder a1(a,b,sum,carry);
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



// Design Code for Half Adder
module half_adder(a,b,sum,carry);
  output sum, carry;
  input a, b;
  assign sum = a ^ b;
  assign carry = a & b; 
endmodule






// Verilog Code for Full Adder Behavioural
module test_full_adder;
  reg a, b,c;
  wire sum, carry;
  full_adder_behavioural a1(a, b, c, sum, carry);
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



// Design Code for Full Adder Behavioural
module full_adder_behavioural(a, b, c, sum, carry);
 input a, b, c;
 output sum, carry;
  reg sum, carry;
  always @ (a, b, c)
  begin
    if(a==1'b0 && b==1'b0 && c==1'b0)
      begin
        sum=0;
        carry=0;
      end
    else if ((a==1'b0 && b==1'b0 && c==1'b1) || (a==1'b0 && b==1'b1 && c==1'b0))
             begin
               sum=1;
               carry=0;
             end
             else if (a==1'b0 && b==1'b1 && c==1'b1)
               begin
                 sum=0;
                 carry=1;
               end
             else if (a==1'b1 && b==1'b0 && c==1'b0)
               begin
                 sum=1;
                 carry =0;
               end
             else if ((a==1'b1 && b==1'b0 && c==1'b1) || (a==1'b1 && b==1'b1 && c==1'b0))
               begin
                 sum=0;
                 carry=1;
               end
             else 
               begin
                 sum=1;
                 carry=1;
               end
       end
endmodule









// Verilog code for Full Adder Behavioural
module test_full_adder;
  reg a, b,c;
  wire sum, carry;
  full_adder_behavioural a1(a, b, c, sum, carry);
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
  


// Design for Full Adder
module full_adder_behavioural(a, b, c, sum, carry);
 input a, b, c;
 output sum, carry;
  reg sum, carry;
  always @ (a, b, c)
  begin
    if(a==1'b0 && b==1'b0 && c==1'b0)
      begin
        sum=0;
        carry=0;
      end
    else if ((a==1'b0 && b==1'b0 && c==1'b1) || (a==1'b0 && b==1'b1 && c==1'b0))
             begin
               sum=1;
               carry=0;
             end
             else if (a==1'b0 && b==1'b1 && c==1'b1)
               begin
                 sum=0;
                 carry=1;
               end
             else if (a==1'b1 && b==1'b0 && c==1'b0)
               begin
                 sum=1;
                 carry =0;
               end
             else if ((a==1'b1 && b==1'b0 && c==1'b1) || (a==1'b1 && b==1'b1 && c==1'b0))
               begin
                 sum=0;
                 carry=1;
               end
             else 
               begin
                 sum=1;
                 carry=1;
               end
       end
endmodule
            








// Verilog Code for Half Adder Behavioural
module Half_adder_tb_behavioural();
  reg  a, b;
  wire  sum, carry;
  behavioural_half_adder a1(a,b,sum,carry);
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




// Design Code for Half Adder Behavioural
module behavioural_half_adder (a,b,sum,carry);
  input a , b;
  output sum , carry;
  reg sum , carry;
  always @ (a,b)
    begin
       if (a==1'b0 && b==1'b0)
         begin 
           sum = 1'b0;
           carry = 1'b0;
         end
      else if ((a==1'b1 && b==1'b0)||(a==1'b0 && b==1'b1))
        begin
         sum = 1'b1;
         carry = 1'b0;
        end
       else 
         begin
           sum = 1'b0;
           carry = 1'b1;
         end
    end
endmodule  
