include irvine32.inc
;created by muhammad hassan
;DATA SEGMENT 
.data

;--------------factorial function ------------------------
	
	msg BYTE "Enter Number : ", 0
	msg2 BYTE "Factorial is : ", 0
	userVal DWORD ?
	ans DWORD 1
	count DWORD 1


;--------------power function ------------------------


msg1 byte "Enter exponent : ", 0
	msg2 byte "Enter power : ",0
	val1 DWORD ?
	val2 DWORD ?
	msg3 byte "Answer is : ", 0
;--------------Swap function ----------------------------------------

msg byte "Number 1 : ",0ah,0dh,0
msg1 byte "Number 2 : ",0ah,0dh,0


num1 dword ?
num2 dword ?
;--------------------------------------------------------------------


;CODE SEGMENT 
.code 

factorial proc


	xor eax, eax

	mov edx, OFFSET msg
	call WRITESTRING

	call readInt
	mov userVal, eax

	mov ecx, userVal
	mov al, 1

	xor eax, eax
	xor ebx, ebx
	mov ebx, 1
	mov eax, 1

fact:
	
	mov ebx, ecx
	call writedec
	call crlf
	mul ebx

loop fact

	
	mov edx, OFFSET msg2
	;mov eax, ans
	call writestring
	call writedec


ret
factorial endp



;---------------------------------
power proc

xor eax, eax
	xor edx, edx
	
	mov edx, OFFSET msg1
	call writestring
	call readint

	mov val1, eax

	mov edx, OFFSET msg2
	call writestring
	call readint

	mov val2, eax

	mov ecx, val2

	mov eax, 1

L1:

	mul val1

	loop l1

	mov edx, OFFSET msg3
	call writestring
	call writedec


ret
power endp

;-----------------------------------------------------------------
swap proc 

mov edx, Offset msg
call writestring


call readint
mov num1,eax


mov edx, Offset msg1
call writestring


call readint
mov num2,eax


xchg num1,eax

mov num2,eax


xor eax,eax


mov eax,num1
mov edx, Offset msg
call writestring
call writedec

call crlf


xor eax,eax

mov edx, Offset msg1
call writestring
mov eax,num2
call writedec

call crlf

ret

swap endp
;------------------------------------------------------------------------------------------------------


main proc

call factorial 
call power
exit
main endp
end main