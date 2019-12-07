include irvine32.inc
 
.data
 
value_1 byte  10,20,2,30,90
msg1 byte "the maximum value is",0
MSG2 BYTE "THE minimum value is ",0
Maximum byte 0
Minimum byte 0

.code

main proc
xor ecx,ecx
xor eax,eax
xor edx,edx

mov edx, offset value_1
mov ecx,lengthof value_1

 
call Maximum_


mov maximum,al


call writeint
 
xor ecx,ecx
xor eax,eax
xor edx,edx
mov edx, offset value_1
mov ecx,lengthof value_1
call minimum_
mov minimum,al
call writeint
 
exit
main endp

;--------------------------Maximum_ proc-------------------------

 
Maximum_ proc
mov al,[edx]
L:
 
cmp al,[edx]
jb swap
back_4:
inc edx
loop L
jmp back
swap:
mov al,[edx]
jmp back_4
 
back:
ret
maximum_  endp
 
 
;-------------------------Minimum_ proc-------------------------- 
 
Minimum_ proc
mov al,[edx]
L:
inc edx
cmp al,[edx]
ja swap
loop L
jmp back
swap:
mov al,[edx]
dec ecx
jmp L
 
back:
ret
minimum_  endp

end main