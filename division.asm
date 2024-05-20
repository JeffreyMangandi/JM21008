section .data
    msg1 db "Ingrese el primer numero: ", 0
    msg1_len equ $ - msg1
    msg2 db "Ingrese el segundo numero: ", 0
    msg2_len equ $ - msg2
    result_msg db "El resultado de la division es: ", 0
    result_msg_len equ $ - result_msg
    newline db 0xA

section .bss
    num1 resb 10
    num2 resb 10
    result resb 10

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, msg1_len
    int 80h

    mov eax, 3
    mov ebx, 0
    mov ecx, num1
    mov edx, 10
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, msg2_len
    int 80h

    mov eax, 3
    mov ebx, 0
    mov ecx, num2
    mov edx, 10
    int 80h

    movzx eax, byte[num1]
    sub eax, '0'
    movzx ebx, byte[num2]
    sub ebx, '0'

    xor edx, edx
    div ebx

    add eax, '0'

    mov ecx, result
    mov [ecx], al
    mov eax, 4
    mov ebx, 1
    mov ecx, result_msg
    mov edx, result_msg_len
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 80h

    mov eax, 1
    xor ebx, ebx
    int 80h

