Include irvine32.inc
.data

msg_s byte "Eight bit is set",0
msg_c byte "Eight bit is clear",0

.code
main PROC

Mov AX, 0000000100000000b
bt AX,8 ; CF = bit 8
call dumpregs

jc L1 ; jump if Carry
mov edx, offset msg_c
call writestring
call crlf

L1:
mov edx, offset msg_s
call writestring
call crlf

exit
main ENDP
END main