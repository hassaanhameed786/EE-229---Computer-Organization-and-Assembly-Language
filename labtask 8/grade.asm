include irvine32.inc
.data


str1 byte "Enter the Number: ",0
str2 byte "The grade is: ",0
str3 byte "Invalid entry",0
var1 byte 0

grad1 byte 'A'
grad2 byte 'B'
grad3 byte 'C'
grad4 byte 'D'
grad5 byte 'F'

.code
main proc

xor eax,eax
mov edx,offset str1
call writestring

call readint

cmp al,100
je L1
ja l7
cmp al,90
jae L1



cmp al,89
je L2

cmp al,80
jae L2


cmp al,79
je L3

cmp al,70
jae L3


cmp al,69
je L4

cmp al,60
jae L4

cmp al,59
je L5

cmp al,0

jae L5
jb L8
L1:

mov edx,offset str2
call writestring

mov al,grad1
call writechar
call crlf
exit


L2:

mov edx,offset str2
call writestring

mov al,grad2
call writechar
call crlf

exit

L3:
mov edx,offset str2
call writestring

mov al,grad3
call writechar
call crlf
exit

L4:
mov edx,offset str2
call writestring

mov al,grad4
call writechar
call crlf
exit

L5:

mov edx,offset str2
call writestring

mov al,grad5
call writechar
call crlf
exit

L7:

mov edx,offset str3
call writestring

call crlf
exit
L8:
mov edx,offset str3
call writestring
call crlf
exit

exit
main endp
end main