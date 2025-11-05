`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 18:47:17
// Design Name: 
// Module Name: Full_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Full_Adder(a,b,cin,sum,cout); 
    input a,b,cin; 
    output sum,cout; 
    
    wire c1,c2,c3; 
    
    xor(c1,a,b); 
    and(c2,a,b); 
    
    xor(sum,c1,cin); 
    and(c3,c1,cin); 
    or(cout,c2,c3);
    
endmodule
