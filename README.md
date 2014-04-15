ECE281_Lab04
============

PRISM Datapath

###Design

These simulation results show that the ALU works. This is evident by looking at the value of _Result_ and comparing it to the expected value from the inputs in the testbench. There was no issue getting this part of the program to work; it was simply a case statement within the predefined process. The trigger and the different states were already defines, so there was not even a need to make a new type.

The results of this simulation are below.

![alt text](https://github.com/byarbrough/ECE281_Lab04/blob/master/ALU_simulation.PNG?raw=true "ALU testbench")

The process of ensuring that this simulation meets expectations is rather redundant, and not exactly fun. For each differnt test I had to go through and manually make sure that the result is correct. The table below contains a partial list of some of the tests.

Time (ms) | Opperation | Expected | Correct?
|--------|-------------|--------|---------
50|AND|0000|Y



###Reverse Engineering
