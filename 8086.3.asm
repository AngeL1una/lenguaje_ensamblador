.MODEL SMALL
.STACK 100h

CR EQU 13
LF EQU 10

.DATA
TEXTO DB 181,'NGEL LUNA LUGO$', CR, LF 

.CODE
MOV AX, SEG TEXTO
MOV DS, AX
LEA AX, TEXTO
MOV AH, 9
INT 21h
MOV AH, 4ch
INT 21h
END