INCLUDE Irvine32.inc
.data
string_1 BYTE "abcdef",0
string_2 BYTE "aB234cdEfg",0
.code
main PROC
call Clrscr
INVOKE Str_ucase,ADDR string_1
INVOKE Str_ucase,ADDR string_2
mov edx, OFFSET string_1
call writestring
call crlf
mov edx, OFFSET string_2
call writestring
call crlf
exit
main ENDP
END main