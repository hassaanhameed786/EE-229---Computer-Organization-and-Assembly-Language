include irvine32.inc
.DATA 

;bVal BYTE ?
;wVal WORD ?
;dVal DWORD ?
;dVal2 DWORD ?
;dValArray DWORD 5 DUP(?) ;uninitiliaze arr

;	<-------------------->

dValArray DWORD 1,2,3,4,5


.CODE
MAIN PROC

;mov esi,OFFSET bVal ; ESI = 00404000
;call DumpRegs
;call crlf


;mov esi,OFFSET wVal ; ESI = 00404001
;call DumpRegs
;call crlf

;mov esi,OFFSET dVal ; ESI = 00404003
;call DumpRegs
;call crlf

;mov esi,OFFSET dVal2 ; ESI = 00404007
;call DumpRegs
;call crlf

;mov esi,OFFSET dValArray ; ESI = 0040400B
;call DumpRegs
;call crlf


;----------------------------

mov esi,OFFSET dValArray
mov eax,[esi]
call DumpRegs
mov esi,OFFSET dValArray + 8 ; adds 8 to starting of data
; segment and returns the sum in esi
mov eax,[esi]
call DumpRegs

exit
main endp
end main