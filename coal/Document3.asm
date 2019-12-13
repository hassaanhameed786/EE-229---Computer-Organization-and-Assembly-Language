include irvine32.inc
.data
wordVal SWORD -5000

.code
main proc
mov ax,wordVal ; dividend, low
cwd ; extend AX into DX
mov bx,+256 ; divisor
idiv bx

call dumpregs

exit 
main endp
end main