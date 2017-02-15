# ubfx
This is source code for an unsigned bitfield extract function written in ARM Thumb-2 assembly to run on a Cortex-M4 processor. It works quite simply and elegantly, wiping the bits to the left and right of the desired bitfield using shifts. To my understanding, this is the fastest possible UBFX function, having only 4 instructions.  
