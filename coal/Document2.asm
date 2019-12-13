include irvine32.inc
.data
dwordVal SDWORD +50000
.code
main proc

mov eax,dwordVal ; dividend, low
cdq ; extend EAX into EDX
mov ebx,-256 ; divisor
idiv ebx

call dumpregs

exit 
main endp
end main