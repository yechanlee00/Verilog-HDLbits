module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    
    wire temp1, temp2;
    
    // Mux #1
    always @(*) begin
        if(E) temp1 = w;
        else temp1 = Q;
    end
    
    // Mux #2
    always @(*) begin
        if(L) temp2 = R;
        else temp2 = temp1;
    end
    
    // DFF
    always @(posedge clk) begin
        Q <= temp2;
    end

endmodule
