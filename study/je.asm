section .data
	num db 7
	True db 'T'

section .text
	global _start

_start:
	mov al, [num]
	
	cmp al, 7
	je hello

	jmp exit

hello:
	mov al, [num]
	add al, '0'
	mov [num], al

	mov eax, 4
	mov ebx, 1
	mov ecx, True
	mov edx, 1
	int 80h

	jmp exit

exit:
	mov eax, 1
	mov ebx, 0
	int 80h
