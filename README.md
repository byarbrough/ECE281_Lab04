ECE281_Lab04
============

PRISM Datapath

###Design

####ALU
The first step in the design process was creating a functional arithmetic logic unit (ALU). The block diagram for an ALU is simple. 
![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/alu_schematic.PNG?raw=true "ALU Block Diagram")

While this three-input, one-output block looks simple, it is capable of performing 8 different operations using only logic gates. These operations provide for the basis of all computer abilities.
As far as the VHDL for this, I used a state machine which used OpSel as the 8 different states.

The results of the ALU simulation are below.

![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/ALU_simulation.PNG?raw=true "ALU testbench")

These simulation results show that the ALU works. This is evident by looking at the value of _Result_ and comparing it to the expected value from the inputs in the testbench. There was no issue getting this part of the program to work (aside from a typo in ROR, 0 instead of a 1). The trigger and the different states were already defined in the shell, so there was not even a need to make a new type.

The process of ensuring that this simulation meets expectations is rather redundant, and not exactly fun. For each different test I had to go through and manually make sure that the result is correct. The table below contains a partial list of some of the tests.

Time (ms) | Operation | Expected | Correct?
|--------|-------------|--------|---------
50|AND|0000|Y
150|NOT|1100|Y


####Datapath
The first Datapath simulation did not go very well.

![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/Datapath_simulation.PNG?raw=true "Datapath error")

The problem was with the address bus. There was no pattern to it; it simply alternated between UUUUs and XXXXs. After some frustrating debugging I finally realized that I forgot to implement the registers for MARHi and MARLo. Once I did that and added the waveform file, this is what I got.

![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/Waveform_simulation.PNG?raw=true "Waveform sim")

The first 50 ns of my simulation match that given in the Lab 4 Instructions, which is a good sign! From looking over the simulation, it appears that it everything works correctly.

###Reverse Engineering

Ok, I'm not even saying this for the IP points: This was super cool. The fact that I could go through the simulation and make a PRISM program that did the same thing proves that we actually programed a microcomputer! The only thing it is missing is memory.

Here is a more zoomed in snapshot of the segment I analyzed and wrote to PRISM.
![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/zoomed_simulation.PNG?raw=true "Zoomed Sim")
My main strategy was to look at the PC to see when the computer was changing addresses, and then look at the address or data busses (as well as other signals). This led me to derive this PRISM program (also included in the REPO).

![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/PRISM_shot.PNG?raw=true "PRISM Program")

When the program runs, it outputs 'D' to port 3, just like the VHDL sim!


Pretty cool stuff :)
