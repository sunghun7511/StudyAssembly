section .data
	result dw 0

section .text
	global _start


_start:
	mov ax, 1
	mov bx, 2
	add ax, bx

	push ax

	mov ax, 2
	mov bx, 3
	add ax, bx

	push ax

	pop ax
	pop bx

	add ax, bx
	add ax, '0'
	mov [result], ax

	mov eax, 4
	mov ebx, 1
	mov ecx, result
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
