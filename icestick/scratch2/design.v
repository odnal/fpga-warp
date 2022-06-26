// Instiantiating a clock divider to drive leds at 1Hz
module top(input clk, output LED5, LED4, LED2);
  wire clk_out;
  clk_div u1 (clk, clk_out);
  //defparam u1.DIVISOR = 25'd2;

  assign LED5 = clk_out;
  assign LED4 = clk_out;
  assign LED2 = clk_out;
endmodule

// 12 Mhz master clock
module clk_div ( 
    input clk, 
    output reg clk_out
  );

  reg [24:0] counter = 25'd0;
  parameter DIVISOR = 25'd12000000; // master clk(12Mhz) divided by divisor(12Mhz) generates a 1Hz signal

  always @(posedge clk) begin
    counter <= counter + 1;
    if (counter >= (DIVISOR-1))
      counter <= 25'd0;
    clk_out <= (counter < DIVISOR/2) ? 1'b1 : 1'b0; // half on half off
  end
endmodule
