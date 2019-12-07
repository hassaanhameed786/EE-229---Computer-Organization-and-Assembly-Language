INCLUDE Irvine32.inc    
.data
  arrayVal DWORD 1,2,3,4,5,6,7,8,9,10
  counter = 0
.code
main proc   
  xor eax, eax  
  xor ebx,ebx                   
  xor edx, edx                     
  mov ecx, LENGTHOF arrayVal       
L1:
  mov ebx,arrayVal[edx]    
  add eax, ebx                     
  inc edx                          
loop L1                            

  Call Writeint                    
  exit
main endp
end main