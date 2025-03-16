//module declaration
module alu(a,b,alu_sel,alu_out);
//port declaration
input  [7:0] a,b;  
input  [3:0] alu_sel; 
output reg [7:0] alu_out;
always @(*)
begin
    case(alu_sel)
        4'b0000: alu_out = a + b;    //to perform addition
        4'b0001: alu_out = a - b;    //to perform subtraction
        4'b0010: alu_out = a & b;    //to perform and operation
        4'b0011: alu_out = a | b;    //to perform or operation
        4'b0100: alu_out = a ^ b;    //to perform xor operation
        4'b0101: alu_out = ~(a & b); //to perform nand operation
        4'b0110: alu_out = ~(a | b); //to perform nor operation
        4'b0111: alu_out = ~(a ^ b); //to perform xnor operation
        default: alu_out = 4'b0000; // Default Case (zero)
    endcase
end
//end of the module
endmodule

