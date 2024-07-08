.model small
.stack 100h

.data
str1 db "*$"
str2 db 13,10,"**$"
str3 db 13,10,"***$"


.code

main proc 
    mov ax,@data
    mov ds,ax
    
    
    
    call print   
    
    main endp
    
    print proc 
        
        lea dx,str1
        mov ah,09h
        
        int 21h
        
        lea dx,str2
        int 21h 
        
        lea dx,str3
        int 21h
        
    print endp
    
        
    
