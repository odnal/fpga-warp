`include "design.v"
`timescale 1ns/1ps
module tff_tb;
  reg d, rst, clk;
  wire q;

  tff UUT (.d(d), .rst(rst), .clk(clk), .LED5(q));
  initial begin
    clk <= 1'b0;
    rst <= 1'b1;
  end 
  initial begin 
    $dumpvars;
    #5; rst <= 1'b0;
    d <= 1'b1; #17; // adjust this value to get d to drop low when q is low/high to keep q's state
    d <= 1'b0;
    #500;
    $finish;
  end
  always begin
    #1 clk <= ~clk;
  end
endmodule
