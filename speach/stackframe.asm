section .text
	global _start

_start:
	push 0x41414141

	call sub_func

	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 4
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h

sub_func:
	push 0x42424242

	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 4
	int 80h
	
	pop eax

	ret
