;write a program to add the two numbers
include irvine32.inc
;.model medium 
;.stack 100h
-------------------------------DS--------------------------------
.data
num1 Sbyte -1
num2 Sbyte 3
sum byte 0
msg byte "The sum  of two variables num1 and num2 : ",0 


-------------------------------CS--------------------------------
.code

main PROC 
xor eax,eax 		; clear the registers with garbage values
xor ebx,ebx
mov al,num1
mov bl,num2
add al,bl
mov sum,al 

mov edx,OFFSET[msg]
call writestring
call writedec

exit
main endP
END MAIN

