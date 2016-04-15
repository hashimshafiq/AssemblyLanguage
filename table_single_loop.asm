TITLE Important Lab						(main.asm)

; Description: Table Print
; Author: Muhammad Hashim Shafiq
; Revision date: 

INCLUDE Irvine32.inc
.data
	mult BYTE "x",0
	equal BYTE "=",0
.code
main PROC
	call readInt
	mov ebx,1
	mov ecx,10
	mov edi,eax
	mov eax,0
	outer:
		add eax,edi
		push eax
		mov eax,edi
		call writeint
		mov edx,offset mult
		call writestring
		mov eax,ebx
		call writeint
		mov edx,offset equal
		call writestring
		pop eax
		call writeint
		call crlf
		inc ebx
		loop outer
	exit
main ENDP

END main