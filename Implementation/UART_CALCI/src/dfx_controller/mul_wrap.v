module calc #(
    parameter N = 8
) (
    output [N - 1:0] y,
    output flg,  // Flag
    input  [3:0] op,  // Opcode
    input  [N - 1:0] a,
    input  [N - 1:0] b
);

wire [3:0] y_temp;

assign y_temp = a[3:0] * b[3:0];

assign y = {4'd0, y_temp};

endmodule
