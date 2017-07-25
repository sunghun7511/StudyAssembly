section .data
	count db 0
	el db 10

section .text
	global _start

_start:
	mov al, [count]
	inc al
	inc al

	add al, '0'
	mov [count], al

	mov eax, 4
	mov ebx, 1
	mov ecx, count
	mov edx, 1
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, el
	mov edx, 1
	int 80h

	mov al, [count]
	sub al, '0'
	dec al

	add al, '0'
	mov [count], al

	mov eax, 4
	mov ebx, 1
	mov ecx, count
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, el
	mov edx, 1
	int 80h
	
	mov eax, 1
	mov ebx, 0
	int 80h
