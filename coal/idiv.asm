include irvine32.inc

.data
    res SDWORD ?
    var1 SDWORD 3
    var2 SDWORD 7
    var3 SDWORD 3
    var5 SDWORD -5
.code
main proc

;var 4 = (var1 * var5) / (-var2 % var3)
    mov eax,var2
    neg eax
    cdq
    idiv var3
    mov ebx,edx
    mov eax,var5
    imul var1
    cdq
    idiv ebx
    mov res,eax
    
    call writeint





exit
main endp
end main