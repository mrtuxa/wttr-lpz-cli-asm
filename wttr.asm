global _start
section .text

_start:
    mov rdx, qword [rsp]    ; argc
    lea rdx, [rsp+rdx*8+16] ; envv = argv + argc * 8 + len(argc) + len(envc)
    mov rsi, .argv
    mov rdi, .curl
    mov rax, 59             ; execve
    syscall

.argv dq .curl, .url, 0
.curl db "/run/current-system/sw/bin/curl", 0x00
.url  db "https://wttr.in/Leipzig", 0x00
