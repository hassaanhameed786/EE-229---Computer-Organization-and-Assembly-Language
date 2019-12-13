include irvine32.inc
.data 
charVal byte 'M'
.code 
Uppercase PROC
push ebp
mov ebp,esp
mov al,[esp+8] ; AL = character
cmp al,'a' ; less than 'a'?
jb L1 ; yes: do nothing
cmp al,'z' ; greater than 'z'?
ja L1 ; yes: do nothing
sub al,32 ; no: convert it
L1: pop ebp
ret 4 ; clean up the stack
Uppercase ENDP


main proc
movzx eax,charVal
push eax		
call Uppercase
call writechar

exit
main endp
end main 

