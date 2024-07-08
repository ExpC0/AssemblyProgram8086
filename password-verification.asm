.model small
.stack 100h
.data
   
    msg db 'Enter password:$'
    pass db 'raduan'
    cnt dw 6
    str1 db 'Password Verified!$'
    str2 db 'Invalid Password$'
    
    
.code 
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx,cnt 
    
    mov ah,09h
    mov dx,offset msg
    int 21h
    
    mov bx,offset pass
    
    begin:
        mov ah,08
        int 21h
        cmp al,[bx]
        jnz go
        inc bx
        
        loop begin
        
   mov dx,offset str1
   mov ah,9
   int 21h
   jmp over:
         
        
        
        
   go:
      mov dx,offset str2
      mov ah,09
      int 21h
      
   over:
      
      
main endp
end main
   
