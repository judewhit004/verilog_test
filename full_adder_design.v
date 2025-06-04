module full_adder_design(
    input A,
    input B,
    input cin,
    output S,
    output cout
);



assign cout = (A & B)|(A & cin)|(B & cin);
assign S = A ^ B ^ cin;
endmodule