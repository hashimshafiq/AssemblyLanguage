TITLE Data Transfer Examples       (Moves.asm)
INCLUDE Irvine32.inc
.data
array DWORD 1d,2d,7d,4d,5d,6d
.code
main PROC
	mov esi,0
	mov ecx,lengthof array
	mov eax,array[esi]
	L1:
		add esi,4
		cmp array[esi],eax
		jg TRUE1
		jmp last
		TRUE1:
		mov eax,array[esi]
		last:
	LOOP L1
	call writeInt
	exit
main ENDP
END main