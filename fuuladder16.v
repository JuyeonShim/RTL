module fulladd16(s, c_out, a, b, c_in);
    output [15:0] s;
    output c_out;
    input [15:0] a, b;
    input c_in;

    wire [14:0] c;

    // assign {c_out, s[15:0]} = a[15:0] + b[15:0] + c_in;

    fulladder fa0(.a(a[0]), .b(b[0]), .c_in(c_in), .s(s[0]), .c_out(c[0]));
    fulladder fa1(.a(a[1]), .b(b[1]), .c_in(c[0]),.s(s[1]), .c_out(c[1]));
    fulladder fa2(.a(a[2]), .b(b[2]), .c_in(c[1]),.s(s[2]), .c_out(c[2]));
    fulladder fa3(.a(a[3]), .b(b[3]), .c_in(c[2]),.s(s[3]), .c_out(c[3]));
    fulladder fa4(.a(a[4]), .b(b[4]), .c_in(c[3]),.s(s[4]), .c_out(c[4]));
    fulladder fa5(.a(a[5]), .b(b[5]), .c_in(c[4]),.s(s[5]), .c_out(c[5]));
    fulladder fa6(.a(a[6]), .b(b[6]), .c_in(c[5]),.s(s[6]), .c_out(c[6]));
    fulladder fa7(.a(a[7]), .b(b[7]), .c_in(c[6]),.s(s[7]), .c_out(c[7]));
    fulladder fa8(.a(a[8]), .b(b[8]), .c_in(c[7]),.s(s[8]), .c_out(c[8]));
    fulladder fa9(.a(a[9]), .b(b[9]), .c_in(c[8]),.s(s[9]), .c_out(c[9]));
    fulladder fa10(.a(a[10]), .b(b[10]), .c_in(c[9]),.s(s[10]), .c_out(c[10]));
    fulladder fa11(.a(a[11]), .b(b[11]), .c_in(c[10]),.s(s[11]), .c_out(c[11]));
    fulladder fa12(.a(a[12]), .b(b[12]), .c_in(c[11]),.s(s[12]), .c_out(c[12]));
    fulladder fa13(.a(a[13]), .b(b[13]), .c_in(c[12]),.s(s[13]), .c_out(c[13]));
    fulladder fa14(.a(a[14]), .b(b[14]), .c_in(c[13]),.s(s[14]), .c_out(c[14]));
    fulladder fa15(.a(a[15]), .b(b[15]), .c_in(c[14]),.s(s[15]), .c_out(c_out));

endmodule