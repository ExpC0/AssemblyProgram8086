.model small
.stack 100h

.data

src db 'we love kuet$'  
des db 13 dup(?)


.code 


main  proc
   
    mov ax,@data
    mov ds,ax
    
    mov si,offset src
    mov di,offset des  
    
    ;pushing as flag
    
    mov bx,'*'
    push bx 
    
    
   for:
   mov ax,[si] 
   inc si
   
   cmp al,'$'
   jz poop
   
   ;don't push space to avoid difficulty
   
   cmp al,' '
   jz poop
    
   push ax
 
   jmp for
   
   
   
   poop: 
   
   pop bx 
  
   ;pop until getting that flag
   
   cmp bl,'*'
   jz down
   
   ;moving char to new string
   
   mov [di],bl
   inc di
  
   jmp poop
   
  
   down:
   ; after popping all putting space
   mov [di],' '
   inc di
    
   ;don't change al to get exit condition at last
    
   cmp al,'$'
   jz exit
   
   ;reseting flag
    
   mov bx,'*'
   push bx 
   
   jmp for
   
   
  

    exit: 
     
    ;display
    
    mov [di],'$'
    mov dx,offset des
    mov ah,9
    int 21h
    
main endp
end main
   
