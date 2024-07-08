.MODEL SMALL
.STACK 100H

.DATA
A DW 7,5,3,2 
ANS DW 0

.CODE

MAIN PROC 
    MOV AX,@DATA
    
    MOV DS,AX
    
    LEA SI,A
   
    
    MOV CL,4 
    
    
    
    LOOP1: 
    
       MOV AX,1  
             
       MOV BH,0
             
       LOOP2:
       CMP CL,0
       JZ END
        
       CMP BH,CL
       JZ LOOP2_END  
       MOV DX,[SI]
       
       
       MUL DX
       INC BH
       
       JMP LOOP2
       
       LOOP2_END:
       ADD ANS,AX
       INC SI
       INC SI
       
       
        
     LOOP LOOP1  
     
     END:
        
    
        
        
    
    
    MAIN ENDP