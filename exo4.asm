segment .data 			;DS	
resultat dw 0
       ;..............
segment .bss                     ;SS
       ;..............
segment .text                    ;CS
global _main
extern _printf	
_main:
_b100: mov ax,150	 	;en utilisant adressage immediat
_b150: mov bx,140               ;en utilisant adressage immediat
_b200: add ax,bx                ;addition par adressage indirecte
_b250: mov [resultat],ax        ;stocker le resultat en memoire
fin :
ret
       ;..............