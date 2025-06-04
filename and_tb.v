`timescale 1ns / 1ps
module and_tb;
    reg a,b;
    wire c;

    and_gate uut(
        .A(a),
        .B(b),
        .C(c)
    );
     
    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, and_tb);
  
        $display("a     b    | c    Time");
        $display("__________");
        $monitor("a= %d b=%d | c= %d Time=%0t", a, b, c, $time);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule