%include "io.inc"

; a /(b+c)
; {-7, -8, 11}

section .text
global CMAIN
CMAIN:
MOV EBP, ESP ;������ � �������� �������� �������
FLD DWORD [a]
FLD DWORD [b]
FLD DWORD [c]
FADD
FDIV
FST DWORD [result]
PRINT_HEX 4, [result]
RET



section .data
a dd 0xC0E00000 ; -7 � ieee754
b dd 0xC1000000 ; -8 � ieee754
c dd 0x41300000 ; 11 � ieee754
result dd 0x00000000