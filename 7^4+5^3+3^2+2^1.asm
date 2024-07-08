.MODEL SMALL
.STACK 100H

.DATA
A DW 7,5,3,2
ANS DW 0

.CODE

MAIN PROC 
    MOV AX,@DATA
    
    MOV DS,AX
    
     MOV CL,4 
     LEA SI,A
     
     LOOP1: 
     CMP CL,0
     JZ END
     
     MOV BH,0
     MOV AX,1
  
    LOOP2:
         CMP CL,BH
         JZ END_LOOP2  
        
        MOV DX,[SI]
        
        MUL DX
        INC BH
        
        JMP LOOP2
        
          END_LOOP2:
          ADD ANS,AX
          INC SI
          INC SI
          
     
     LOOP LOOP1
     END: 
   
     
    
    
    
    MAIN ENDP