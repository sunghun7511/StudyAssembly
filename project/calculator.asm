section .data
	out1 db 'Input First Value', 10, '> '
	out1l equ $-out1

	out2 db 'Input Second Value', 10, '> '
	out2l equ $-out2

	out3 db 'add : '
	out4 db 'sub : '
	out5 db 'mul : '
	out6 db 'div : '
	out7 db 'mod : '
	outl equ $-out7

	lf db 10
	val dq 0
	val2 dq 0

section .bss
	inp1 resb 4
	inp2 resb 4

section .text
	global _start

_start:
	
	; get user input

	mov eax, 4
	mov ebx, 1
	mov ecx, out1
	mov edx, out1l
	int 80h
	
	mov eax, 3
	mov ebx, 0
	mov ecx, inp1
	mov edx, 2
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, out2
	mov edx, out2l
	int 80h

	mov eax, 3
	mov ebx, 0
	mov ecx, inp2
	mov edx, 2
	int 80h
	




	; prolog

	mov eax, [inp1]
	xor eax, 0xa30
	mov [inp1], eax

	mov eax, [inp2]
	xor eax, 0xa30
	mov [inp2], eax
	




	; add
	
	mov eax, [inp1]
	mov ebx, [inp2]
	add eax, ebx
	
	add eax, '0'
	mov [val], eax
	

	mov eax, 4
	mov ebx, 1
	mov ecx, out3
	mov edx, outl
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, val
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h





	; sub
	
	xor eax, eax
	xor ebx, ebx

	mov eax, [inp1]
	mov ebx, [inp2]
	sub eax, ebx
	
	add eax, '0'
	mov [val], eax
	
	
	mov eax, 4
	mov ebx, 1
	mov ecx, out4
	mov edx, outl
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, val
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h





	; mul
	
	xor eax, eax
	xor ebx, ebx
	xor edx, edx
	
	mov eax, [inp1]
	mov ebx, [inp2]
	mul ebx

	add eax, '0'
	mov [val], eax

	
	mov eax, 4
	mov ebx, 1
	mov ecx, out5
	mov edx, outl
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, val
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h





	; div
	
	mov eax, [inp1]
	mov ebx, [inp2]
	div ebx

	add ax, '0'
	add dx, '0'
	mov [val], ax
	mov [val2], dx


	mov eax, 4
	mov ebx, 1
	mov ecx, out6
	mov edx, outl
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, val
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h





	; mod
	
	mov eax, 4
	mov ebx, 1
	mov ecx, out7
	mov edx, outl
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, val2
	mov edx, 1
	int 80h

	mov eax, 4
	mov ebx, 1
	mov ecx, lf
	mov edx, 1
	int 80h





	; end

	mov eax, 1
	mov ebx, 0
	int 80h


