module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    
    // Row2 ~x3 & x2 & ~x1
	// Row3 ~x3 & x2 & x1
	// Row5 x3 & ~x2 & x1
	// Row7 x3 & x2 & x1
    
    assign f = (~x3 & x2 & ~x1) | (~x3 & x2 & x1) | (x3 & ~x2 & x1) | (x3 & x2 & x1);

endmodule
