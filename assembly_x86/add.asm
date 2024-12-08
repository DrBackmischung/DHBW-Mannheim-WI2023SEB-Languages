section .data
    result db 0

section .text
    global _start
_start:
    mov al, 5
    mov bl, 7
    add al, bl
    mov [result], al
    mov eax, 1
    int 0x80
