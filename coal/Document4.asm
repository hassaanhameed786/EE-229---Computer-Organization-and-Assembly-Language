Title var4 = (var1 * -5) / (-var2 % var3);
include irvine32.inc
.data
var4 dword 5
var1 dword 2
var2 dword 3
var3 dword 10
.code
main proc


mov eax,var2
not eax
cdq
idiv var3

mov ebx,edx
mov eax,-5
imul var1

idiv ebx
mov var4,eax
call writedec
exit
main endp
end main


