section .bss
	num resb 1

section .text
	global _start

_start:
	mov ax, 8
	mov bl, 2
	div bl

	mov bl, al
	add bl, '0'

	mov [num], bl

	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
