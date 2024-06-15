module dff (
    input clk,
    input reset,
    input d,
    input init_val,
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= init_val;
        else
            q <= d;
    end
endmodule
