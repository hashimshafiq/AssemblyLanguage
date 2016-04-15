TITLE 						(main.asm)

; Description: Greater and less 
; Author: Muhammad Hashim Shafiq
; Revision date: 

INCLUDE Irvine32.inc
.data
msg1 BYTE "Number 1 is smaller than Number 2",0
msg2 BYTE "Number 2 is smaller than Number 1",0
.code
	main PROC
	call readInt
	mov ebx,eax
	call readInt
	cmp ebx,eax
	jc SMALLER ;jnae, jb , jl ,jle, jlea
	mov edx,offset msg2
	call writeString
	call crlf
	jmp LAST
	SMALLER:
	mov edx,offset msg1
	call writeString
	call crlf
	LAST:
	exit
main ENDP


END main