global _start
section .text

_start:
    mov eax, 0x0B
    mov ebx, .wttr
    push DWORD 0
    push DWORD .wttr
    lea ecx, [esp]
    xor edx, edx
    int 0x80
.wttr:
    db 'curl https://wttr.in/Leipzig', 0x00