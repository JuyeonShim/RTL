module square_root_adder(a, b, c_in, s, c_out); //10bit로 가정
    input c_in;
    input [9:0] a, b;
    output [9:0] s;
    output c_out;

    wire [9:0] c;
    wire [1:0] c0, c1, c2, c3, c4, c5, c6, c7, c8;
    wire [1:0] s0, s1, s2, s3, s4, s5, s6, s7, s8;
    wire [9:0] ss;

/*real*/
    FA FA0(.a(a[0]), .b(b[0]), .c_in(c_in), .s(ss[0]), .c_out(c[0]));
    FA FA1(.a(a[1]), .b(b[1]), .c_in(c[0]), .s(ss[1]), .c_out(c[1]));
    FA FA2(.a(a[2]), .b(b[2]), .c_in(c[1]), .s(ss[2]), .c_out(c[2]));
    FA FA3(.a(a[3]), .b(b[3]), .c_in(c[2]), .s(ss[3]), .c_out(c[3]));
    FA FA4(.a(a[4]), .b(b[4]), .c_in(c[3]), .s(ss[4]), .c_out(c[4]));
    FA FA5(.a(a[5]), .b(b[5]), .c_in(c[4]), .s(ss[5]), .c_out(c[5]));
    FA FA6(.a(a[6]), .b(b[6]), .c_in(c[5]), .s(ss[6]), .c_out(c[6]));
    FA FA7(.a(a[7]), .b(b[7]), .c_in(c[6]), .s(ss[7]), .c_out(c[7]));
    FA FA8(.a(a[8]), .b(b[8]), .c_in(c[7]), .s(ss[8]), .c_out(c[8]));
    FA FA9(.a(a[9]), .b(b[9]), .c_in(c[8]), .s(ss[9]), .c_out(c[9]));
/* case : c_in = 0 */
    FA fa00(.a(a[0]), .b(b[0]), .c_in(1'b0), .s(s0[0]), .c_out(c0[0]));
    FA fa10(.a(a[1]), .b(b[1]), .c_in(1'b0), .s(s1[0]), .c_out(c1[0]));
    FA fa20(.a(a[2]), .b(b[2]), .c_in(1'b0), .s(s2[0]), .c_out(c2[0]));
    FA fa30(.a(a[3]), .b(b[3]), .c_in(1'b0), .s(s3[0]), .c_out(c3[0]));
    FA fa40(.a(a[4]), .b(b[4]), .c_in(1'b0), .s(s4[0]), .c_out(c4[0]));
    FA fa50(.a(a[5]), .b(b[5]), .c_in(1'b0), .s(s5[0]), .c_out(c5[0]));
    FA fa60(.a(a[6]), .b(b[6]), .c_in(1'b0), .s(s6[0]), .c_out(c6[0]));
    FA fa70(.a(a[7]), .b(b[7]), .c_in(1'b0), .s(s7[0]), .c_out(c7[0]));
    FA fa80(.a(a[8]), .b(b[8]), .c_in(1'b0), .s(s8[0]), .c_out(c8[0]));
    //FA fa90(.a(a[9]), .b(b[9]), .c_in(0), .s(s9[0]), .c_out(c9[0]));
/* case : c_in = 0 */
    FA fa01(.a(a[0]), .b(b[0]), .c_in(1'b1), .s(s0[1]), .c_out(c0[1]));  
    FA fa11(.a(a[1]), .b(b[1]), .c_in(1'b1), .s(s1[1]), .c_out(c1[1])) ; 
    FA fa21(.a(a[2]), .b(b[2]), .c_in(1'b1), .s(s2[1]), .c_out(c2[1]))   ;
    FA fa31(.a(a[3]), .b(b[3]), .c_in(1'b1), .s(s3[1]), .c_out(c3[1]))   ;
    FA fa41(.a(a[4]), .b(b[4]), .c_in(1'b1), .s(s4[1]), .c_out(c4[1]));  
    FA fa51(.a(a[5]), .b(b[5]), .c_in(1'b1), .s(s5[1]), .c_out(c5[1])) ;  
    FA fa61(.a(a[6]), .b(b[6]), .c_in(1'b1), .s(s6[1]), .c_out(c6[1])); 
    FA fa71(.a(a[7]), .b(b[7]), .c_in(1'b1), .s(s7[1]), .c_out(c7[1]));
    FA fa81(.a(a[8]), .b(b[8]), .c_in(1'b1), .s(s8[1]), .c_out(c8[1]));
    //FA fa91(.a(a[9]), .b(b[9]), .c_in(1), .s(s9[1]), .c_out(c9[1]));

/*select*/
    mux2to1 MUX1(.a(s1[0]), .b(s1[1]), .sel(c[0]), .out(s[1]));
    mux2to1 MUX2(.a(s2[0]), .b(s2[1]), .sel(c[1]), .out(s[2]));
    mux2to1 MUX3(.a(s3[0]), .b(s3[1]), .sel(c[2]), .out(s[3]));
    mux2to1 MUX4(.a(s4[0]), .b(s4[1]), .sel(c[3]), .out(s[4]));
    mux2to1 MUX5(.a(s5[0]), .b(s5[1]), .sel(c[4]), .out(s[5]));
    mux2to1 MUX6(.a(s6[0]), .b(s6[1]), .sel(c[5]), .out(s[6]));
    mux2to1 MUX7(.a(s7[0]), .b(s7[1]), .sel(c[6]), .out(s[7]));
    mux2to1 MUX8(.a(s8[0]), .b(s8[1]), .sel(c[7]), .out(s[8]));
   // mux2to1 MUX9(.a(s9[0]), .b(s9[1]), .sel(c[8]), .out(s[9]));


assign s[0] = ss[0];
assign s[9] = ss[9];
assign c_out = c[9];

endmodule

module FA(a, b, c_in, s, c_out);
    input a, b, c_in;
    output s, c_out;

    assign {c_out, s} = a + b + c_in;
endmodule

module mux2to1(a, b, sel, out);
    input a, b;
    input sel;
    output reg out;

always @(sel, a, b) begin

    if (sel == 0)
        out = a;
    else
        out = b;
end

endmodule