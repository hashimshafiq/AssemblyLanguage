TITLE 						(main.asm)

; Description: Equality
; Author: Muhammad Hashim Shafiq
; Revision date: 

INCLUDE Irvine32.inc
.data
msg1 BYTE "Number 1 equals Number 2",0
msg2 BYTE "Number 1 Not Equals Number 2",0
.code
	main PROC
	call readInt
	mov ebx,eax
	call readInt
	cmp ebx,eax
	jz EQUAL
	mov edx,offset msg2
	call writeString
	call crlf
	jmp LAST
	EQUAL:
	mov edx,offset msg1
	call writeString
	call crlf
	LAST:
	exit
main ENDP


END main