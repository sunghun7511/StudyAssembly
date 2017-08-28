section .data
	a db 0
	b db 0
	lf db 10

section .text
	global _start

_start:
	
	mov eax, [a]
	add eax, 1
	mov [a], eax
	
	mov eax, [b]
	add eax, 2
	mov [b], eax
	
	
	mov eax, [a]
	mov ebx, [b]
	
	add eax, ebx
	add eax, '0'
	mov [a], eax
	
	mov eax, 4
	mov ebx, 1
	mov ecx, a
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
