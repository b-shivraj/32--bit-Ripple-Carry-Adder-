`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 18:58:13
// Design Name: 
// Module Name: RCA_8
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


module RCA_8(a,b,cin,sum,cout); 
    input [7:0]a,b; 
    input cin; 
    output [7:0]sum; 
    output cout; 
    
    wire c1;
    RCA_4 M0(.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(c1)); 
    RCA_4 M1(.a(a[7:4]),.b(b[7:4]),.cin(c1),.sum(sum[7:4]),.cout(cout));   
endmodule
