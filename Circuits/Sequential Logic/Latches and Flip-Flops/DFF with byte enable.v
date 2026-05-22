module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);
    genvar i;
    
    generate
        for(i = 0; i < 16; i = i + 1) begin: DFFgen
            if(i < 8) begin
        				my_dff d_flipflop(.clk(clk),
                       					.resetn(resetn),
                        				.enable(byteena[0]), // bteena[0] -> lower byte d[7:0] control
                       					.d(d[i]),
                       					.q(q[i])
                      					);
            end
            else begin
                		my_dff d_flipflop(.clk(clk),
                       					.resetn(resetn),
                                       .enable(byteena[1]), // bteena[1] -> upper byte d[15:8] control
                       					.d(d[i]),
                       					.q(q[i])
                      					);
            end
                
        end
    endgenerate
    
endmodule
            
module my_dff (
    input clk,
    input resetn,
    input enable,
    input d,
    output reg q
);
   
    always @(posedge clk) begin
        if(!resetn)
            q <= 1'b0;
        else if(enable)
            q <= d;
    end

endmodule
