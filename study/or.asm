section .data
	num db 6

section .text
	global _start

_start:
	mov al, [num]
	or al, 1h ; 0000 0001
	add al, '0'
	mov [num], al


	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
