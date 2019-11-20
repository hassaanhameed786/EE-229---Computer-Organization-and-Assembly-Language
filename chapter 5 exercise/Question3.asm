;Write a program that clears the screen, locates the cursor near the middle of the screen, prompts
;the user for two integers, adds the integers, and displays their sum.
Include irvine32.inc
.DATA 
prompt1 byte "Enter a first integer :",0
prompt2 byte "Enter a Second Interger :",0
display_sum byte "The sum of integers are : ",0
num1 dword ?
num2 dword ?
Sum byte 0



.CODE
MAIN PROC 

call clrscr
xor eax,eax
xor ebx,ebx
xor edx,edx


mov  dh,10	;use for rows	
mov  dl,20	;use for colums
call Gotoxy
mov edx,offset prompt1
call writestring
call Readint
mov num1,eax

mov  dh,12
mov  dl,20
call Gotoxy
mov edx,offset prompt2
call writestring
call Readint
add eax,num1

;display their sum 

mov  dh,14
mov  dl,20
call Gotoxy
mov edx,offset display_sum
call writestring
call writedec

call crlf
call crlf


EXIT 
MAIN ENDP
END MAIN