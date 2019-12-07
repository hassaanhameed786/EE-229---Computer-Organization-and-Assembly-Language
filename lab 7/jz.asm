include irvine32.inc
.data

.code

main PROC 

call dumpregs ; shows all FLAGS Registers 
JZ L1

call dumpregs 
call dumpregs 

L1:


exit 
main EndP
End main 