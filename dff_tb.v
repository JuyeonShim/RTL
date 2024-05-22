module dff_tb;
    reg d;
    reg clk;
    wire q, nq;

    initial begin
        clk = 0;
        d = 0;
    end

    always #10 clk=~clk;
    always #20 d = ~d;

    DFF DFF(.d(d), .clk(clk), .Q(q), .nQ(nq));

    initial begin
        #1000;
        $stop;
    end

endmodule
