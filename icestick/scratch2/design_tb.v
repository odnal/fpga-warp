`include "design.v"
//`timescale 1ns/1ps

module top_tb;
  reg clk;
  wire led5, led4, led2;
  
  top UUT ( .clk(clk), 
            .LED5(led5), 
            .LED4(led4), 
            .LED2(led2));
  initial
    clk <= 1'b0;
  always begin
    #1 clk <= ~clk;
  end
  initial begin 
    $dumpvars;
    $display("led5 led4 led2");
    $monitor(" %b   %b   %b", led5, led4, led2);
    #100;
    $finish;
  end
endmodule
