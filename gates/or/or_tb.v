`include "or.v"
module or_tb();

  reg a, b;
  wire out;

  or_gate UUT (a, b, out);
  initial begin
    $dumpvars;
    $display("a b out");
    a = 0; b = 0; #5;
    $display("%b %b %b", a, b, out);
    a = 0; b = 1; #5;
    $display("%b %b %b", a, b, out);
    a = 1; b = 0; #5;
    $display("%b %b %b", a, b, out);
    a = 1; b = 1; #5;
    $display("%b %b %b", a, b, out);
    $finish;
  end
endmodule
