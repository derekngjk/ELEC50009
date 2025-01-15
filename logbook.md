# Logbook for Information Processing Group 0
## Antoine, Derek, Joel, Pirong, Soon Yung

## Task 1

### Verilog Implementation - 7 Segment Decoder and Top Level Module

First, the 7-segment decoder was implemented in verilog as follows:

![7-segment display decoder verilog code](lab1/images/[task1]7_seg_verilog.png)

The top-level module was then created as follows:

![Task 1 top level module](lab1/images/[task1]top.png)

### Pin assignment

Next step is to perform pin assignments so the actual pins on the DE-10 board can be used as inputs for the top-level module. The first way is to manually use the pin assignment tool to assign each bit of input / output to a corresponding pin, as follows:

![Task 1 pin assignment - hard way](lab1/images/[task1]pin_assignment_hard.png)

Here, the MSBs of HEX0 output and SW input are assigned to pins C17 and C12 respectively, with 3.0V voltage standard. These pin assignments can be seen in the Quartus Setting File as follows:

![Task 1 pin assignment - qsf file](lab1/images/[task1]pin_assignment_hard_qsf.png)

Alternatively, instead of using the pin planner tool, the necessary lines can be written on a txt file and simply copied into the qsf file, as follows:

![Task 1 pin assignment - copied text](lab1/images/[task1]pin_assignment_copy.png)

### Compilation and Blasting

Next step is to perform compilation, which compiles the code, and performs placement, routing, fitting, etc. It produces a bit-stream file (.sof file), which can be used to blast the FPGA. Once the bit-stream has been successfully sent to the FPGA chip, it basically takes over the function of the chip.

![Task 1 compilation summary](lab1/images/[task1]compilation_summary.png)

The Programmer tool can now be used to select the newly-created .sof file and sent to the FPGA chip, so that our design takes over the functionality of the chip:

![Task 1 Blasting](lab1/images/[task1]sof.png)

### Testing

Once blasted, the FPGA chip implements our functionalities, as follows:

![Task 1 - 7 segment display showing 0](lab1/images/[task1]7seg_0.jpg)
![Task 1 - 7 segment display showing 7](lab1/images/[task1]7seg_7.jpg)
![Task 1 - 7 segment display showing c](lab1/images/[task1]7seg_c.jpg)