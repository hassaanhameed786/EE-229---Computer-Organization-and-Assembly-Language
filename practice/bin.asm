;lab_task
Include Irvine32.inc

.data


.code
main PROC
xor eax,eax

mov eax,10
call crlf

call writebin
call dumpregs


exit
main endp
End main 