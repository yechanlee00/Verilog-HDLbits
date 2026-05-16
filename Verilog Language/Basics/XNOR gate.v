module top_module( 
    input a, 
    input b, 
    output out );
    
    xnor U1 (out, a, b);

endmodule
