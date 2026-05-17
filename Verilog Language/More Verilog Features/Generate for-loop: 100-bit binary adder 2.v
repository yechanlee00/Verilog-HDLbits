module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    wire [100:0] c;
    assign c[0] = cin;
    
    genvar i;
    
    generate
        for(i = 0; i < 100; i = i + 1) begin: Adder100i
            full_adder FA(.a(a[i]),
                          .b(b[i]),
                          .cin(c[i]),
                          .sum(sum[i]),
                          .cout(c[i+1])
                         );
            assign cout[i] = c[i+1];
        end
    endgenerate
            

endmodule
            
module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    
    assign sum = a ^ b ^ cin;
    assign cout = a & b | (a ^ b) & cin;
    
endmodule
