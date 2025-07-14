module ALU_4bit(
input [3:0] A, B,
input [2:0] op,
output reg [4:0] out
);


always@(*)begin
 case(op)
  3'b000: out= 0;
  3'b001: out = A+B;
  3'b010: out = A-B;
  3'b011: out = A&B;
  3'b100: out = A|B;
  3'b101: out = ~A;
  3'b110: out = ~B;
  3'b111: out = A^B;
 endcase
end
endmodule