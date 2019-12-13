include irvine32.inc 
COUNT =5

.data 
array word 20 dup(0)
var byte 2 
save word 0


.code
main proc

mov ecx,Count
mov esi,offset array

L1:
	call readint
	mov [esi],al
	;add type ,esi
	inc esi
	loop L1

mov esi,0
mov esi,offset array
mov ecx,Count
mov eax,0
L2:
	
	mov ax,[esi]
	div var
	mov ah,0
	jne L3

loop L2
jmp next
L3:	
	add save,ax
	inc esi
	jmp l2
	
	call writeint
	
	
next:
	xor eax,eax
	movzx eax,save
	call writedec
	call crlf
	

exit
main endp
end main