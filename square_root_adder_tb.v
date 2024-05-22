module square_root_adder_tb;
    reg c_in;
    reg [9:0] a, b;
    wire [9:0] s;
    wire c_out;

    square_root_adder sra(.a(a), .b(b), .c_in(c_in), .s(s), .c_out(c_out));

    initial begin
        a = 10'b0000000000;
        b = 10'b0000000000;
        c_in = 0;
    end

    always #1 c_in = ~c_in;
    always #2 a = a + 10'b0000000111;
    always #4 b = b + 10'b0000000011;

    endmodule
