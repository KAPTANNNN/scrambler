module lfsr_scrambler_tb;
    reg clk;
    reg reset;
    reg serial_input= 1'b0;
    wire [14:0] lfsr_out;
    wire scrambled_output;

    lfsr_scrambler uut (
        .clk(clk),
        .reset(reset),
        .serial_input(serial_input),
        .lfsr_out(lfsr_out),
        .scrambled_output(scrambled_output)
    );

  
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end


    initial begin
   
        reset = 1;
        #10; 
        reset = 0;
        #10 serial_input = 1'b1;
        #10 serial_input = 1'b1;
        #10 serial_input = 1'b1;
        #10 serial_input = 1'b1;
        #10 serial_input = 1'b1;
        #10 serial_input = 1'b1;
        #10 serial_input = 1'b1;
        #10 serial_input = 1'b1;

        #100; 
        $stop;
    end
    initial begin
        $monitor("At time %t, serial_input = %b, scrambled_output = %b, lfsr_out = %b",
                 $time, serial_input, scrambled_output, lfsr_out);
    end
endmodule
