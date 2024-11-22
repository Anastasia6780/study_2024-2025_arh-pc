%include 'in_out.asm'
section .data
	msg1 db 'Введите B: ',0h
	msg2 db "Наибольшее число: ",0h
	A dd '20'
	C dd '50'
section .bss
	max resb 10
	B resb 10
section .text
	global _start
_start:

	mov eax,msg1
	call sprint
	
	mov ecx,B
	mov edx,10
	call sread

	mov eax,B
	call atoi 
	mov [B],eax 
	mov ecx,[A] 
	mov [max],ecx 

	cmp ecx,[C] ; Сравниваем 'A' и 'С'
	jg check_B ; если 'A>C', то переход на метку 'check_B',
	mov ecx,[C] ; иначе 'ecx = C'
	mov [max],ecx ; 'max = C'

check_B:
	mov eax,max
	call atoi 
	mov [max] ; удален операнд eax

	mov ecx,[max]
	cmp ecx,[B] ; Сравниваем 'max(A,C)' и 'B'
	jg fin ; если 'max(A,C)>B', то переход на 'fin',
	mov ecx,[B] ; иначе 'ecx = B'
	mov [max],ecx

fin:
	mov eax, msg2
	call sprint 
	mov eax,[max]
	call iprintLF 
	call quit
