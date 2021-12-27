%include "io.inc"

; a /(b+c)
; {6, 25, 13}

section .text
global CMAIN
CMAIN:
MOV EBP, ESP ;запись в обратной польской нотации
FLD DWORD [a]
FLD DWORD [b]
FLD DWORD [c]
FADD
FDIV
FST DWORD [result]
PRINT_HEX 4, [result]
RET

section .data
a dd 0x40C00000 ; 6 в ieee754
b dd 0x41C80000 ; 25 в ieee754
c dd 0x41500000 ; 13 в ieee754
result dd 0x00000000