global _start

section .data
	msg db "Hello World!", 0x0a
	len equ $ - msg

section .text
_start:
	mov eax, 4			; System call for standard output
	mov ebx, 1			; File descriptor
	mov ecx, msg		; Output
	mov edx, len		; Length of Output
	int 0x80			; Intercept and execute system call (0x80)
	mov eax, 0			; System call for exit
	mov ebx, 1			; Return code
	int 0x80			; Intercept and execute system call (0x80)