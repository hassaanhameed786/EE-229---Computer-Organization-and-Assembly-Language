Title program to that tells the user if a given number is even or odd	
include irvine32.inc
.data
msg   byte "Even Number",0
msg2  byte "Odd Number ",0
str1  byte "Enter a Number :",0
num1 byte 0

.code
main proc

call tell_even_or_not

main endp

tell_even_or_not proc
xor eax,eax
xor ebx ,ebx

mov edx,offset str1
call writestring

call readint 
mov num1,al

;mov al,59 ;cheking the number
mov bl,2 

div bl
cmp ah,0
je yes_even	;jump if equal to label	yes_even
jne not_even	;jump if not equal to label	yes_even

yes_even:
	mov edx,0
	mov edx,offset msg
	call writestring
	call crlf
	
	jmp next
not_even:
	mov edx,0
	mov edx,offset msg2
	call writestring
	call crlf
next:
	;ret
tell_even_or_not endp

end main