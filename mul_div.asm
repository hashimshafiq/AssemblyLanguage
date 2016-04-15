Include Irvine32.inc
.data
result word 0

.code
main PROC
mov eax,0
call readint
mov ebx,eax
call readint
mov esi,ebx
mov edi,-1
mov ecx,8
L1:
shr al,1 
inc edi
jc multi

loop L1
jmp last


multi:
push ecx
mov ecx,edi
L2:
shl bx,1
loop L2
add result,bx
mov ebx,esi
pop ecx
jmp L1


last:
	
mov eax,0
mov ax,result
call crlf
call writeint	
	
	exit
main ENDP
END main