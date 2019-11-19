; This program prompts the user for three integers,
; stores them in an array, calculates the sum of the
; array, and displays the sum.
INCLUDE Irvine32.inc
Couter = 3
.data

msg1 byte "Enter a Signed integer : ",0
array dword 3 dup(?)
msg2 byte "The sum of array is : ",0

.code

main PROC
	call Clrscr

	mov ecx,Couter
	mov esi,offset array
	call PromptForIntegers
	call ArraySum

call DisplaySum


exit
main ENDP
;-----------------------------------------------------
PromptForIntegers PROC uses ecx edx esi		

mov edx,offset msg1

l1:
	call writestring
	call readint
	call crlf
	mov [esi],eax
	add esi,Type dword
	loop l1
ret
PromptForIntegers ENDP

;-----------------------------------------------------
ArraySum PROC uses ecx esi	

mov eax,0
l1:
	add eax,[esi]
	add esi,type array
	loop l1
ret

ArraySum ENDP

;-----------------------------------------------------
DisplaySum PROC uses edx

mov edx, offset msg2	

	call writestring
	call writeint

ret
DisplaySum ENDP

END main