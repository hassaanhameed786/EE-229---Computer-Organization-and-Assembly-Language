;lab_task
Include Irvine32.inc

.data
;arr word 10h,20h,30,40
arr dword 10,20,30,40
.code
main PROC
xor eax,eax
xor ebx,ebx

;MOVZX eax,arr+2   ;jumps 2 for Word DataTYPE
;call writedec


MOV eax,arr+4
call crlf 
call writedec

call dumpregs

exit
main endp
End main 