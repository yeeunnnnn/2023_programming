section .data
    msg db "Hello World!", 10
    len equ $ - msg

    section .text
        global __has_attribute
        
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
    