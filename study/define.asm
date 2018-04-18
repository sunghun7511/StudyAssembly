%define text helloworld
%define textlen helloLen

segment .data
	helloworld: db 'Hello World!', 10
	helloLen: equ $-helloworld

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, text
	mov edx, textlen
	int 80h
	
	mov eax, 1
	mov ebx, 0
	int 80h
