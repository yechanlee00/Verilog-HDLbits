module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    
    wire temp;
    
    add16 U0(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(temp));
    add16 U1(.a(a[31:16]), .b(b[31:16]), .cin(temp), .sum(sum[31:16]), .cout());

endmodule

// Provided : module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

module add1 ( input a, input b, input cin,   output sum, output cout );
    
    assign cout = a & b | cin & (a ^ b); // cout
    assign sum = a ^ b ^ cin; // sum

endmodule
