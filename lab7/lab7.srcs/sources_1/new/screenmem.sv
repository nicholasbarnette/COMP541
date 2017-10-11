`timescale 1ns / 1ps
`default_nettype none


module screenmem #(
    parameter Nloc = 11,
    parameter Dbits = 4
)(
    input wire [Nloc-1:0] screenaddr,
    output wire [Dbits-1:0] charcode
    );
    
    //Instantiates and initializes memory
    logic [Dbits-1:0] sm [Nloc-1:0];
    initial $readmemh("smem_screentest.mem", sm, 0, Nloc-1);
    
    //Returns the character code at the address
    assign charcode = sm[screenaddr];
    
endmodule
