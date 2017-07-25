section .data
	printmsg1 db 'Please enter your NickName : '
	lenprintmsg1 equ $-printmsg1
	printmsg2 db 'Your entered NickName is : '
	lenprintmsg2 equ $-printmsg2

section .bss
	nickname resb 10

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, printmsg1
	mov edx, lenprintmsg1
	int 80h

	mov eax, 3
	mov ebx, 0
	mov ecx, nickname
	mov edx, 10
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, printmsg2
	mov edx, lenprintmsg2
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, nickname
	mov edx, 10
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
