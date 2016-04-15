TITLE Data Transfer Examples       (Moves.asm)
INCLUDE Irvine32.inc
.data
msg BYTE "Even ",0
msg2 BYTE "odd ",0
.code
main PROC
	call readint
	mov ebx,2
	mov edx,0
	div ebx
	test edx,1
	jnz even1
	mov edx,offset msg
	call writestring
	
	jmp last
	even1:
	mov edx,offset msg2
	call writestring
	last:
	exit
main ENDP
END main