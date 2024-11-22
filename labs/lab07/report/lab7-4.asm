%include 'in_out.asm'

section .data
	msg1 db 'Введите значение переменной x: ',0h
	msg2 db 'Введите значение переменной a: ',0h
	msg3 db 'Ответ: ',0h
	
section .bss
	X resb 10
	A resb 10
	F resb 10
	section .text
	global _start	
	_start:
	
	mov eax,msg1
	call sprint
	
	mov ecx,X
	mov edx,10
	call sread
	
	mov eax,X
	call atoi 
	mov [X],eax 
	
	mov eax,msg2
	call sprint
	
	mov ecx,A
	mov edx,10
	call sread
	
	mov eax,A
	call atoi 
	mov [A],eax
	
	mov ecx,[X]
	cmp ecx,[A]
	jl Uravnenie
	mov ecx,8
	mov [F],ecx
	jmp fin
	
	Uravnenie:
	mov eax,[A]
	mov ebx,2
	mul ebx
	sub eax,[X]
	mov [F],eax
	
	fin:
	mov eax,msg3
	call sprint
	mov eax,[F]
	call iprintLF
	call quit
	
