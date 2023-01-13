segment .data 			;DS
a dw 10 			;declaration de la variable
	;..............
segment .bss                    ;SS
        ;..............
segment .text                   ;CS
global _main			;debut du programe reconnu par gcc
extern _printf                  ;etiquette vers une fonction extern printf
_main:	                        ;etiquette vers le debut du programme
_b100:	mov eax ,10
_b150:	mov eax ,a
_b200:	mov ebx,eax
fin:
ret
				;..............