`timescale 1ns / 1ps
module full_adder_tb;
    reg A,B,cin;
    wire S,cout; 
    

    full_adder_design uut(
        .A(A),
        .B(B),
        .cin(cin),
        .S(S),
        .cout(cout)
    );

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, full_adder_tb);


        $display(" A | B | cin | S | cout | Time");
        $display("------------------------------");
        $monitor("A=%d | B=%d | cin=%d | S=%d | cout=%d | Time=%0t", A, B, cin, S, cout, $time);
        A= 0; B = 0; cin=0; #10;
        A= 0; B = 0; cin=1; #10;
        A= 0; B = 1; cin=0; #10;
        A= 0; B = 1; cin=1; #10;
        A= 1; B = 0; cin=0; #10;
        A= 1; B = 0; cin=1; #10;
        A= 1; B = 1; cin=0; #10;
        A= 1; B = 1; cin=1; #10;

    $finish;
    end
endmodule