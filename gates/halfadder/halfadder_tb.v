`include "halfadder.v"

module halfadder_tb();
  
  reg a, b;
  wire sum, carry;
  
  halfadder UUT (a, b, sum, carry);
  initial begin
    $dumpvars;
    $display("a b sum carry");
    a = 0; b = 0; #5; 
    $display("%b %b %b %b",a, b, sum, carry);
    a = 0; b = 1; #5;  
    $display("%b %b %b %b",a, b, sum, carry);
    a = 1; b = 0; #5; 
    $display("%b %b %b %b",a, b, sum, carry);
    a = 1; b = 1; #5; 
    $display("%b %b %b %b",a, b, sum, carry);
    $finish;
  end
endmodule
