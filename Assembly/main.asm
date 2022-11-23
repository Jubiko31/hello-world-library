; Linux version:
section .text
    global _start

section .data
msg db 'Hello, World!',0xa
len equ $ - msg

section .text

_start:
    mov edx, len
    mov ecx, msg,
    mov ebx,1
    mov eax,4
    int 0x80   ;call kernel

; exit via kernel
    mov ebx,0
    mov eax,1
    int 0x80
; to build and execute:
;   nasm -f elf hello.asm
;   ld -s -o hello hello.o
