include irvine32.inc

.data

msg  byte "hello world",0
mesg_size = ($ -msg)-1

.code
main proc

mov ecx,mesg_size
mov esi,0

;push name of the stcak 

L1:
	movzx eax,msg[esi]
	push eax
	inc esi
	loop L1

;pop the name of the stack 


mov ecx,mesg_size
mov esi,0	

L2:
	pop eax
	mov msg[esi],al
	inc esi
	loop L2
	
; pirnt the name

mov edx,offset msg
call writestring
call crlf

exit
main endp
end main 