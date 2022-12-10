; first comment outside the _main function

global _main
extern _printf

section .data

string:
	db "; first comment outside the _main function%2$c%2$cglobal _main%2$cextern _printf%2$c%2$csection .data%2$c%2$cstring:%2$c	db %3$c%1$s%3$c, 0%2$c%2$csection .text%2$c%2$cprint:%2$c	push rbx%2$c	mov rdi, string%2$c	mov rsi, string%2$c	mov rdx, 10%2$c	mov rcx, 34%2$c	call _printf%2$c	pop rbx%2$c	ret%2$c%2$c_main:%2$c	; second comment inside the _main function%2$c	push rbx%2$c	call print%2$c	pop rbx%2$c	ret%2$c", 0

section .text

print:
	push rbx
	mov rdi, string
	mov rsi, string
	mov rdx, 10
	mov rcx, 34
	call _printf
	pop rbx
	ret

_main:
	; second comment inside the _main function
	push rbx
	call print
	pop rbx
	ret
