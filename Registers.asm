;Data Registers
;
;Four 32-bit data registers are used for arithmetic, logical, and other operations. These 32-bit registers can be used in three ways −
;
;   As complete 32-bit data registers: EAX, EBX, ECX, EDX.
;
;    Lower halves of the 32-bit registers can be used as four 16-bit data registers: AX, BX, CX and DX.
;
;    Lower and higher halves of the above-mentioned four 16-bit registers can be used as eight 8-bit data registers: AH, AL, BH, BL, CH, CL, DH, and DL.

;Some of these data registers have specific use in arithmetical operations.
;
;AX is the primary accumulator; it is used in input/output and most arithmetic instructions. For example, in multiplication operation, one operand is stored in EAX or AX or AL register according to the size of the operand.
;
;BX is known as the base register, as it could be used in indexed addressing.
;
;CX is known as the count register, as the ECX, CX registers store the loop count in iterative operations.
;
;DX is known as the data register. It is also used in input/output operations. It is also used with AX register along with DX for multiply and divide operations involving large values.

; More info in https://www.tutorialspoint.com/assembly_programming/assembly_registers.htm
