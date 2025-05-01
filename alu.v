`timescale 1ns / 1ps

// Enhanced ALU in Verilog
// Supports: ADD, SUB, AND, OR, NOT, XOR, INC, DEC
// Author: hari hemanth

module ALU (
    input  [3:0] A,        // 4-bit input A
    input  [3:0] B,        // 4-bit input B
    input  [2:0] sel,      // 3-bit select line for operation
    output reg [3:0] Y     // 4-bit output result
);

// Perform operation based on sel
always @(*) begin
    case (sel)
        3'b000: Y = A + B;         // ADD
        3'b001: Y = A - B;         // SUB
        3'b010: Y = A & B;         // AND
        3'b011: Y = A | B;         // OR
        3'b100: Y = ~A;            // NOT (A only)
        3'b101: Y = A ^ B;         // XOR
        3'b110: Y = A + 1;         // Increment A
        3'b111: Y = A - 1;         // Decrement A
        default: Y = 4'b0000;      // Default to 0
    endcase
end

endmodule

