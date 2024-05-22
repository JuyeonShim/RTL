module sevenseg(
    input clk,
    input rst,
    input key,
    input [3:0] enc,
    output reg [6:0] seg_d,
    output reg dot
);

    reg [3:0] hex;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            hex <= 4'b0000;
        end else begin
            hex <= enc;
        end
    end
    
    always @(posedge clk) begin
            case (enc)
                4'b0000: hex <= 4'h0;
                4'b0001: hex <= 4'h1;
                4'b0010: hex <= 4'h2;
                4'b0011: hex <= 4'h3;
                4'b0100: hex <= 4'h4;
                4'b0101: hex <= 4'h5;
                4'b0110: hex <= 4'h6;
                4'b0111: hex <= 4'h7;
                4'b1000: hex <= 4'h8;
                4'b1001: hex <= 4'h9;
                4'b1010: hex <= 4'ha;
                4'b1011: hex <= 4'hb;
                4'b1100: hex <= 4'hc;
                4'b1101: hex <= 4'hd;
                4'b1110: hex <= 4'he;
                default: hex <= 4'hf;
            endcase
        end


    always @(posedge clk or posedge rst) begin
        if (rst) begin
            seg_d <= 7'b0000000;
        end else begin
            case (hex)
                4'h0: seg_d <= 7'b1111110;
                4'h1: seg_d <= 7'b0110000;
                4'h2: seg_d <= 7'b1101101;
                4'h3: seg_d <= 7'b1111001;
                4'h4: seg_d <= 7'b0110011;
                4'h5: seg_d <= 7'b1011011;
                4'h6: seg_d <= 7'b1011111;
                4'h7: seg_d <= 7'b1110000;
                4'h8: seg_d <= 7'b1111111;
                4'h9: seg_d <= 7'b1111011;
                4'ha: seg_d <= 7'b1110111;
                4'hb: seg_d <= 7'b0011111;
                4'hc: seg_d <= 7'b1001110;
                4'hd: seg_d <= 7'b0111101;
                4'he: seg_d <= 7'b1001111;
                default: seg_d <= 7'b1000111;
            endcase
        end
    end

    always @(posedge clk) begin
        if (clk) begin
            dot <= 1'b0;
        end else begin
            dot <= ~key;
        end
    end

endmodule
