TITLE Data Transfer Examples       (Moves.asm)
INCLUDE Irvine32.inc
.data
msg1 BYTE "number is Greater",0

.code
main PROC
	call readInt
	mov esi,eax
	call readInt
	mov ebx,eax
	call readInt
	mov ecx,eax
	mov eax,esi
	
	cmp eax,ebx
	jg GREATER1
		cmp ebx,ecx
		jg GREATER2
			push eax
			mov eax,ecx
			call WriteInt
			mov edx,offset msg1
			call writeString
			pop eax
		jmp last1
		GREATER2:
			push eax
			mov eax,ebx
			call WriteInt
			mov edx,offset msg1
			call writeString
			pop eax
		last1:
	jmp last
	GREATER1:
		cmp eax,ecx
		jg GREATER3
			push eax
			mov eax,ecx
			call WriteInt
			mov edx,offset msg1
			call writeString
			pop eax
		jmp last3
		GREATER3:
			;push eax
			;mov eax,ecx
			call WriteInt
			mov edx,offset msg1
			call writeString
			pop eax
			last3:
	last: 	
	exit
main ENDP
END main