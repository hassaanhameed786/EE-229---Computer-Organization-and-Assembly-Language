Title compare the destination and source operands
include irvine32.inc

.data
msg1 byte "print mesg when des < src",0
msg2 byte "print mesg when des > src",0
msg3 byte "print mesg when des = src",0
.code
main proc 

mov al,5
cmp al,10
jb L1
call dumpregs	

mov al,10
cmp al,5
ja L2

mov al,10
cmp al,10
jmp L3


L1:
 call crlf
 mov edx, offset msg1
 call writestring

L2:
 call crlf
 call crlf
 mov edx, offset msg2
 call writestring
 
 L3:
  call crlf
  call crlf
  mov edx, offset msg3
 call writestring

exit
main endp
end main