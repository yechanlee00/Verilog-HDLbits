module top_module( 
    input a, b, sel,
    output out );
    
    always @(*)
        case(sel)
            1'b0 : out = a;
            1'b1 : out = b;
        endcase
endmodule
