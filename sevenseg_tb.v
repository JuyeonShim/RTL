module sevenseg_tb;
    reg clk, rst, key;
    reg [3:0] enc;
    wire [6:0] seg_d;
    wire dot;

    initial begin
        clk = 0;
        rst = 1;
        key = 0;
        enc = 0;
        #10 rst = 0;
    end
    
    always #2 clk = ~clk ;
    always @(posedge clk) begin
        if (rst == 0) begin
            enc <= enc +1;
            if(enc ==4'hf) begin
                enc <= 0;
            end
        end
    end

    

    sevenseg seven(.clk(clk), .rst(rst), .key(key), .enc(enc), .seg_d(seg_d), .dot(dot));
    
endmodule
