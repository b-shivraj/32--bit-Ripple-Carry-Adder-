`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 19:40:39
// Design Name: 
// Module Name: RCA_32_TB
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


module RCA_32_TB; 
    reg [31:0]a,b; 
    reg cin; 
    wire [31:0]sum; 
    wire cout; 
    
    RCA_32 DUT(.a(a[31:0]),.b(b[31:0]),.cin(cin),.sum(sum[31:0]),.cout(cout)); 
    
    initial 
    begin 
    #10 a=32'h0000ffff; b=32'h000f0001;  cin=1'b0; 
    #10 a=32'h0000ffff; b=32'h000fffff;  cin=1'b0; 
    #10 a=32'hffff0000; b=32'h00000001;  cin=1'b1; 
    
    #10 $finish;  
    end   
    
    initial 
    begin  
        $dumpfile("RCA_32.vcd"); // specifies the VCD file
		$dumpvars; //dump all the variables
		$monitor("%d,%b,%b,%b,%b,%b",$time,a,b,cin,sum,cout); 
    end
endmodule
