Title Be able to find out the prime numbers in that array, printed on the screen & isplay output in your program
include irvine32.inc
.data
	No dword ?
	ent byte "Enter Number : ",0
	var dword ?
	n byte " It is not a prime Number. ",0
	y byte " It is a prime Number.",0
	again byte " Enter -1 to Exit Or Any No. to Again Test : ",0
	ag sdword ?
.code
	input proc
		mov edx,offset ent
		call writestring
		call readint
		mov No,eax
	ret
	input endp
	
	is_primeNo proc
		xor eax, eax
		xor ecx, ecx
		xor edx, edx
		mov ebx, 2	
		mov eax, No
		
		cmp eax,1 ;check for 1
		je prime
		cmp eax,0 ;check for 0
		je prime
		
		mov var, eax
		div ebx
		mov ecx, eax
		l:
			xor eax, eax
			xor edx, edx
			mov eax, var
			cmp ecx, 1
			JE prime
			div ecx			; check for every number expet 0,1
			call writedec
			call crlf
			cmp edx, 0
			JE even1
			loop l
		prime:
			xor edx, edx
			mov edx, offset y
			call writestring
			call crlf
		jmp below	
		even1:
			mov edx, offset n
			call writestring
			call crlf
		below:
	ret
	is_primeNo endp
	
	
	main proc
		up:
		call input
		call is_primeNo
		call crlf
		call crlf
		mov edx,offset again
		call writestring
		call readint
		cmp eax,-1
		je below
		jmp up
		below:
		
	exit
	main endp 
	
end main