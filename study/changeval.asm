section .data
	hw db 'Hello World', 10
	hl db $-hw

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, hw
	mov edx, hl
	int 80h

	
	mov eax, hw
	mov eax, 0x10414141
	mov hw, eax

	mov eax, hl
	mov eax, 4
	mov hl, eax

	mov eax, 4
	mov ebx, 1
	mov ecx, hw
	mov edx, hl
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
