//test bench module
module tb_alu;
reg  [7:0] a,b;
reg  [3:0] alu_sel;
wire [7:0] alu_out;
//module instantiate
alu dut(.a(a),.b(b),.alu_sel(alu_sel),.alu_out(alu_out));
initial
begin
        //test case for addition
        a=8'b0000_0011;b= 8'b0000_0001;alu_sel = 4'b0000; #10;
        $display("ADD: A=%b | B=%b | ALU_Out=%b",a,b,alu_out);
        //test case for subtraction
        a=8'b0000_0110;b=8'b0000_0010;alu_sel = 4'b0001; #10;
        $display("SUB: A=%b, B=%b, ALU_Out=%b",a,b,alu_out);
        //test case for and_gate
        a=8'b0000_1100;b=8'b0000_1010;alu_sel = 4'b0010; #10;
        $display("AND: A=%b, B=%b, ALU_Out=%b",a,b,alu_out);
        //test case for or_gate
        a=8'b0000_1100;b=8'b0000_1010;alu_sel= 4'b0011; #10;
        $display("OR: A=%b, B=%b, ALU_Out=%b",a,b,alu_out);
        //test case for xor_gate
        a=8'b0000_1100;b=8'b0000_1010;alu_sel=4'b0100; #10;
        $display("XOR: A=%b | B=%b | ALU_Out=%b",a,b,alu_out);
	      a=8'b0000_1100;b=8'b0000_1010;alu_sel=4'b0100; #10;
	      //test case for nand_gate
        $display("NAND: A=%b | B=%b | ALU_Out=%b",a,b,alu_out);
	      a=8'b0000_1100;b=8'b0000_1010;alu_sel=4'b0100; #10;
	      //test case gor nor_gate
        $display("NOR: A=%b | B=%b | ALU_Out=%b",a,b,alu_out);
	      a=8'b0000_1100;b=8'b0000_1010;alu_sel=4'b0100; #10;
	      //test case for xnor_gate
        $display("XNOR: A=%b | B=%b | ALU_Out=%b",a,b,alu_out);
        $finish;
end
//to generate the waveform
initial
begin
$dumpfile("tb_alu.vcd");
$dumpvars(0,tb_alu);
end
endmodule
