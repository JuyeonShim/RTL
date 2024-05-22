module fulladder(a, b, c_in, s, c_out);
    input a, b, c_in;
    output s, c_out;


wire s1, c1, s2;

xor(s1, a, b);

xor(s, s1, c_in);
and(c1, a, b);
and(s2, s1, c_in);
xor(c_out, s2, c1);

endmodule
