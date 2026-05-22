module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    
    genvar i;
    
    generate
        for(i = 0; i < 3; i = i + 1) begin: gen_out
            assign out_both[i] = in[i + 1] & in[i];
            assign out_any[i + 1] = in[i + 1] | in[i];     
        end
    endgenerate
    
    assign out_different[3] = in[3] ^ in[0];
    assign out_different[2] = in[3] ^ in[2];
    assign out_different[1] = in[2] ^ in[1];
    assign out_different[0] = in[1] ^ in[0];
        
   
endmodule
