INCLUDE IRVINE32.INC
.DATA
 msg byte "hello world",0

.CODE
MAIN PROC

mov eax,White +(blue*16)
mov ecx,4 

L1:	call settextcolor
	mov edx,offset msg
	call writestring
	call crlf
	mov eax,2
	loop L1


EXIT
MAIN ENDP
END MAIN