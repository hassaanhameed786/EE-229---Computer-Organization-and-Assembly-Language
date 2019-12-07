include irvine32.inc

;--------------DATA SEGMENT-----------------------------------

.data
a sbyte +128
b sbyte -127
var sbyte -1       ; i use "var" instead of C 
temp byte 0

msg1 byte "the addition result is : ",0
msg2 byte "the multiplication result is : " ,0


addResult byte 0
mulResult byte 0

MYARRAY byte 20 dup(0)

;------------------;CODE SEGMENT--------------------------------
.code
main proc 
;how to make a swap function


xor eax,eax
xor ebx,ebx

;-------------------------addition result--------------------------
mov al,b
add bl,var
mov addResult,bl
call crlf

MOV EDX,OFFSET msg1
CALL WRITESTRING
call writedec

;-------------------------multiplication result-------------------

xor eax,eax
xor ebx,ebx


mov al,a
mul var 					 ; this is the syntax of  multiplcation
mov mulResult,bl
call crlf

MOV EDX,OFFSET msg2
CALL WRITESTRING
call writedec
;------------------------Swap Function------------------------------

xor eax,eax
xor ebx,ebx

mov al,a
mov temp,al
mov bl,b
mov al,bl

mov al,temp
mov temp,0

call crlf
call writedec
call crlf
mov al,a
call writedec
call crlf







 exit 
 main ENDP
 end main
 
