//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: Jakobi Parker
// Email: jpark631@ucr.edu
// 
// Assignment name: Lab 01 - Clocks and Test Benches
// Lab section: 001
// TA: Sakshar Chakravarty
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
//
//=========================================================================

module gen_tick # ( parameter SRC_FREQ = 5000, parameter TICK_FREQ = 1) (
    input src_clk,
    input enable,
    output tick
);

// Declare registers and wires here
    integer MAX_COUNT = SRC_FREQ / (2*TICK_FREQ);
    integer count = 0;
    integer tick_cnt = 0;

always @(posedge src_clk) begin
    // put your code for the multiplier here
    if (enable) begin
        if (count == (MAX_COUNT-1) && tick_cnt == 0) begin
            count <= 0;
            tick_cnt <= 1;      
        end
        else if (count ==  (MAX_COUNT-1) && tick_cnt == 1) begin
            count <= 0;
            tick_cnt <= 0;      
        end 
        else begin
            count <= count + 1;
        end
    end
    else begin
        count <= 0;          
        tick_cnt <= 0;
    end  
end

// Change this assign statement to the actual tick value
assign tick = tick_cnt;

endmodule
