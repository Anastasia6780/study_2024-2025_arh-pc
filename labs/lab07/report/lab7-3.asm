%include 'in_out.asm'

section .data
	msg1 db 'Введите A: ',0h
	msg2 db 'Введите B: ',0h
	msg3 db 'Введите C: ',0h
	msg4 db "Наименьшее число: ",0h
section .bss
	min resb 10
	A resb 10
	B resb 10
	C resb 10
section .text
	global _start
_start:
; ---------- Вывод сообщения А
	mov eax,msg1
	call sprint
; ---------- Ввод А
	mov ecx,A 
	mov edx,10
	call sread	
; ---------- Перевод А в число
	mov eax, A
	call atoi
	mov [A],eax
; ---------- Вывод сообщения В
	mov eax,msg2
	call sprint
; ---------- Ввод В
	mov ecx,B
	mov edx,10
	call sread
; ---------- Перевод В в число
	mov eax, B
	call atoi
	mov [B],eax
; ---------- Записываем А в мин	
	mov ecx,[A]
	mov [min],ecx ; А мин
	mov ecx,[min]
; ---------- Сравниваем А и В как символы
	cmp ecx,[B] ; сравниваем А и В
	jl check_C ; если А меньше В переходим к check_C 
	mov ecx,[B] ; иначе В в ecx
	mov [min],ecx ; В мин
	
check_C:
; ---------- Вывод сообщения С	
	mov eax,msg3
	call sprint
; ---------- Ввод С
	mov ecx,C
	mov edx,10
	call sread
; ---------- Перевод С в число
	mov eax, C
	call atoi
	mov [C],eax
	
	mov ecx,[min]
	cmp ecx,[C] ; сравниваем мин(А,В) и С
	jl fin ; если мин(А,В) меньше С переходим к fin
	mov ecx,[C] ; иначе С в ecx
	mov [min],ecx ; С мин

fin:
	mov eax, msg4
	call sprint ; вывод сообщения
	mov eax,[min]
	call iprintLF 
	call quit
