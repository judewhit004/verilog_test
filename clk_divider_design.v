module clk_divider_design(
input wire clk,
input wire reset,
output reg clk_div
);

reg [3:0] div;


    always @(posedge clk or posedge reset) begin
        if (reset) begin
            div <= 0;
            clk_div <= 0;
        end else begin
            if (div == 9) begin  // divide by 10
                div <= 0;
                clk_div <= ~clk_div;
            end else begin
                div <= div + 1;
            end
        end
    end
endmodule