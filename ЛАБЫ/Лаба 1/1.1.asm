%include "io.inc"

; a/(b+c)
; {6, 25, 13}

section .text
global CMAIN
CMAIN:
mov ebp, esp; for correct debugging
MOV DX, 0x0000 ;��������� ������� ������� ��������� ��� �������
MOV AX, [a]
MOV BX, [b]
ADD BX, [c]
IDIV BX ;������� �� ������
PRINT_DEC 4, AX ;�������
NEWLINE
PRINT_DEC 4, DX ;�������
RET

section .data
a dw 0x06 ; ������ ��� 6
b dw 0x19 ; ������ ��� 25
c dw 0x0D ; ������ ��� 13