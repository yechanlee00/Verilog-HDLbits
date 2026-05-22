module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    
    assign out[3:0] = in[4*sel + 3 -: 4]; // Indexed vector part select, in[3:0], in[7:4]...

endmodule
