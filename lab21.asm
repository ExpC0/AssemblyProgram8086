


mov bx,0
mov cx,4

lea si, arr

here:
mov ax,[si]
mul [si]
mul [si]
add bx,ax
inc si
loop here
ret        
arr db 1,4,5,6