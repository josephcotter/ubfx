# ubfx
This is an unsigned bitfield extract function written in ARM Thumb-2 assembly to run on a Cortex-M4 processor. It works by wiping the bits to the left and right of the desired bitfield using shifts. To my understanding, this is the fastest possible bare UBFX function that can be written in Thumb-2.
