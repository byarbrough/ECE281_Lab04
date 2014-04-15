ECE281_Lab04
============

PRISM Datapath

###Design

####ALU
The first step in the design process was creating a functional arithmetic logic unit (ALU). The block diagram for an ALU is simple. 

These simulation results show that the ALU works. This is evident by looking at the value of _Result_ and comparing it to the expected value from the inputs in the testbench. There was no issue getting this part of the program to work; it was simply a case statement within the predefined process. The trigger and the different states were already defines, so there was not even a need to make a new type.

The results of this simulation are below.

![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/ALU_simulation.PNG?raw=true "ALU testbench")

The process of ensuring that this simulation meets expectations is rather redundant, and not exactly fun. For each differnt test I had to go through and manually make sure that the result is correct. The table below contains a partial list of some of the tests.

Time (ms) | Opperation | Expected | Correct?
|--------|-------------|--------|---------
50|AND|0000|Y



####Datapath
The first Datapath simulation did not go very well.

![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/Datapath_simulation.PNG?raw=true "Datapath error")

The problem was with the address bus. There was no pattern to it, it simply alternated between UUUUs and XXXXs. After some extensive debugging I finally realized that I forgot to implement the registers for MARHi and MARLo. Once I did that and added the waveform file, this is what I got.

![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/Waveform_simulation.PNG?raw=true "Waveform sim")



###Reverse Engineering
