%include "io.inc"

; a /(b+c)
; {-7, -8, 11}

section .text
global CMAIN
CMAIN:
mov ebp, esp; for correct debugging
MOV DX, 0xFFFF ;��������� ������� ������� ��������� ��� �������
MOV AX, [a]
MOV BX, [b]
ADD BX, [c]
IDIV BX ;������� �� ������
PRINT_DEC 4, AX ;�������
NEWLINE
PRINT_DEC 4, DX ;�������
RET

section .data
a dw 0xFFF9 ; ��� ��� -7
b dw 0xFFF8 ; ��� ��� -8
c dw 0x0B ; ��� ��� 11