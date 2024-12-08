.global _start
.section .data
msg: .asciz "Hello DHBW\n"

.section .text
_start:
    ldr r0, =msg
    bl puts
    mov r7, #1
    svc #0
