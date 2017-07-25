section .data
	helloworld db 'Hello, world!', 10
	helloLen equ $-helloworld

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	lea ecx, [helloworld + 3]
	mov edx, helloLen
	int 80h
	
	mov eax, 1
	mov ebx, 0
	int 80h
