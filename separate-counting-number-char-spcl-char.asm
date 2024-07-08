cmp al,'3'
jz num
cmp al,'4'
jz num
cmp al,'5'
jz num
cmp al,'6'
jz num
cmp al,'7'
jz num
cmp al,'8'
jz num
cmp al,'9'


cmp al,65
jge alph1

cmp al,122
jle alph2 
 


jmp while 

num:
inc digit
jmp while 



alph:
inc alphabet 
jmp while

alph1:
cmp al,122
jle alph 
jmp while 

alph2:
cmp al,65
jge alph 
jmp while 



exit: 

mov bh,count
sub bh,alphabet
sub bh,digit

mov spcl_char,bh

main endp 
end main


