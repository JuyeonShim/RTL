module dff_rst_tb;
    reg d, rst, clk;
    wire Q, nQ;

    initial begin
        rst = 0;
        clk = 0;
        d = 0;

    end

    always #10 clk = ~clk;
    always #20 rst = ~rst;
    always #40 d = ~d;

    dff_rst dffrst(.d(d), .rst(rst), .clk(clk), .Q(Q), .nQ(nQ));

endmodule
