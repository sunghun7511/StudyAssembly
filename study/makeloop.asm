section .data
	count db 0
	lf db 10

section .text
	global _start

_start:
	mov al, 9
	mov [count], al
	jmp loop_start

loop_start:
	mov al, [count]
	cmp al, 0
	ja loop_func

	mov eax, 1
	mov ebx, 0
	int 80h

loop_func:
	mov al, [count]
	add al, '0'
	mov [count], al

	mov eax, 4
	mov ebx, 1
	mov ecx, count
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h

	mov al, [count]
	sub al, '0'
	dec al
	mov [count], al
	jmp loop_start


