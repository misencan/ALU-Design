Murat Sencan
Dylan Derose

The "Verilog Files" file is for half adder, 1-bit full adder, 3-bit ripple carry adder, and full ALU.
The "Testbench Files" file is for testbench of each module.


The main benefits of the ALU we implemented are that it can easily change mode via the 2 bit mode input, 
which allows for the 4 function modes to be used one at a time. The main downsides are that it is only 
3 bit, so it can only do comparisons and arithmetic on decimal values of up to 7, and that it can only
use one mode at a time. The ALU structure is simple also, however the 2 bit mode switch creates some 
complexity that could be simplified through various different changes in logic.

Demo will be done with TA this week.