;take a input from user in assembly
.model small
.stack 100h


.data



.code
main PROC

mov ah,1   ; take a input from user 
int 21h    

mov dl,al
mov ah, 2
int 21h


mov ah,4ch
main endp
end main