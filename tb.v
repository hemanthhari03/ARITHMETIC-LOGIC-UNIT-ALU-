`timescale 1ns / 1ps
// Testbench for Enhanced ALU
module tb_ALU;
reg  [3:0] A;
reg  [3:0] B;
reg  [2:0] sel;
wire [3:0] Y;
// Instantiate ALU
ALU uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y)
);
initial begin
    $monitor("Time = %0t | A = %b | B = %b | sel = %b | Y = %b", $time, A, B, sel, Y);
    A = 4'b0101; B = 4'b0011;
    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // NOT
    sel = 3'b101; #10; // XOR
    sel = 3'b110; #10; // Increment
    sel = 3'b111; #10; // Decrement

 $stop;// to halt the simulation
end

endmodule
