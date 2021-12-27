%include "io.inc"

; a/(b+c)
; {6, 25, 13}

section .text
global CMAIN
CMAIN:
mov ebp, esp; for correct debugging
MOV DX, 0x0000 ;заполняем ведущий регистр единицами для деления
MOV AX, [a]
MOV BX, [b]
ADD BX, [c]
IDIV BX ;деление со знаком
PRINT_DEC 4, AX ;частное
NEWLINE
PRINT_DEC 4, DX ;остаток
RET

section .data
a dw 0x06 ; прямой код 6
b dw 0x19 ; прямой код 25
c dw 0x0D ; прямой код 13