TITLE Important Lab						(main.asm)

; Description: Table Print
; Author: Muhammad Hashim Shafiq
; Revision date: 

INCLUDE Irvine32.inc
.data
	mult BYTE "x",0
	equal BYTE "=",0
	temp DWORD ?

.code
main PROC
	call readInt
	mov ebx,1
	mov ecx,10
	outer:
		mov temp,0
		push ecx
		mov ecx,ebx
		inner:
			add temp,eax
		loop inner
		pop ecx
		;inc ebx
		call WriteInt
		mov edx, offset mult
		call writeString
		push eax
		mov eax,ebx
		call writeInt
		mov edx,offset equal
		call writestring
		pop eax
		inc ebx
		push eax
		mov eax,temp
		call writeInt
		call crlf
		pop eax
		loop outer
	exit
main ENDP

END main