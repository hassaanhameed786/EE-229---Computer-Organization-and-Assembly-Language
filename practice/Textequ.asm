include irvine32.inc
.data

rowsize = 5
count TEXTEQU %(rowsize*2) ;same as: count TEXTEQU <10>
move TEXTEQU <mov>
setupEAX TEXTEQU <move eax,count>
;same as: setupEAX TEXTQU <move eax, 10>

.code

main PROC
setupEAX
call WriteDec
call Crlf

exit
main ENDP
END main