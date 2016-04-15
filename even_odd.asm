TITLE 						(main.asm)

; Description: find even,odd using AND
; Author: Muhammad Hashim Shafiq
; Revision date: 

INCLUDE Irvine32.inc
.data
	msg1 BYTE "Number is EVEN",0
	msg2 BYTE "Number is ODD",0
.code
main PROC
	call readInt
	mov ebx,eax
	and ebx,1b ; 1b is bit mask and 1b = 00000.....00001
	jz EVEN_
	mov edx,offset msg2
	call writeString
	call crlf
	jmp LAST
	EVEN_:
	mov edx,offset msg1
	call writeString
	call crlf
	LAST:
	exit
main ENDP


END main