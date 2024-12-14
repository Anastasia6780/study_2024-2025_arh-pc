%include 'in_out.asm'

SECTION .data
file db 'name.txt', 0h
msg1 db 'Как Вас зовут? ', 0h
msg2 DB 'Меня зовут:',0

SECTION .bss
contens resb 2550

SECTION .text
global _start
_start:

mov eax,msg1
call sprint

mov ecx,contens
mov edx,2550
call sread

mov ecx,0777o
mov ebx,file
mov eax,8
int 80h

mov esi,eax

mov eax,msg2
call slen

mov edx,eax
mov ecx,msg2
mov ebx,esi
mov eax,4
int 80h

mov eax,contens
call slen

mov edx,eax
mov ecx,contens
mov ebx,esi
mov eax,4
int 80h

mov ebx,esi
mov eax,6
int 80h

call quit
