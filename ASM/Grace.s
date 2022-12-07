
section .data

str:
	db "%1$csection .data%1$c%1$cstr:%1$c	db %2$c%3$s%2$c, 0%1$c%1$cfilename:%1$c	db %2$cGrace_kid.s%2$c, 0%1$c%1$coption:%1$c	db %2$cw+%2$c, 0%1$c%1$c%1$csection .text%1$c%1$cglobal main%1$cextern fopen%1$cextern fprintf%1$c%1$c%4$cmacro MAIN 0%1$c%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 16%1$c%1$c	lea rdi, [rel filename]%1$c	lea rsi, [rel option]%1$c	call fopen%1$c%1$c	mov rdi, rax%1$c	lea rsi, [rel str]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel str]%1$c	mov r9, 37%1$c	mov byte[rbp - 16], 59%1$c	call fprintf%1$c%1$c	add rsp, 16%1$c	leave%1$c	ret%1$c%1$c%4$cendmacro%1$c%1$cMAIN%1$c", 0

filename:
	db "Grace_kid.s", 0

option:
	db "w+", 0


section .text

global main
extern fopen
extern fprintf

%macro MAIN 0

main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	lea rdi, [rel filename]
	lea rsi, [rel option]
	call fopen

	mov rdi, rax
	lea rsi, [rel str]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel str]
	mov r9, 37
	mov byte[rbp - 16], 59
	call fprintf

	add rsp, 16
	leave
	ret

%endmacro

MAIN
