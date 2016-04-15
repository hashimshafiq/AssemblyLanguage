TITLE Important Lab						(main.asm)

; Description:
; Author: Muhammad Hashim Shafiq
; Revision date: 13/11/2015

INCLUDE Irvine32.inc
.data
	array1 DWORD 6 DUP(?)
	array2 DWORD 6 DUP(?)
	array3 DWORD 6 DUP(?)
.code
main PROC
	mov esi,0
	mov ecx,lengthof array1
	L1:
		call readint
		mov [array1+esi],eax
		add esi,4
	LOOP L1
	mov esi,offset array1
	mov ebx,type array1
	mov ecx,lengthof array1
	call dumpmem

	mov esi,0
	mov ecx,lengthof array2
	L2:
		call readint
		mov [array2+esi],eax
		add esi,4
	LOOP L2
	mov esi,offset array2
	mov ebx,type array2
	mov ecx,lengthof array2
	call dumpmem

	mov ecx,3
	mov esi,0
	L3:
		mov edx,[array1+esi]
		mov eax,[array2+esi]
		sub eax,edx
		mov [array3+esi],eax
		
		add esi,8
	LOOP L3
	mov esi,offset array3
	mov ebx,type array3
	mov ecx,lengthof array3
	call dumpmem

	L4:
		mov edx,[array1+esi]
		mov eax,[array2+esi]
		add eax,edx
		mov [array3+esi],eax
		
		add esi,8
	LOOP L4

	exit
main ENDP

END main