/*three different ways of writing this (sure there is more) each commented in blocks*/
// lets make the input be an array of 4 bits so we can express numbers other than just 0 and 1
// also are output sum would have to have the same format but not the carry
module fulladder(input [3:0] a, b, cin, output [3:0] sum, output carry);

  assign sum = a ^ b ^ cin;
  assign carry = ((cin & (a ^ b))) | (a & b);

  /*wire t_o1;
  wire t_o2;
  wire t_o3;

  assign t_o1 = a ^ b;
  assign t_o2 = cin & t_o1;
  assign t_o3 = a & b;
  
  assign sum = t_o1 ^ cin;
  assign carry = t_o2 | t_o3;*/
  
  /*always @(a or b or cin) begin
    assign sum = a ^ b ^ cin;
    assign carry = ((cin & (a ^ b))) | (a & b);
  end*/


endmodule
