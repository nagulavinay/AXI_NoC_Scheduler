`timescale 1ns / 1ps


module GTB( input wire clk,
            input wire reset_n,
            input wire mtclk,
           // input wire SetTimeVal,
           // input wire[63:0]NewTimeVal,
            //input wire ReconfInst,
            output wire[63:0]TimeCnt 
            );

  
Clock   Global(

    .clk(clk),          
    .reset_n(reset_n),      
    //macro tick input
    .mtclk(mtclk),
    //-- state-set of the counter vector
    .SetTimeVal(0),   
    .NewTimeVal(0),   
    //-- reconfiguration instant to issue switch to new value
    .ReconfInst(0),   
    //-- the outgoing counter vector
	.TimeCnt(TimeCnt)		
);






endmodule

