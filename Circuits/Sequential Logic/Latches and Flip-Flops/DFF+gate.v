module top_module (
    input clk,
    input in, 
    output out);
    
    wire temp1;
    
    xor U1(temp1, in, out);

    always @ (posedge clk) begin
        out <= temp1;
    end
       
endmodule
