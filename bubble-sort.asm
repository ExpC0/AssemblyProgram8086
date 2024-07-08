
.MODEL SMALL

.STACK 100H

.DATA
A DB 3,5,4,-8,-10  

.CODE  


MAIN PROC
    
MOV AX,@DATA
MOV DS,AX

MOV CL,4 



LOOP1:
          CMP CL,0
          JZ END1 
          
          LEA SI,A
          MOV BH,4
          
          
          LOOP2: 
          
          CMP BH,0
          JZ END2
          
          MOV BL,[SI]
          
          CMP BL,[SI+1]
          JG EXCG 
           
         CONTINUE:
          
          INC SI
          DEC BH
          JMP LOOP2
           
     
          
          EXCG: 
         
          XCHG BL,[SI+1]
          MOV [SI],BL 
          JMP CONTINUE
          
         
          
          END2:
                           
          






LOOP LOOP1
            
END1:            

MAIN ENDP
END MAIN




