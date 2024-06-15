module lfsr_scrambler (
    input clk,
    input reset,
    input serial_input,
    output [14:0] lfsr_out,
    output reg scrambled_output
);
    wire feedback;
    wire [14:0] q;

    assign feedback = q[14] ^ q[13]; 

    dff dff0 (.clk(clk), .reset(reset), .d(feedback), .q(q[0]), .init_val(1'b1)); 
    dff dff1 (.clk(clk), .reset(reset), .d(q[0]), .q(q[1]), .init_val(1'b0));
    dff dff2 (.clk(clk), .reset(reset), .d(q[1]), .q(q[2]), .init_val(1'b0));
    dff dff3 (.clk(clk), .reset(reset), .d(q[2]), .q(q[3]), .init_val(1'b1));
    dff dff4 (.clk(clk), .reset(reset), .d(q[3]), .q(q[4]), .init_val(1'b0));
    dff dff5 (.clk(clk), .reset(reset), .d(q[4]), .q(q[5]), .init_val(1'b1));
    dff dff6 (.clk(clk), .reset(reset), .d(q[5]), .q(q[6]), .init_val(1'b0));
    dff dff7 (.clk(clk), .reset(reset), .d(q[6]), .q(q[7]), .init_val(1'b1));
    dff dff8 (.clk(clk), .reset(reset), .d(q[7]), .q(q[8]), .init_val(1'b0));
    dff dff9 (.clk(clk), .reset(reset), .d(q[8]), .q(q[9]), .init_val(1'b0));
    dff dff10 (.clk(clk), .reset(reset), .d(q[9]), .q(q[10]), .init_val(1'b0));
    dff dff11 (.clk(clk), .reset(reset), .d(q[10]), .q(q[11]), .init_val(1'b0));
    dff dff12 (.clk(clk), .reset(reset), .d(q[11]), .q(q[12]), .init_val(1'b0));
    dff dff13 (.clk(clk), .reset(reset), .d(q[12]), .q(q[13]), .init_val(1'b0));
    dff dff14 (.clk(clk), .reset(reset), .d(q[13]), .q(q[14]), .init_val(1'b0)); 

    assign lfsr_out = q;

    always @(posedge clk or posedge reset) begin
        if (reset)
            scrambled_output <= 1'b0;
        else
            scrambled_output <= serial_input ^ feedback;
    end
endmodule
