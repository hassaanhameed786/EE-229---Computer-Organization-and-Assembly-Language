Include irvine32.inc

.data 
array dword 10h,20h,30h,40h,50h
thesum dword 0

array_sum proto 

.code 
main proc 

invoke array_sum 
call array_sum 	



exit 
main endp
end main 


array_sum proc 

mov esi,0
mov eax,0
mov ecx,lengthof array

L1:
	add eax,array[esi]
	inc esi
	loop L1
	
mov thesum,eax
ret

array_sum endp