%include 'in_out.asm'

SECTION .data
    msg_x   DB 'Введите x: ', 0
    res_msg DB 'Результат: ', 0

SECTION .bss
    x RESB 10

SECTION .text
    GLOBAL _start
_start:
    mov eax, msg_x
    call sprint

    mov ecx, x
    mov edx, 10
    call sread

    mov eax, x
    call atoi

    mov ebx, 2
    mul ebx
    add eax, 10
    mov ebx, 3
    xor edx, edx
    div ebx

    mov edi, eax

    mov eax, res_msg
    call sprint
    mov eax, edi
    call iprintLF

    call quit
