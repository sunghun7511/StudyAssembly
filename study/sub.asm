section .bss
	num resb 2

section .text
	global _start

_start:
	xor eax, eax
	mov eax, 7
	sub eax, 4
	add eax, '0'
	mov [num], eax
	
	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 2
	int 80h
