# Integer Overflow in Assembly Leading to Memory Access Violation

This repository demonstrates a common error in assembly programming: integer overflow during memory address calculation.  The code attempts to access an array element using an index that, under certain circumstances, can cause an integer overflow, resulting in a memory access violation.

## Bug Description
The `mov eax, [ebx+ecx*4]` instruction is susceptible to integer overflow if the value of `ecx` is large enough to cause `ebx + ecx * 4` to exceed the maximum addressable memory. This usually happens when an array index goes out of bounds and isn't validated.

## Solution
The solution involves adding bounds checking before the memory access instruction.  This ensures that `ecx` remains within the acceptable range before attempting to calculate the memory address.