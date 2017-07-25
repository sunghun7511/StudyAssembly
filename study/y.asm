section .data
	y_ascii DB 'y'

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, y_ascii
	mov edx, 1
	int 80h
	
	mov eax, 1
	mov ebx, 0
	int 80h
