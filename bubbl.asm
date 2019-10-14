include irvine32.inc
.data
	a byte 10 dup(0)
	en byte "Enter No. : ",0
	index dword 0             ; for save 1st-loop ecx value

.code
	input proc uses eax ecx edx esi
		xor eax, eax
		xor ecx, ecx
		xor edx, edx
		mov ecx,lengthof a
		mov esi,offset a
		L:
			mov edx,offset en
			call writestring
			call readint
			mov [esi],al
			inc esi
		loop L

	ret
	input endp
	
	bubblesorting proc uses eax ebx ecx esi
	xor eax, eax
	xor ebx, ebx
	xor ecx, ecx
	mov ecx, lengthof a
	L1:
		mov index,ecx
		mov ecx,lengthof a
		mov esi, offset a
		L2:
			mov al, [esi]
			inc esi
			mov bl, [esi]
			cmp al, bl
			jg swap
			back:
		loop L2
		mov ecx, index
	
	loop L1
	jmp bel
	swap:
		
		mov[esi], al ;hold greater value
		dec esi   
		mov[esi], bl ; hold smaller value
		inc esi
		jmp back
	bel:
	ret
	bubblesorting endp
	
	printfun proc uses eax ecx edx esi
		xor eax, eax
		xor ecx, ecx
		xor edx, edx
	        mov ecx, lengthof a
		mov esi, offset a
		print:
			mov al,[esi]
			inc esi
			call writedec
			call crlf
	       loop print
	ret
	printfun endp
	
	main proc
		call input
		call bubblesorting
		call printfun
	exit
	main endp
end main


