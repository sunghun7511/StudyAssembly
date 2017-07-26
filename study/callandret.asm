section .data
	msg db 'FUNC!', 10
	msg_len equ $-msg

section .text
	global _start

_start:
	push $
	jmp Func

	mov eax, 1
	mov ebx, 0
	int 80h

Func:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, msg_len
	int 80h

	pop eax
	add eax, 7
	jmp eax
