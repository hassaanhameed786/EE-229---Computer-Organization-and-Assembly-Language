include irvine32.inc
MSG_COUNT= 20
MSG_SIZE =10



.data
msg byte MSG_SIZE DUP(0),0

.code
main proc


mov ecx,MSG_COUNT	;outer loop counter

L1:
	
push ecx	; push outer loop counter
mov ecx,MSG_SIZE	;inne loop counter
mov esi,offset msg

L2:

mov eax,26
call randomrange
add eax, 'A'
mov [esi],al
inc esi
loop L2

mov edx,offset msg
call writestring
call writeint
call crlf


pop ecx
loop L1

exit 
main endp
end main 