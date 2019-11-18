 
include irvine16.inc
;.model large
;.stack 100h
;.386 				;famiy name chip

.data

name_that_float db 26    	; characters in alaphabets'
db ? 	
db 26 dup (0) 

.code
main proc

mov ax,@data	; for data segment initiliazed
mov ds,ax      ;these two lines required for 16-bit programs

mov ah, 0ah 
mov dx , offest name_that_float
int 21h

mov si ,offset name_that_float +1 	; nuumbers of charactes you enterd from keyborad 
mov cl,[si] 				; mov lenghth  to CL reg
mov ch,0 				;clear ch to use CX
inc cx 
add si,cx
mov al, '$; 

; how to display the string  
;use the we used ah = 9h

mov ah,9
mov dx, offset name_that_float+2 	;it must end with the '$' sign at  the end 
int 21h
;-------------------------------------------------------------2 task (float the name in to and fro motion)
mov dh,10 				; it will correspond to the row in X-Axis ---> in dh reg
mov dl,20				; similarly used as dh ,,( dl in column on Y Axis)
call gotoxy				; call the library functions
call getmilliseconds 			; its for delay the program 


mov ah, 4ch
int21h


main en