
include irvine32.inc

.data
X byte 0

.code
main proc
mov ebx,11
mov ecx,10

cmp ebx,ecx
jg L1

L1:	
	mov X,1

mov edx,9
cmp edx,ecx
jge L2
jmp L3


L2:
	mov X,1
L3:
	mov X,2

exit
main endp
end main