TITLE Important Lab						(main.asm)

; Description:
; Author: Muhammad Hashim Shafiq
; Revision date: 13/11/2015

INCLUDE Irvine32.inc
.data
	arrayB BYTE 20h,50h,70h
	arrayD DWORD 30h,40h,60h

.code
main PROC
	mov esi,0
	mov ecx,lengthof arrayB
	L1:
		mov eax,0		
		mov al,arrayB[esi*TYPE arrayB]
		call writehex
		
		call crlf
		mov eax,5000
		call delay
		mov eax,arrayD[esi*TYPE arrayD]
		call writehex
		inc esi
		call crlf
	LOOP L1
	exit
main ENDP

END main