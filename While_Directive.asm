Title print 10 intergers using while directive
include irvine32.inc

.data
X byte 0

.code
main proc
mov eax,0
.While eax <10
inc eax
call writedec
call crlf
.ENDW

exit
main endp
end main