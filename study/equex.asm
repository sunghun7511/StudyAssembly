section .data
	helloworld: db 'Hello world!', 10
	helloLen: equ $-helloworld
	SYS_WRITE equ 4
	STDOUT equ 1
	SYS_EXIT equ 1

section .text
	global _start

_start:
	mov eax, SYS_WRITE
	mov ebx, STDOUT
	mov ecx, helloworld
	mov edx, helloLen
	int 80h
	
	mov eax, SYS_EXIT
	mov ebx, 0
	int 80h
