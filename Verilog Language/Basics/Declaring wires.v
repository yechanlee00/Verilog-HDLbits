`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire DUT_wire_1;
    wire DUT_wire_2;
    wire DUT_wire_3;
    
    assign DUT_wire_1 = a & b;
    assign DUT_wire_2 = c & d;
    assign DUT_wire_3 = DUT_wire_1 || DUT_wire_2;
    
    assign out = DUT_wire_3;
    assign out_n = ~DUT_wire_3;

endmodule
