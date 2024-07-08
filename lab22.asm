           
lea si, arr1
lea di, arr2
mov cx,3

here:
mov bx,[si]
mov dx, [si]

lab:
mov ax, [di]

mul [si]

mov [di],ax

dec [si]
cmp [si], 1
jge lab 


add si,2 
add di,2

loop here 

ret        

arr1 dw 6,4,5
arr2 dw 3 dup(1)
