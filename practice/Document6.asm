INCLUDE IRVINE32.INC

.DATA 
msg byte "enter a  Number to Find a factorial :",0
msgg byte "factorial = ",0
FAC DWORD ?

.CODE
MAIN PROC

mov eax,0
mov edx,offset msg
call writestring
call readint


mov FAC,eax
mov eax,1
mov ecx,fac
l1:
	mul fac
	dec fac
	loop l1
	
mov edx,offset msgg
call writestring
call writedec
	
EXIT
MAIN ENDP
END MAIN