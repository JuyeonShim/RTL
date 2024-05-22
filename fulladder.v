module fulladder(a, b, c_in, s, c_out);
    input a, b, c_in;
    output s, c_out;


wire s1, c1, s2;

// assign s1 = a ^ b;

// always를 쓰기 위해서는 좌변이 reg로 선언되어 있어야함.

// wire s1; -> reg s1;

// always @(*) begin
//     s1 = a ^ b;
// end

// always @(a, b) begin
//     s1 = a ^ b;
// end

xor(s1, a, b);

xor(s, s1, c_in);
and(c1, a, b);
and(s2, s1, c_in);
xor(c_out, s2, c1);

endmodule
