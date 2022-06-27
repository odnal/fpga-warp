`include "mux.v"

module mux_tb;
  reg a, b, sel;
  wire out;

  mux UUT (a, b, sel, out);
  initial begin
    $dumpvars;
    $display("a  b  sel  out");
    $monitor("%b  %b   %b    %b", a, b, sel, out);
   
    a = 0; b = 0; sel = 0; #5; 
    a = 0; b = 0; sel = 1; #5; 
    a = 0; b = 1; sel = 0; #5; 
    a = 0; b = 1; sel = 1; #5; 
    a = 1; b = 0; sel = 0; #5; 
    a = 1; b = 0; sel = 1; #5; 
    a = 1; b = 1; sel = 0; #5; 
    a = 1; b = 1; sel = 1; #5; 
    
  end
endmodule
