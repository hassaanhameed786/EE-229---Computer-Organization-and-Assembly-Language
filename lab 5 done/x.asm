include irvine32.inc

.data

myDouble DWORD 12345678h
myBytes BYTE 12h,34h,56h,78h

.code 
main proc


mov ax,WORD PTR myDouble ; getting least significant portion of myDouble
call DumpRegs

mov al,BYTE PTR myDouble ; AL = 78h
call dumpregs
call crlf
mov al,BYTE PTR [myDouble+1] ; AL = 56h
call dumpregs
call crlf

mov al,BYTE PTR [myDouble+2] ; AL = 34h
call dumpregs
call crlf
mov ax,WORD PTR myDouble ; AX = 5678h
call dumpregs
call crlf
mov ax,WORD PTR [myDouble+2] ; AX = 1234h
call dumpregs
call crlf

mov ax,WORD PTR [myBytes] ; AX = 3412h
call dumpregs
call crlf

mov ax,WORD PTR [myBytes+2] ; AX = 7856h
call dumpregs
call crlf

mov eax,DWORD PTR myBytes ; EAX = 78563412h
call dumpregs
call crlf

exit
main endp
end main

