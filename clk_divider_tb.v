`timescale 1ns / 1ps
module clk_divider_tb;

reg clk = 0;
reg reset = 1;
wire clk_div;

always #5 clk = ~clk;

clk_divider_design dut (
    .clk(clk),
    .reset(reset),
    .clk_div(clk_div)
);

initial begin
    $dumpfile("clk_divider.vcd");
    $dumpvars(0, clk_divider_tb);

    #20 reset = 0;
    #1000 $finish;

end
endmodule