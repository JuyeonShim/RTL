module dff_rst(d, clk, rst, Q, nQ);
    input d, clk, rst;
    output reg Q, nQ;

    always@(negedge rst, posedge clk) begin
    if (rst == 0) begin
        Q <= 0;
        nQ <= 1;
	end

    else begin
        // DFF dff(.d(d), .clk(clk), .Q(Q), .nQ(nQ));
        Q <= d;
        nQ <= ~d;
	end
end
  
endmodule
