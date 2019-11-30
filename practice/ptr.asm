include irvine32.inc 

.data
saveflags byte ?
myDouble DWORD 12345678h

.code
main proc

xor eax,eax

mov ah, byte ptr myDouble
;mov ax,word ptr myDouble
mov eax,dword ptr myDouble

lahf 		; loads flags into AH of register
mov saveflags,ah 
mov ah, saveflags

call dumpregs
call writedec

exit
main endp
end main