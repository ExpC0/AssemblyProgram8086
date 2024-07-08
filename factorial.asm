;factorial of a number


org 100h
 .data
 ans dw ?
.code
main proc 
        mov ax,@data
        mov ds,ax
        
        mov cx,5 
        mov ax,1
        label:
        mul cx
        loop label
        mov ans,ax
    
    ret




