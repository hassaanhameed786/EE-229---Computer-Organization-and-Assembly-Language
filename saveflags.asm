include irvine32.inc 

.data

saveflags BYTE ?
.code
main PROC
call dumpregs
lahf ; load flags into AH
mov saveflags,ah




main ENDP
End main 