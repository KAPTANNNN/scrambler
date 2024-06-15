**8-bit Serial Data Scrambler using LFSR**
Project Description
This project implements an 8-bit serial data scrambler using a Linear Feedback Shift Register (LFSR). The scrambler is designed to process and scramble 8-bit serial data input, providing a scrambled output. The scrambler uses a specific polynomial and initial value for the LFSR to generate the pseudo-random sequence required for scrambling.

**Features**
Linear Feedback Shift Register (LFSR): The scrambler uses an LFSR with a polynomial feedback configuration.
Initial Value: The LFSR is initialized with a specific 15-bit value.
Scrambling Logic: The scrambler processes 8-bit serial data input and provides a scrambled output.
Testbench: A comprehensive testbench is provided to verify the functionality of the scrambler.
Files
lfsr_scrambler.v
This file contains the Verilog code for the LFSR-based scrambler module. The module includes:

**Inputs:**

clk: Clock signal.
reset: Reset signal to initialize the LFSR.
serial_input: 8-bit serial data input.
**Outputs:**
lfsr_out: Current state of the 15-bit LFSR.
scrambled_output: Scrambled serial output.
The LFSR is initialized with the value 100101010000000 and uses taps at positions 14 and 13 for the feedback polynomial.
lfsr_scrambler_tb.v
This file contains the Verilog testbench for the LFSR scrambler module. The testbench:
Generates a clock signal.
Applies a reset signal to initialize the LFSR.
Provides a sequence of 8-bit serial data inputs to the scrambler.
Monitors and displays the scrambled output and LFSR state at each clock cycle.
Usage
To use and test the scrambler:

**Setup**: Ensure you have a Verilog simulation environment set up, such as ModelSim, Vivado, or any other Verilog simulator.
**Compile**: Compile the lfsr_scrambler.v and lfsr_scrambler_tb.v files.
**Run Simulation**: Run the simulation using your Verilog simulator. The testbench will automatically apply the test sequence and display the results.
**Observe Results**: Monitor the scrambled output and LFSR state to verify the scrambler's functionality. The results will be displayed in the simulation console.

**Example Output**
During the simulation, you should observe the scrambled output for each 8-bit serial data input. The initial state of the LFSR will be set to 100101010000000, and the scrambled output will be generated based on the feedback polynomial.
**Contribution**
Contributions to improve the scrambler or testbench are welcome. Please fork the repository, make your changes, and submit a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for more details.
