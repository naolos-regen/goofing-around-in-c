global	_start

section .text

_start:
	jmp MSG		; jmp MSG

proc:
	mov eax, 0x4
	mov ebx, 0x1
	pop ecx		; pop address of Hello World into ecx	

	mov edx, 0xF
	int 0x80

	mov eax, 0x1	; basically return (0);
	mov ebx, 0x0
	int 0x80


MSG: 
	call proc	

	db "Hello World!", 0dh, 0ah

section	.data
