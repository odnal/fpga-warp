`include "fulladder.v"

module fulladder_tb();
  
  reg [3:0] a, b, cin;
  wire [3:0] sum; 
  wire carry;
  integer i;
  
  fulladder UUT (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
  initial begin
    $dumpvars;
    a <= 0;
    b <= 0;
    cin <= 0;
    $display("  cin    a      b     sum     carry");
    $monitor(" %04x   %04x   %04x   %04x      %b", cin, a, b, sum, carry);
    for (i = 0; i < 5; i = i+1) begin
      #10;
      a <= $random;
      b <= $random;
      cin <= $random;
    //cin = 4'h0; a = 4'h0; b = 4'h0; #5; 
    //cin = 4'h0; a = 4'h0; b = 4'h1; #5; 
    //cin = 4'h0; a = 4'h1; b = 4'h0; #5; 
    //cin = 4'h0; a = 4'h1; b = 4'h1; #5; 
    //cin = 4'h1; a = 4'h0; b = 4'h0; #5; 
    //cin = 4'h1; a = 4'h0; b = 4'h1; #5; 
    //cin = 4'h1; a = 4'h1; b = 4'h0; #5; 
    //cin = 4'h1; a = 4'h1; b = 4'h1; #5; 
    //$finish;
    end
  end
endmodule
