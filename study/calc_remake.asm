section .data
	mln db 0
	div_count db 0
	mul_num dw 0
	print_num dw 0
	%assign ten 10

section .text
	global _start

_start:
	mov ax, 714
	mov bx, 224
	add ax, bx

	mov [print_num], ax
	jmp go_print_num

go_print_num:
	mov ax, [print_num]
	jmp go_re_print_num

go_re_print_num:
	cmp ax, ten
	ja go_div_ten_over
	add al, '0'
	mov [mln], al
	mov eax, 4
	mov ebx, 1
	mov ecx, mln
	mov edx, 1
	int 80h

	mov al, [mln]
	sub al, '0'
	mov [mln], al
	mov bl, [print_num]
	cmp bl, ten
	mov bl, [mul_num]
	mov al, ten
	mov [mul_num], al

	ja go_mul
	jb go_exit

go_div_ten_over:
	mov bl, ten
	div bl
	jmp go_re_div

go_re_div:
	mov bl, [div_count]
	inc bl
	mov [div_count], bl
	mov ah, 0
	jmp go_re_print_num

go_exit:
	mov eax, 1
	mov ebx, 0
	int 80h

go_mul:
	mov ax, [mul_num]
	mov bl, [div_count]
	cmp bl, 1
	ja go_ten_mul
	je go_mln_mul
	mov bx, [print_num]
	sub bx, ax
	mov [print_num], bx
	mov ax, bx
	jmp go_re_print_num

go_mln_mul:
	mov bl, [mln]
	mul bl
	mov bl, [div_count]
	dec bl
	mov [div_count], bl
	mov [mul_num], ax
	jmp go_mul

go_ten_mul:
	mov bl, ten
	mul bl
	mov bl, [div_count]
	dec bl
	mov [div_count], bl
	mov[mul_num], ax
	jmp go_mul
