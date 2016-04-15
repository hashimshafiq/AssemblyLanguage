TITLE Important Lab						(main.asm)

; Description:
; Author: Muhammad Hashim Shafiq
; Revision date: 13/11/2015

INCLUDE Irvine32.inc
.data
	msg1 BYTE "Outer Loop",0
	msg2 BYTE "Inner Loop",0
.code
main PROC
	mov ecx,2
	L1:
		mov edx,offset msg1
		call writeString
		call crlf
		call crlf
		PUSH ecx
		mov ecx,3
		L2:
			mov edx,offset msg2
			call writestring
			call crlf
		LOOP L2
		POP ecx
		mov eax,500
		call delay
	LOOP L1
	exit
main ENDP

END main