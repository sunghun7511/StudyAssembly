section .data
	arr:
		db 1
		db 2
		db 3

	arr_len: equ $-arr
	num: db 0

section .text
	global _start

_start:
	mov ecx, arr_len

loop_func:
	lea eax, [arr+ecx-1]
	add ebx, [eax]

	loop loop_func

	add ebx, '0'
	mov [num], ebx

	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
