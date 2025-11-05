`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 19:33:25
// Design Name: 
// Module Name: RCA_32
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


module RCA_32(a,b,cin,sum,cout); 
    input [31:0]a,b; 
    input cin; 
    output [31:0]sum; 
    output cout; 
    
    wire c1,c2,c3; 
    RCA_8 M0(.a(a[7:0]),.b(b[7:0]),.cin(cin),.sum(sum[7:0]),.cout(c1));
    RCA_8 M1(.a(a[15:8]),.b(b[15:8]),.cin(c1),.sum(sum[15:8]),.cout(c2));
    RCA_8 M2(.a(a[23:16]),.b(b[23:16]),.cin(c2),.sum(sum[23:16]),.cout(c3));
    RCA_8 M3(.a(a[31:24]),.b(b[31:24]),.cin(c3),.sum(sum[31:24]),.cout(cout)); 
    
    
endmodule
