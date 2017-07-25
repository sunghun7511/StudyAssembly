section .bss
	num resb 3

section .text
	global _start

_start:
	mov eax, [num] ;xor eax, eax
	add eax, 4
	add eax, '0'
	mov [num], eax
	
	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 1
	int 80h
	
	mov eax, 1
	mov ebx, 0
	int 80h
