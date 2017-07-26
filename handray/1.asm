section .data
	kkkk resb 1

section .text
	global _start


_start:
	mov bx, 3
	call PROC_kkkk
	add ax, 30h
	mov [kkkk], ax

	mov eax, 4
	mov ebx, 1
	mov ecx, kkkk
	mov edx, 1
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h

PROC_kkkk:
	cmp bl, 1
	jae kkkk_CAL
	mov ax, 1
	ret

kkkk_CAL:
	dec bl
	call PROC_kkkk
	inc bl
	mul bl
	ret
