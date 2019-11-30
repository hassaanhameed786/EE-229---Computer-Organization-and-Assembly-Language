Include Irvine32.Inc



.data
	msg byte "Enter something : ",0

	toEncrypt byte 50 DUP(?)		; string to take input
	inputChar dword ?			; number of characters in string
	encrypted byte 50 DUP(?)
	decrypted byte 50 DUP(?)

.code

encrypt PROC
	
	mov ecx, inputChar
	mov ebx, 0

	e:
		mov al, toEncrypt[ebx]
		rol al, 3
		mov encrypted[ebx], al

		inc ebx

	loop e
	ret
encrypt endp

decrypt proc 
	mov ecx, inputChar
	mov ebx, 0

	e:
		mov al, encrypted[ebx]
		ror al, 3
		mov decrypted[ebx], al

		inc ebx

	loop e
	ret

decrypt endp


main PROC

	mov edx, offset msg 
	call writestring

	; taking input
	mov edx, offset toEncrypt
	mov ecx, 50		
	call readstring 
	mov inputChar, eax	; moving lenght of characters read in inputChar

	call encrypt

	call crlf

	mov edx, offset encrypted
	call writestring

	call crlf 
	call decrypt
	mov edx, offset decrypted
	call writestring 


exit
main ENDP
end main