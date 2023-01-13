segment .data 			;DS	
var dw 10
       ;..............
segment .bss                     ;SS
       ;..............
segment .text                    ;CS
global _main
extern _printf	
_main:
_b100:	mov eax,ebx 		;adressage registre
_b150:	mov ebx,9               ;adressage immediat
_b200:	mov eax,[var]           ;adressage direct
_b250:	mov eax, var            ;adressage relatif
_b300:	mov eax,[ebx]           ;adressage indirect(ou base)	
fin :
ret
       ;..............