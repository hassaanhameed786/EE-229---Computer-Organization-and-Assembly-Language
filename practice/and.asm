;How to convert the characters lowercase into uppercase 
include irvine32.inc

.data 
msg byte "assembly",0
msg_size = ($-msg)-1

.code 
main proc

mov ecx,msg_size
mov esi,offset msg

L1: 
and byte ptr[esi],11011111b
inc esi
loop L1

mov edx,offset msg 
call writestring
call crlf


exit
main endp
end main