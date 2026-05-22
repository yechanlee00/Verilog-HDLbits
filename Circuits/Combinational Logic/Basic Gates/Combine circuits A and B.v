module top_module (input x, input y, output z);
   
// Circuit A : z = (x^y) & x;
// Circuit B : z = (x ~^ y);
    
    wire out1, out2, out3, out4;
    
    assign out1 = (x^y) & x;
    assign out2 = (x ~^ y);
    or(out3, out1, out2);
    and(out4, out1, out2);
    assign z = out3 ^ out4;

endmodule
