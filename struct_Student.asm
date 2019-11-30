Include Irvine32.Inc




Student Struct 

	names byte 50 DUP("0")
	age  byte ? 
	sport1 byte 50 DUP("0")
	sport2 byte 50 DUP("0")
	sport3 byte 50 DUP("0") 

student ends	

.data
	
	student1 Student <"0">
	msg1 BYTE "Enter name : ",0
	msg2 BYTE "Enter age : ",0
	msg3 BYTE "Enter Sport 1: ",0
	msg4 BYTE "Enter Sport 2: ",0
	msg5 BYTE "Enter Sport 3: ",0

.code


main PROC

	mov edx, offset msg1 
	call writestring 

	mov edx, offset student1.names 
	mov ecx, 50 
	call readstring 
	
	call crlf
	
	mov edx, offset msg2
	call writestring 
	call readint 
	mov student1.age, al 
	

	mov edx, offset msg3 
	call writestring
	mov edx, offset student1.sport1
	mov ecx, 50 
	call readstring

	mov edx, offset msg4
	call writestring 
	mov edx, offset student1.sport2
	mov ecx, 50 
	call readstring

	mov edx, offset msg5
	call writestring
	mov edx, offset student1.sport3
	mov ecx, 50 
	call readstring


exit
main ENDP
end main