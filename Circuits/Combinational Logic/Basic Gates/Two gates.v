module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    
    wire t;
    
    xnor(t,in1,in2);
    xor(out,t,in3);

endmodule
