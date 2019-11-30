include irvine32.inc

.data
msg2 byte "Before shifting: ",0ah,0dh,0
msg byte "After Shifting : ",0ah,0dh,0
time byte "time: ",0ah,0dh
.code


DIVIDE PROC

	mov edx, offset msg2
	call writestring

	mov eax,1000b
	call writebin
	mov bl,0010b
	div bl

	call crlf
	
	mov edx, offset msg
	call writestring

	call writebin
	call crlf

	mov edx, offset time
	call writestring

	xor eax,eax
	call GetMseconds
	call writedec
	call crlf
	call crlf

	ret
DIVIDE ENDP


Multi PROC

	mov edx, offset msg2
	call writestring

	mov eax,1000b
	call writebin
	mov bl,0010b
	mul bl

	call crlf
	
	mov edx, offset msg
	call writestring

	call writebin
	call crlf

	mov edx, offset time
	call writestring

	xor eax,eax
	
	call GetMseconds
	call writedec
	call crlf
	call crlf

	ret
Multi ENDP




shift PROC

	mov edx, offset msg2
	call writestring


	mov eax, 1000b
	call writebin
	call crlf

	shr eax, 1

	mov edx, offset msg
	call writestring
	call writebin
	call crlf

	mov ebx, eax	

	mov edx, offset time
	call writestring

	call GetMseconds
	call writedec
	call crlf
	call crlf
		
	ret
shift ENDP


main PROC

	call shift

	call crlf
	call crlf

	call DIVIDE

	call crlf
	call crlf
	
	call multi
	
	call crlf
        call crlf
	
	
exit
main ENDP
END main