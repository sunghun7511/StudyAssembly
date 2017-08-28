section .data
	helloworld: db "Hello World!", 10
	helloworldlen: equ $-helloworld

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, helloworld
	mov edx, helloworldlen
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
