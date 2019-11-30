include irvine32.inc


.data
expo  byte ?
exponn byte "Enter the value of exponent :",0
base byte ?
basenn byte "Enter the value of base :",0


.code
main proc
mov eax,0
mov edx,offset exponn
call writestring
call readint

mov expo,al
mov eax,0

mov edx,offset basenn
call writestring
call readint

mov base,al

movzx ecx,expo
mov al,1
l1:

mul base

loop l1

call writeint
call crlf
exit
main endp
end main