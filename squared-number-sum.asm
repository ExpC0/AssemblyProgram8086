.MODEL SMALL
.STACK 100H

.DATA
ANS DW 0

.CODE

MAIN PROC 
    MOV AX,@DATA
    
    MOV DS,AX
    
    
   
    
    MOV BX,1
    
    
    LOOP1:
     
        
        CMP BX,5
        JZ END_LOOP1 
        
        
        MOV AX,BX
        MUL BX
        
        INC BX 
        ADD ANS,AX
     
        JMP LOOP1
        
        END_LOOP1:
        
    
        
        
    
    
    MAIN ENDP