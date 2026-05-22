module top_module (
    input clk,
    input x,
    output z
); 
    
    wire temp0, temp1, temp2;
    reg [2:0] q;
    reg [2:0] q_bar;
    assign temp0 = x ^ q[0];
    assign temp1 = x & q_bar[1];
    assign temp2 = x | q_bar[2];

    my_dff dff0(.clk(clk),
                .d(temp0),
                .q(q[0]),
                .q_bar(q_bar[0])
               );
    my_dff dff1(.clk(clk),
                .d(temp1),
                .q(q[1]),
                .q_bar(q_bar[1])
               );
    
	my_dff dff2(.clk(clk),
                .d(temp2),
                .q(q[2]),
                .q_bar(q_bar[2])
               );
    
    
    assign z = ~(q[2] | q[1] | q[0]);

endmodule

module my_dff(
    input clk,
    input d,
    output reg q,
    output q_bar
);
    assign q_bar = ~q; 
    
    always @(posedge clk) begin
       q <= d;
    end
endmodule
