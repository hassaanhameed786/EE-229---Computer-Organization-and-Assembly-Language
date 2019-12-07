Title calculate sum of array elements
include irvine32.inc
.data 

array dword 10,20,60,50,33,72,89,45,65,72,18
sample dword 50 dup(0)
arraysize = ($- array)/type array	; size of array ($-arr)/ 4 
sum dword 0

.code 
main proc

mov eax,0
mov esi,0
mov edx,sample 
mov ecx,arraysize
L1:
	cmp array[esi],ecx
	jb L2
	jmp L5
L2:
	cmp array[esi*4],edx
	jg L3
	jmp L4
	
L3:	
	add eax,array[esi]
L4:
	inc esi 
	jmp L1

L5:
	call crlf
	mov sum,eax


exit
main endp
end main 