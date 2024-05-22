`timescale 1ns/1ps

module fulladd_tb;
    reg [15:0] a, b;
    reg c_in;
    wire [15:0] sum;
    wire c_out;

    fulladd16 fulladd16(.s(sum), .c_out(c_out), .a(a), .b(b), .c_in(c_in));

    initial begin
        a = 16'b0000000000000000;
        b = 16'b0000000000000000;
        c_in = 0;
    end

    always begin
        #10 c_in = ~c_in;
    end
    always begin
        #20 a[15:0] = a[15:0] + 1;
    end
    always begin
        #40 b[15:0] = b[15:0] + 1;
    end

    initial begin
        #1000 $stop;
    end
endmodule
