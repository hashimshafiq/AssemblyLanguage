TITLE Data Transfer Examples       (Moves.asm)
INCLUDE Irvine32.inc
.data

.code
main PROC
	mov eax,-5
	call writebin
	call crlf
	call writeint
	call crlf
	sal eax,1
	call dumpregs
	call writeBin
	call crlf
	call writeint
	
	exit
main ENDP
END main