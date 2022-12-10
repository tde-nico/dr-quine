section .bss
buff: resb 30
buff_cmd: resb 100

section .data
str: db "section .bss%1$cbuff: resb 30%1$cbuff_cmd: resb 100%1$c%1$csection .data%1$cstr: db %2$c%3$s%2$c, 0%1$cflag: db %2$cF_OK%2$c, 0%1$coption: db %2$cw%2$c, 0%1$cfilename: db %2$cSully_%4$c1%5$cd.s%2$c, 0%1$ccommand: db %2$cnasm -felf64 %4$c1%5$cs -o Sully_%4$c2%5$cd.o && gcc -Wall -Wextra -Werror -m64 -no-pie Sully_%4$c2%5$cd.o -o Sully_%4$c2%5$cd && ./Sully_%4$c2%5$cd%2$c, 0%1$c%1$csection .text%1$cglobal main%1$cextern access%1$cextern fopen%1$cextern fclose%1$cextern fprintf%1$cextern sprintf%1$cextern system%1$c%1$c%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c	sub rsp, 64%1$c%1$c	mov byte[rbp - 8], %6$d%1$c	cmp byte[rbp - 8], -1%1$c	jle .end%1$c%1$c	lea rdi, [rel buff]%1$c	lea rsi, [rel filename]%1$c	movzx rdx, byte[rbp - 8]%1$c	call sprintf%1$c%1$c	lea rdi, [rel buff]%1$c	lea rsi, [rel flag]%1$c	call access%1$c%1$c	cmp rax, 0%1$c	je .dec%1$c	jmp .open%1$c%1$c%1$c.dec:%1$c	sub byte[rbp - 8], 1%1$c%1$c.open:%1$c	lea rdi, [rel buff]%1$c	lea rsi, [rel filename]%1$c	movzx rdx, byte[rbp - 8]%1$c	call sprintf%1$c%1$c	lea rdi, [rel buff]%1$c	lea rsi, [rel option]%1$c	call fopen%1$c%1$c	mov [rbp - 16], rax%1$c%1$c.print:%1$c	mov rdi, rax%1$c	lea rsi, [rel str]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel str]%1$c	mov r9, 37%1$c	mov byte[rbp - 64], 36%1$c	movzx r10, byte[rbp - 8]%1$c	sub r10, 1%1$c	mov [rbp - 56], r10%1$c	call fprintf%1$c%1$c.close:%1$c	mov rdi, [rbp - 16]%1$c	call fclose%1$c%1$c.print_cmd:%1$c	lea rdi, [rel buff_cmd]%1$c	lea rsi, [rel command]%1$c	lea rdx, [rel buff]%1$c	movzx rcx, byte[rbp - 8]%1$c	call sprintf%1$c%1$c	lea rdi, [rel buff_cmd]%1$c	call system%1$c%1$c.end:%1$c	add rsp, 64%1$c	leave%1$c	ret%1$c", 0
flag: db "F_OK", 0
option: db "w", 0
filename: db "Sully_%1$d.s", 0
command: db "nasm -felf64 %1$s -o Sully_%2$d.o && gcc -Wall -Wextra -Werror -m64 -no-pie Sully_%2$d.o -o Sully_%2$d && ./Sully_%2$d", 0

section .text
global main
extern access
extern fopen
extern fclose
extern fprintf
extern sprintf
extern system


main:
	push rbp
	mov rbp, rsp
	sub rsp, 64

	mov byte[rbp - 8], 5
	cmp byte[rbp - 8], -1
	jle .end

	lea rdi, [rel buff]
	lea rsi, [rel filename]
	movzx rdx, byte[rbp - 8]
	call sprintf

	lea rdi, [rel buff]
	lea rsi, [rel flag]
	call access

	cmp rax, 0
	je .dec
	jmp .open


.dec:
	sub byte[rbp - 8], 1

.open:
	lea rdi, [rel buff]
	lea rsi, [rel filename]
	movzx rdx, byte[rbp - 8]
	call sprintf

	lea rdi, [rel buff]
	lea rsi, [rel option]
	call fopen

	mov [rbp - 16], rax

.print:
	mov rdi, rax
	lea rsi, [rel str]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel str]
	mov r9, 37
	mov byte[rbp - 64], 36
	movzx r10, byte[rbp - 8]
	sub r10, 1
	mov [rbp - 56], r10
	call fprintf

.close:
	mov rdi, [rbp - 16]
	call fclose

.print_cmd:
	lea rdi, [rel buff_cmd]
	lea rsi, [rel command]
	lea rdx, [rel buff]
	movzx rcx, byte[rbp - 8]
	call sprintf

	lea rdi, [rel buff_cmd]
	call system

.end:
	add rsp, 64
	leave
	ret
