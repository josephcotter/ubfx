        .syntax     unified
        .cpu        cortex-m4
        .text
        .thumb_func
        .align       2

//extern uint32_t UBFXtract(uint32_t x, uint32_t lsb, uint32_t width);

        .global     UBFXtract
UBFXtract:
         LSR R0, R0, R1 //shifting right by lsb - unwanted bits to the right of bitfield are lost
         RSB R2, R2, 32 //R3 = 32 - width
         LSL R0, R0, R2 //shifting left by R2 - unwanted bits to left of bitfield are lost
         LSR R0, R0, R2 //shifting right by R2 - returns extracted bits to correct position, with lsb of bitfield in bit position 0
         BX  LR

        .end

