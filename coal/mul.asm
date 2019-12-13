include irvine32.inc
.data 

dword1 dword 0

.code
main proc 
xor eax,eax
xor ebx,ebx

;-------------MUL---------------------
mov al,3
mov bl,5

mul bl

call writedec
call crlf


;---------------------------------
xor eax,eax
xor ebx,ebx

mov ax,2
mov bx,20

mul bx
call writedec
call crlf



;-------------IMUL---------------------
;mov al,-4
;mov bl,4
;imul bl
;--------------------------

;mov al,48
;mov bl,4
;imul bl
;call writehex
;call crlf

;call writebin
;call crlf

;----------------------------------
xor eax,eax
xor ebx,ebx

mov ax,-16 	; AX = -16
mov bx,2 	; BX = 2
imul bx,ax

call writehex
call crlf

;----------------------------------
xor eax,eax
xor ebx,ebx

mov eax,-16 		; EAX = -16
mov ebx,2		 ; EBX = 2
imul ebx,eax		 ; EBX = -32
imul ebx,2 		; EBX = -64
imul ebx,dword1

call crlf
call writehex

;----------------------------------
xor eax,eax
xor ebx,ebx

exit 
main endp
end main