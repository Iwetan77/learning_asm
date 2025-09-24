section .data
    msg db "Hello, world!", 0xA  ; string 0xA is the newline character
    len equ $ - msg             ; Length of the string

section .text
    global _start               ; Entry point for program

_start:

    mov rax, 1                  ; System call for sys_write (rax = 1)
    mov rdi, 1                  ; File descriptor for standard output (rdi = 1)
    mov rsi, msg                ; Address of the string to write (rsi = msg)
    mov rdx, len                ; Length of the string (rdx = len)
    syscall                     ; Make system call

    mov rax, 60                 ; System call for sys_exit (rax = 60)
    mov rdi, 0                  ; Exit code (rdi = 0 for success)
    syscall                     ; Make system call
