;include irvine32.inc 
;.model medium
;.stack 100h

.data
press_any_key EQU "Press any Key",0
prompt byte press_any_key

.code
main Proc

mov edx,offset[prompt]
call writestring
call crlf


exit
main endp
End main

