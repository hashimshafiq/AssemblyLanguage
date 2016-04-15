TITLE Data Transfer Examples       (Moves.asm)
INCLUDE Irvine32.inc
.data
msg1 BYTE "Positive",0
msg2 BYTE "Negative",0
.code
main PROC
	call readInt
	sal eax,1
	jc negative1
	mov edx,offset msg1
	call writeString
	call crlf
	jmp last
	negative1:
	mov edx,offset msg2
	call writeString
	call crlf
	last:
	exit
main ENDP
END main