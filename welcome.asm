Include irvine32.inc
;-----------------DATA SEGMENT----------------------
.data
msg1 byte "Welcome to Assembly Language ",0

;-----------------CODE SEGMENT----------------------
.code
main Proc 

xor edx,edx

mov edx,Offset[msg1]  		;move the address of msg1 in EDX Reg
call writestring
call crlf


exit
main endp
End Main