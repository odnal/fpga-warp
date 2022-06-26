`default_nettype none
module top(input clk, output LED5, LED4, LED3);
  reg [15:0] cnt1 = 0;
  reg [6:0] cnt2 = 0;
  reg half_sec_indicator = 0;
  reg [2:0] o_output = 0;

  // Toggling LED to about half a second, but need to divide the clock down from 12 Mhz to be able to do so
  // The 12MHz clock is too fast
  // The first counter will / 2^16 (about 5.46ms)
  // Then the second counter goes to 91 which is 0.497s
  // close enough to 1/2 second 
  always @(posedge clk) begin
    cnt1 <= cnt1 + 16'h8000;
    if (cnt1 == 0)
      if (cnt2 == 2) // sim value 2;
        begin
          cnt2 <= 0;
          half_sec_indicator <= 1; 
        end
      else
        cnt2 <= cnt2 + 1;
    else 
      half_sec_indicator <= 0; 
    
    if (half_sec_indicator == 1)
      o_output <= o_output + 1;
  end  

  assign LED5 = o_output[0];  // 001
  assign LED4 = o_output[1];  // 010
  assign LED3 = o_output[2];  // 100
endmodule
