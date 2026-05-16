// Provided : module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire U0_cout;
    wire [15:0] U1_sum;
    wire [15:0] U2_sum;
    
    add16 U0(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(U0_cout));
    add16 U1(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(U1_sum), .cout());
    add16 U2(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(U2_sum), .cout());
    
    // 2:1 MUX
    always @(*) begin
        case(U0_cout)
            1'b0: sum[31:16] = U1_sum;
            1'b1: sum[31:16] = U2_sum;
        endcase
    end

endmodule
