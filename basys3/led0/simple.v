module simple(input btnR, btnL, output [15:0] LED);
  //output LED[15:0];
  assign LED[0] = btnR & btnL;
endmodule
