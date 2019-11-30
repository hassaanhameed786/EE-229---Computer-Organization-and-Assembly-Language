include irvine32.inc

.data

var1 byte  "Enter a input a : "  ,0
var2 byte  "Enter an input b : " ,0
x  byte ?
y  byte ?

.code
main Proc
mov edx,OFFSET var1
call writestring
call readint
mov x,al

call crlf

mov edx,OFFSET var2
call writestring 		;call writestring function
call readint	        ;call read used as cout 
mov y,al			;move val of eax into x 

add al,12 			; add value of y with x
call writedec




exit
main endP
End main