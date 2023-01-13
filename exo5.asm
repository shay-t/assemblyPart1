 segment .data 			;DS
info_one: dd 10
info_two: dd 11
resultat: dd 0
       ;..............
segment .bss                     ;SS
       ;..............
segment .text                    ;CS
global _main
extern _printf	
_main:
_b1:mov eax,0                   ;initialiser
_b2:add eax,[info_one]
_b3: add eax,[info_one+4]		;adressage relatif
_b4:mov [resultat],eax 
fin :
ret
       ;..............