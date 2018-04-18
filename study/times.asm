section .data
	val times 500 db "TEST"
	zero db 0
	len equ $-val

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, val
	mov edx, len
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h