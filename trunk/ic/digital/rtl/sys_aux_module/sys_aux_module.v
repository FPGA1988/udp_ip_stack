//****************************************************************************************************  
//*----------------Copyright (c) 2016 C-L-G.FPGA1988.Roger Wang. All rights reserved------------------
//
//                   --              It to be define                --
//                   --                    ...                      --
//                   --                    ...                      --
//                   --                    ...                      --
//**************************************************************************************************** 
//File Information
//**************************************************************************************************** 
//File Name      : sys_aux_module.v 
//Project Name   : gt0000
//Description    : The system auxiliary module.
//Github Address : https://github.com/C-L-G/gt0000/trunk/ic/digital/rtl/sys_aux_module/sys_aux_module.v
//License        : CPL
//**************************************************************************************************** 
//Version Information
//**************************************************************************************************** 
//Create Date    : 29-08-2016 17:00(1th Fri,July,2016)
//First Author   : Roger Wang
//Modify Date    : 29-08-2016 14:20(1th Sun,July,2016)
//Last Author    : Roger Wang
//Version Number : 001   
//Last Commit    : 29-08-2016 14:30(1th Sun,July,2016)
//**************************************************************************************************** 
//Change History(latest change first)
//dd.mm.yyyy - Author - Your log of change
//**************************************************************************************************** 
//29.08.2016 - Roger Wang - Add the led control module.
//29.08.2016 - Roger Wang - The initial version.
//*---------------------------------------------------------------------------------------------------
`timescale 1ns/1ps
module sys_aux_module(
    aux_clk             ,//01   In
    aux_rst_n           ,//01   In
    aux_data_i          ,//01   In
    aux_data_o           //08   Out
);

    //************************************************************************************************
    // 1.Parameter and constant define
    //************************************************************************************************
    
//    `define UDP
    
    
    
    //************************************************************************************************
    // 2.input and output declaration
    //************************************************************************************************
    input               aux_clk     ;//the aux module clk = 20MHz
    input               aux_rst_n   ;//the aux module reset,low active
    input   [07:00]     aux_data_i  ;//the aux module data input signals
    output  [15:00]     aux_data_o  ;//the aux module data output signals
    
    //************************************************************************************************
    // 3.Register and wire declaration
    //************************************************************************************************
    
    //------------------------------------------------------------------------------------------------
    // 3.1 the system led module wire
    //------------------------------------------------------------------------------------------------
    
    reg     [09:00]     led_cnt     ;//led count
    wire                led_clk     ;
    wire                led_rst_n   ;
    wire    [07:00]     led_in      ;
    wire    [07:00]     led_out     ;

    //************************************************************************************************
    // 4.Main code
    //************************************************************************************************
    //------------------------------------------------------------------------------------------------
    // 4.1 the system led module assignment
    //------------------------------------------------------------------------------------------------
    assign  led_clk             = aux_clk           ;//
    assign  led_rst_n           = aux_rst_n         ;// 
//  assign  led_in[07:00]       = 8'b10101010       ;//
    assign  led_in[07:00]       = aux_data_i        ;//
    assign  aux_data_o[07:00]   = led_out           ;//
//  assign  aux_data_o[15:08]   = 8'b01010101       ;//
    assign  aux_data_o[15:08]   = led_out & led_out ;//
    //------------------------------------------------------------------------------------------------
    // 4.2 the xxx module assignment
    //------------------------------------------------------------------------------------------------
    
    
    //************************************************************************************************
    // 5.Sub module instantiation
    //************************************************************************************************
    //------------------------------------------------------------------------------------------------
    // 5.1 the system led module
    //------------------------------------------------------------------------------------------------    
    sys_led_module sys_led_inst_l2(
        .led_clk            (led_clk    ),//01  In
        .led_rst_n          (led_rst_n  ),//01  In
        .led_in             (led_in     ),//01  Out
        .led_out            (led_out    ) //01  Out
    );
    
    //------------------------------------------------------------------------------------------------
    // 5.2 the xxx module
    //------------------------------------------------------------------------------------------------   

    
    //------------------------------------------------------------------------------------------------
    // 5.3 the xxx module
    //------------------------------------------------------------------------------------------------

    
endmodule    
//****************************************************************************************************
//End of Mopdule
//****************************************************************************************************
    
    
    
   