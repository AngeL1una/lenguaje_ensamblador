name "hola-mundo"
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
ret
