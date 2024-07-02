section .data
    operand1 db 0x0A ; First operand (10 in decimal)
    operand2 db 0x05 ; Second operand (5 in decimal)
    result   db 0x00 ; Variable to store the result

section .text
global _start

_start:
    mov al, [operand1] ; Load the first operand into AL
    mov bl, [operand2] ; Load the second operand into BL
    add al, bl         ; Perform the addition (AL = AL + BL)
    mov [result], al   ; Store the result

    ; Exit the program
    mov eax, 1         ; System call number for exit
    mov ebx, 0         ; Exit code
    int 0x80           ; Call kernel
