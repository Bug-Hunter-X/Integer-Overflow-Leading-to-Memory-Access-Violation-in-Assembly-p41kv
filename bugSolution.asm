mov ecx, [array_index]
; check bounds of ecx (size of array is in edi) 
cmp ecx, edi
jge overflow_handler
mov eax, [ebx+ecx*4]
jmp end
overflow_handler:
;Handle the overflow error, for example, by setting error flag
mov [error_flag], 1
end: