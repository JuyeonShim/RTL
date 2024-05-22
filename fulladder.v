module fulladder(a, b, s, c_in, c_out);
    input [15:0] a, b;
    input c_in;
    output [15:0] s;
    output c_out;

assign {c_out, s[15:0]} = a[15:0] + b[15:0] + c_in;

endmodule