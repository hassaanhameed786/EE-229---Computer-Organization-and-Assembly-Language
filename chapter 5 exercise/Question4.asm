;Write a program that clears the screen, locates the cursor near the middle of the screen, prompts
;the user for two integers, adds the integers, and displays their sum.

Include irvine32.inc
.DATA 
prompt1 byte "Enter a integer :",0
display_sum byte "The sum of integers are : ",0
num1 dword ?
num2 dword ?

Sum dword 0
row byte 10
col byte 20


.CODE
MAIN PROC 

call clrscr
xor eax,eax
xor ebx,ebx
xor edx,edx

mov ecx,3
mov sum,0

L1:
mov  dh,row	;use for rows	
mov  dl,col	;use for colums
call Gotoxy
mov edx,offset prompt1
call writestring
call Readint
add sum,eax
loop l1

;display their sum 

mov  dh,10
mov  dl,col
call Gotoxy
mov edx,offset display_sum
call writestring
mov eax,sum
call writedec

call crlf
call crlf


EXIT 
MAIN ENDP
END MAIN