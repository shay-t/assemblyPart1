segment .data 			;DS	
tab: db 8,10,5,6,7,20
resultat_add: dw 0
resultat_sub: dw 0
       ;..............
segment .bss                     ;SS
       ;..............
segment .text                    ;CS
global _main
extern _printf	
_main:                 		;partie1
_b100:	mov al,[tab] 		;1er element
_b150:	mov bl,[tab+2]          ;3eme element
_b200:	add al,bl               ;la somme
_b250:	mov [resultat_add],al   ;stocker le resultat dans la memoire
_b300:	mov esi,tab             ;partie2
_b350:	mov cl,[esi+1]         	;5eme element
_b400:	mov dl,[esi+4]          ;2eme element
_b450:  sub dl,cl
_b500:	mov [resultat_sub],dl
fin :
ret
       ;..............