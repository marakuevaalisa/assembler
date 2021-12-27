%include "io.inc"

; a /(b+c)
; {-7, -8, 11}

section .text
global CMAIN
CMAIN:
mov ebp, esp; for correct debugging
MOV DX, 0xFFFF ;заполняем ведущий регистр единицами для деления
MOV AX, [a]
MOV BX, [b]
ADD BX, [c]
IDIV BX ;деление со знаком
PRINT_DEC 4, AX ;частное
NEWLINE
PRINT_DEC 4, DX ;остаток
RET

section .data
a dw 0xFFF9 ; доп код -7
b dw 0xFFF8 ; доп код -8
c dw 0x0B ; доп код 11