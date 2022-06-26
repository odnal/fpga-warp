// T Flip Flop - toggles the output whenever the input is high
module tff(input d, rst, clk, output LED5);
  reg q;
  wire Q; 
  wire clk_out;

  clk_div u1 (clk, clk_out);
  defparam u1.DIVISOR = 25'd2000000; // change to low value for sim

  // toggle flip-flop
  always @(posedge clk_out or posedge rst) begin
    if (rst)
      q <= 1'b0;
    else 
      if (d) 
        q <= ~q;
      else 
        q <= q;
  end

  dff u2 (clk_out, q, Q); // extra debounce filtering
  assign LED5 = Q;
endmodule

module dff (input clk, d, output reg q);
  always @(posedge clk)
    q <= d;
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

