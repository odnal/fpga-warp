`include "nor.v"

module nor_tb();
  
  reg a, b;
  wire out;
  
  nor_gate UUT (a, b, out);
  initial begin
    $dumpvars;
    $display("a b out");
    a = 0; b = 0; #5; 
    $display("%b %b %b",a, b, out);
    a = 0; b = 1; #5; 
    $display("%b %b %b",a, b, out);
    a = 1; b = 0; #5; 
    $display("%b %b %b",a, b, out);
    a = 1; b = 1; #5; 
    $display("%b %b %b",a, b, out);
    $finish;
  end
endmodule

