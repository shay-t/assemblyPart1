segment .data 			;DS
info  dd  0xC084FEBA 		;declaration de la variable define double word code sur 32bit
	;..............
segment .bss                    ;SS
        ;..............
segment .text                   ;CS
global _main			;debut du programe reconnu par gcc
extern _printf                  ;etiquette vers une fonction extern printf
_main:	                        ;etiquette vers le debut du programme
     mov eax,0
     mov ebx,0
     mov ecx,0
     mov edx,0
_b100:	mov al,[info+1]
_b150:	mov cl,[info]
_b200:	mov bl,[info+3]
_b250:	mov ah,[info+2]
_b300:	mov ax,[info+2]
_b350:	mov dx,[info]
fin:
ret
        ;..............