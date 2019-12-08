include irvine32.inc

.data
star byte "*",0
space byte " ",0
temp dword 0
.code

main proc

mov ecx,5
L1:
	mov edx,offset star
	call writestring
	loop l1
call crlf

mov ecx,3

L2:
	call writestring
	mov temp,ecx
	mov ecx,3
L3:
	mov edx,offset space
	call writestring
	loop l3	
	mov edx,offset star
	call writestring
	call crlf
	mov ecx,temp
	loop l2	
	

mov ecx,5
L4:
	mov edx,offset star
	call writestring
	loop l4
call crlf
exit
main endp
end main