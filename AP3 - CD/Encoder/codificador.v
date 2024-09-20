module codificador (bcd, l);

input [3:0]bcd;
output reg [6:0]l;

always @ (bcd) begin
    case(bcd)
        4'b0000: l = 7'b1111110; //0
        4'b0001: l = 7'b0110000; //1
        4'b0010: l = 7'b1101101; //2
        4'b0011: l = 7'b1110001; //3
        4'b0100: l = 7'b0110011; //4
        4'b0101: l = 7'b1011011; //5
        4'b0110: l = 7'b1011111; //6
        4'b0111: l = 7'b1110000; //7
        4'b1000: l = 7'b1111111; //8
        4'b1001: l = 7'b1111011; //9
        4'b0110: l = 7'b1110111; //A
        4'b0110: l = 7'b0011111; //b
        4'b0110: l = 7'b0001101; //c
        4'b0110: l = 7'b1001111; //e
        4'b0110: l = 7'b1000111; //f
        default: l = 7'b0000000;
    endcase;
end
endmodule