INCLUDE Irvine32.inc
 .data
  a DWORD 20
  b DWORD 40
  c1 DWORD 12
  d DWORD 12
  e DWORD ?
  eq1 DWORD 0
  ls DWORD 0
  gr DWORD 0
  count DWORD 0
str1 BYTE  "e is ",0
str2 BYTE "times less than d ",0ah,0dh

  .code
 main PROC
 mov eax,a
 mov ebx,b
add eax,ebx
mov e,eax

mov eax, e
cmp eax, d ;compare eax to op2

je L1 ;jump to L1, if equal
jmp L2 ;otherwise, jump to L2
L1:
mov eq1,1
L2:
mov eq1,0


mov eax, e
cmp eax, d
ja Loop1 ;Jump if above i.e. if (e > d)
jmp nexxt
Loop1:
mov gr, 1
nexxt:
mov gr,0

mov eax, e
cmp eax, d

jb Loop2;Jump if below i.e. if (e < d)
jmp next

Loop2:
mov ls,1
next:
mov ls,0
jmp whileLoop
		
whileLoop:	
	mov eax,e
	cmp eax, d
	mov ecx,count
	je nexxxt
	inc ecx
	mov count, ecx
	loop whileLoop 
 nexxxt:
 mov edx, offset str1
 	call writestring
 	mov eax, count
 	call writedec
 	mov edx, offset str2
 	call writestring 
	call crlf
 
 exit 
 main ENDP
 END main
