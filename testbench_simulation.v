`timescale 1ns / 1ps

module test_simuation();

// Inputs to DUT
  reg INIT_AXI_RXN_0;
  reg INIT_AXI_TXN_0;
  reg [31:0] INPUT_WADDR_0;
  reg [31:0] INPUT_WDATA_0;
  reg [31:0] MSG_LENGTH_RD_0;
  reg [31:0] MSG_LENGTH_WR_0;
  reg M_AXI_ACLK_0;
  reg M_AXI_ARESETN_0;
  reg [7:0] PORT_ID_RD_0;
  reg [7:0] PORT_ID_WR_0;
  reg [31:0] READ_ADDR_0;
  reg mtclk_0;
  reg tx_0;
  
  integer j;

  // Instantiate the DUT
  design_1_wrapper dut (
    .INIT_AXI_RXN_0(INIT_AXI_RXN_0),
    .INIT_AXI_TXN_0(INIT_AXI_TXN_0),
    .INPUT_WADDR_0(INPUT_WADDR_0),
    .INPUT_WDATA_0(INPUT_WDATA_0),
    .MSG_LENGTH_RD_0(MSG_LENGTH_RD_0),
    .MSG_LENGTH_WR_0(MSG_LENGTH_WR_0),
    .M_AXI_ACLK_0(M_AXI_ACLK_0),
    .M_AXI_ARESETN_0(M_AXI_ARESETN_0),
    .PORT_ID_RD_0(PORT_ID_RD_0),
    .PORT_ID_WR_0(PORT_ID_WR_0),
    .READ_ADDR_0(READ_ADDR_0),
    .mtclk_0(mtclk_0),
    .tx_0(tx_0)
  );
  
  initial 
begin


M_AXI_ACLK_0 = 1'b0;


    forever
    begin
    # 5 M_AXI_ACLK_0 = ~M_AXI_ACLK_0;      
    
    end
 end 
 

 
 initial 
begin
  
 mtclk_0 = 1'b0;
    forever
    begin
    #3.725 mtclk_0 = ~mtclk_0;      
    
    end
 end 
 
 initial
 begin
 M_AXI_ARESETN_0 = 1'b0;
 
 #400 
 
 M_AXI_ARESETN_0 = 1'b1;
 
 end
 
 
 
 initial begin

    INPUT_WDATA_0 = 0;
    INPUT_WADDR_0 = 0;
    READ_ADDR_0 = 0;
    tx_0 = 0;

    #50
    M_AXI_ARESETN_0 = 1;
    INIT_AXI_TXN_0 = 0;
    MSG_LENGTH_WR_0 = 5;
    INIT_AXI_RXN_0 = 0;
    MSG_LENGTH_RD_0 = 5;
    PORT_ID_RD_0 = 8'd8;   
    PORT_ID_WR_0 = 8'd2;
    #10
    tx_0 = 1;
    #8
    tx_0 = 0;

    #100;
    INIT_AXI_TXN_0 = 1;
    PORT_ID_WR_0 = 2;
    INPUT_WDATA_0 = 0;
    #48
    INIT_AXI_TXN_0 = 0;
    for(j = 0; j < 16; j = j + 1) begin
        #8;
        INPUT_WDATA_0 = j;
    end
    #50
    PORT_ID_WR_0 = 2;
    #8
    tx_0 = 0;
    INIT_AXI_TXN_0 = 1;
    INPUT_WDATA_0 = 0;
    #40
    INIT_AXI_TXN_0 = 0;
    for(j = 0; j < 16; j = j + 1) begin
        #8;
        INPUT_WDATA_0 = j * 2;
    end
    PORT_ID_RD_0 = 8;
    #8
    INIT_AXI_RXN_0 = 1;
    #40
    INIT_AXI_RXN_0 = 0;
end
 
endmodule
