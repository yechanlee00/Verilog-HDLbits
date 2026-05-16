// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout ) is provided

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] sub_32;
    wire [31:0] i_xor_b;
    wire o_cout;
    wire [15:0] sum0, sum1;
    assign sub_32 = {32{sub}};			
    assign i_xor_b = sub_32 ^ b;	   
    
    add16 my_adder0(.a(a[15:0]),
                    .b(i_xor_b[15:0]),
                    .cin(sub),
                    .sum(sum0),
                    .cout(o_cout)
                   );
    
    add16 my_adder1(.a(a[31:16]),
                    .b(i_xor_b[31:16]),
                    .cin(o_cout),
                    .sum(sum1),
                    .cout()
                   );
    assign sum = {sum1, sum0};
endmodule
