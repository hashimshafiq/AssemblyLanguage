TITLE Data Transfer Examples       (Moves.asm)
INCLUDE Irvine32.inc
.data
msg1 BYTE "Even",0
msg2 BYTE "Odd",0
.code
main PROC
	call readInt
	shr eax,1
	jc even1
	mov edx,offset msg1
	call writeString
	call crlf
	jmp last
	even1:
	mov edx,offset msg2
	call writeString
	call crlf
	last:
	exit
main ENDP
END main