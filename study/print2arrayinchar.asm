section .data
	hello db 'Hello World!'
	hello_len equ $-hello
	lf db 10
	temp_ecx dd 0

section .text
	global _start

_start:
	mov ecx, hello_len

loop_func:
	mov [temp_ecx], ecx
	mov eax, hello_len
	sub eax, ecx

	lea ecx, [hello+eax]
	mov eax, 4
	mov ebx, 1
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h

	mov ecx, [temp_ecx]
	loop loop_func

	mov eax, 1
	mov ebx, 0
	int 80h

