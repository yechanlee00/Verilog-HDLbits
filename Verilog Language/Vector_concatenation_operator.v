module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    
    wire [31:0] temp;

    assign temp = {a[4:0],b[4:0],c[4:0],d[4:0],e[4:0],f[4:0],1'b1,1'b1};
    assign w = temp[31:24];
    assign x = temp[23:16];
    assign y = temp[15:8];
    assign z = temp[7:0];
    
endmodule
