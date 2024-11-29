%include 'in_out.asm'

SECTION .data
msg DB 'Результат: ',0
SECTION .text
GLOBAL _start
_start:
pop ecx

pop edx

sub ecx,1

mov esi,0

next:
cmp ecx,0
jz _end

mov ebx,2
pop eax
call atoi
mul ebx

add eax,15

add esi,eax

loop next

_end:
mov eax,msg
call sprint
mov eax,esi
call iprintLF
call quit
