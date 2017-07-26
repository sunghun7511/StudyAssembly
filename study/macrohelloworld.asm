%macro sys_write 2
	mov eax, 4
	mov ebx, 1
	mov ecx, %1
	mov edx, %2
	int 80h
%endmacro

section .data
	helloworld: db 'Hello World', 10
	hellolen: equ $-helloworld

section .text
	global _start

_start:
	sys_write helloworld, hellolen

	mov eax, 1
	mov ebx, 0
	int 80h
