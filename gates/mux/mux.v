module mux(input a, b, sel, output reg out);
  // sel 1, out = a
  // sel 0, out = b
  always @(a or b or sel)
    if (sel)
      out <= a;
    else 
      out <= b;
endmodule
