section .data
    a dd 10
    b dd 2
    result dd 0

section .text
    global _start

_start:
    mov eax, [a]
    mov ebx, [b]

    cmp eax, ebx
    jle not_greater

    add eax, ebx

    mov [result], eax

not_greater:
    mov eax, 1
    xor ebx, ebx
    int 0x80
