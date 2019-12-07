include irvine32.inc

.data 

.code
main proc 

mov eax,0
.repeat
inc eax
call writedec
call crlf
.until eax == 10

exit
main endp
end main