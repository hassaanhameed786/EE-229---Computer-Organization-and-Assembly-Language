Addsub PROC
;5+8
;40+12
;4 +16
push ebp
mov ebp,esp
mov ebx,[ebp+8];3rd arg;
mov eax,[ebp+12];2nd
add eax,[ebp+16];1st argS
sub eax,ebx

;...
; pop ebx
; mov ecx,ebx
; pop ebx
; mov eax,ebx
; pop ebx
; add eax,ebx
; sub eax,ecx

mov esp,ebp
pop ebp

call writedec
ret 8

Addsub endp