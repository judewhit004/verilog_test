`timescale 1ns / 1ps
module ALU_4bit_tb;
reg [3:0] A, B;
reg [2:0] op;
wire [4:0] out;

ALU_4bit uut(
    .A(A),
    .B(B),
    .out(out),
    .op(op)
);

initial begin
$monitor("opcode = %b, A = %b, B= %b, output = %b", op, A, B, out);
op = 3'b000; A=4'b1111; B = 4'b1111; #5;
op = 3'b001; A=4'b1111; B = 4'b1000; #5;
op = 3'b010; A=4'b1111; B = 4'b0011; #5;
op = 3'b011; A=4'b1111; B = 4'b1100; #5;
op = 3'b100; A=4'b0101; B = 4'b1010; #5;
op = 3'b101; A=4'b1111; B = 4'b0000; #5;
op = 3'b110; A=4'b1111; B = 4'b1111; #5;
op = 3'b111; A=4'b1111; B = 4'b0000; #5;

$finish;

end
endmodule