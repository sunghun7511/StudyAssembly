section .data
	num1 db 7
	num2 db 5

	lf db 10

section .data
	global _start

_start:
	mov al, [num1]
	mov bl, [num2]

	xor al, bl
	xor bl, al
	xor al, bl

	add al, '0'
	add bl, '0'

	mov [num1], al
	mov [num2], bl

	mov eax, 4
	mov ebx, 1
	mov ecx, num1
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, num2
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
