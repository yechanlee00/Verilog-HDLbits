module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire temp1;
    wire temp2;
    wire temp3;
    wire temp4;
    
    
    and U1 (temp1, p2a, p2b);
    assign temp2 = p1a & p1c & p1b;
    and U3 (temp3, p2c, p2d);
    or (p2y, temp1, temp3);
    assign temp4 = p1f & p1e & p1d;
    or U4 (p1y, temp2, temp4);


endmodule
