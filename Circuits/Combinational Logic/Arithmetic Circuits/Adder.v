module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire temp0, temp1, temp2;
    
    full_adder U0(.a(x[0]), .b(y[0]), .cin(1'b0), .cout(temp0), .sum(sum[0]));
    full_adder U1(.a(x[1]), .b(y[1]), .cin(temp0), .cout(temp1), .sum(sum[1]));
    full_adder U2(.a(x[2]), .b(y[2]), .cin(temp1), .cout(temp2), .sum(sum[2]));
    full_adder U3(.a(x[3]), .b(y[3]), .cin(temp2), .cout(sum[4]), .sum(sum[3]));

endmodule


module full_adder(
    input a,
    input b,
    input cin,
    output cout,
    output sum
);
    assign cout = (a & b) | (cin & (a ^ b));
    assign sum = a ^ b ^ cin;
    
endmodule
