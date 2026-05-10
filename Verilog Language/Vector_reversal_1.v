module top_module( 
    input [7:0] in,
    output [7:0] out
);
    // The concatenation operator assigns the elements of the vector 
    // on the left side into the target vector in order
    assign out = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};

endmodule
