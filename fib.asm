include irvine32.inc
;created by muhammad hassan
;DATA SEGMENT 
.data
output dword ?
comma byte ",",0
Msg byte "Fabnocci Series is: ",0
.code
main proc

mov edx,offset Msg
call writestring

	mov eax,0
	mov ebx,1
	mov ecx,10
	call Fab
	
exit
main endp

Fab Proc uses ecx
mov edx,offset comma

Lp:
	add eax,ebx
	mov output,eax
	call writedec
	call writestring
	
	mov eax,ebx
	mov ebx,output
	
	loop Lp
	call crlf
	ret

Fab endp
end main
