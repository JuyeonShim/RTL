# RTL

Hello, this project aims to design Register Transfer Level (RTL).
The main contents are as follows:

## Project Overview
Implementation of basic digital circuits such as D flip-flops and seven-segment displays
Design of pipeline structure
Development of a multi-cycle CPU

### 8 to 1 multiplexer
![8to1mux](https://github.com/JuyeonShim/RTL/assets/138649341/732cbe0a-a948-464c-97ff-fb6f8774cb27)

### full adder
![full adder](https://github.com/JuyeonShim/RTL/assets/138649341/9c0527a0-a7ce-49ae-b15e-b5cd3696eaf3)
module : 
simulated file : 

### 16 bit full adder
![16bit fulladder](https://github.com/JuyeonShim/RTL/assets/138649341/c647b02c-848c-4725-ab01-49abaec42f5c)
module : fulladder.v
simulated file : newfulladder_tb.v

### counter without reset
![counter](https://github.com/JuyeonShim/RTL/assets/138649341/218fe6a2-810e-4768-9d5f-ea5978d289c2)

### counter with reset
![counter_rst](https://github.com/JuyeonShim/RTL/assets/138649341/5adba0b0-916d-4887-b6d8-276a4c6aa2e5)


### D Flip-Flop and Seven-Segment Display
The D flip-flop is one of the fundamental components of digital circuits,
which transfers the input signal D to the output Q at a specific edge of the clock signal.
The seven-segment display is a display device composed of 7 LEDs,
which can represent heximal numbers, 0 to F.

### Pipeline Design
The pipeline structure is a representative technique
to improve the performance of digital circuits.

In a pipeline, the execution unit is composed of multiple stages,
and the logic state is updated at each stage.

### Multi-Cycle CPU Design
The multi-cycle CPU executes instructions over multiple cycles. This can reduce hardware complexity, but may result in performance degradation.

### Additional Topic: FPGA-based Processor Design
FPGA (Field-Programmable Gate Array) is a widely used hardware platform for implementing RTL designs. FPGA-based processor design is an important topic in RTL projects.
Through this project, we expect to improve RTL design skills and implement complex digital systems. Please feel free to ask if you have any questions.
