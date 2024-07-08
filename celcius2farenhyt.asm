; celsious to farenhyte

org 100h

.data

F dw ?

.code

mov ax,@data
mov ds,ax

mov ax,37

mov bx,9

mul bx
mov bx,5

div bx
 
add ax,32


mov F,ax

ret




