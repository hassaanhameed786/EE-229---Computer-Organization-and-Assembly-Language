;var4 = (var1 * 5) / (var2 - 3);
include irvine32.inc

.data 
var1 dword 2
var2 dword 5
var4 dword 0

.code
main proc

mov eax,0
mov eax,var1
mov ebx,5
mul ebx		;edx:eax = prodct

mov ebx,var2
sub ebx,3
div ebx
mov var4,eax
call writedec
call crlf

exit
main endp
end main