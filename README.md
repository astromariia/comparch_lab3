# Lab 3 Design
The 5 Stage Pipelined Processorbreaks instruction execution into five sequential stages to improve throughput by overlapping the processing of multiple instructions.
The processor supports different types of instructions, including R-type, I-type, S-type, B-type, U-type, and J-type. The instructions are determined via opcode in the
controller module. Branch instructions were implemented in the controller module using Zero, Negative, Overflow and Carry. Jalr was implemented by adding a mux in the
execute stage. Load and store operations work with bytes, halfwords, and words, using sign or zero extension as needed. Those instructions utilize the loadextend and
store modules. This was implemented through pipelining funct3 as a signal for both load and store. 
# Implementation
Once we proceeded to implementing the design on the FPGA, we deleted the top, testbench, imem and dmem modules. We also added Pcready and Memstrobe to the design. After
difficulty on the synthesis stage, we figured out the naming convention of top module. Afterwards the design worked well and we were able to get Vivado to upload our
design on the FPGA and it was obvious that our instructions were executing. 

# Where everything is
The files we used to run Vivado are in the Vivado Files directory. 
The riscv_pipelined.sv with the top, testbench, imem and dmem removed as well as our top file can be found
in the "Our Vivado Design" directory.
The screenshot of Vivado working is in the main folder under the name: "Screenshot from 04-11-2025"