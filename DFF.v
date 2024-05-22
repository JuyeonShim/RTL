module DFF(d, clk, Q, nQ);
    input d, clk;
    output wire Q, nQ;

    wire p1, p2;

    nand(p1, d, clk);
    nand(p2, ~d, clk);
    nand(Q, p1, nQ);
    nand(nQ, p2, Q);

endmodule
