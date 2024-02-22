name "hola-modificado"
org 100h

mov ax, 3
int 10h

mov ax, 1003h
mov bx, 0
int 10h

mov ax, 0b800h
mov ds, ax

mov [02h], 181
mov [04h], 'n'
mov [06h], 'g'
mov [08h], 'e'
mov [0ah], 'l'
mov [0ch], ' '
mov [0eh], 'L'
mov [10h], 'u'
mov [12h], 'n'
mov [14h], 'a'
mov [16h], ' '
mov [18h], 'L'
mov [1ah], 'u'
mov [1ch], 'g'
mov [1eh], 'o'

mov cx, 16
mov di, 03h
c: mov [di], 11101100b
add di, 2
loop c

mov ah, 0
int 16h

mov [0A2h], 'E'
mov [0A4h], 'J'
mov [0A6h], 'E'
mov [0A8h], 'M'
mov [0Aah], 'P'
mov [0Ach], 'L'
mov [0Aeh], 'O'

mov cx, 7
mov di, 0A3h

mov ax, 3
int 10h
mov ax, 0b800h
mov ds, ax
mov al, 2
mov bl, 8
add bl, al
mov cl, bl
mov al, 34
mov bl, 46
add bl, al
sub bl, cl
mov cx, 8

print:
mov ah, 2
mov dl, '0'
test bl, 10000000b
jz zero
mov dl, '1'

zero:
int 21h
shl bl, 1
loop print

mov dl, 'b'
int 21h

mov ah, 0
int 16h
ret
