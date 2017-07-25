section .data
	num1 db 255
	num2 db 100

section .text
	global _start

_start:
	mov al, [num1]
	mov bl, [num2]
	mul bl
	add al, '0'
	mov [num1], al

	mov eax, 4
	mov ebx, 1
	mov ecx, num1
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
