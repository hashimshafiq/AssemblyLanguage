TITLE Data Transfer Examples       (Moves.asm)
INCLUDE Irvine32.inc
.data
msg1 BYTE "POSITIVE EVEN",0
msg2 BYTE "POSITIVE ODD",0
msg3 BYTE "NEGATIVE EVEN",0
msg4 BYTE "NEGATIVE ODD",0

.code
main PROC
	call readInt
	test eax,80000000h
	jz POSITIVE
		test eax,1
		jz NEGATIVE_EVEN
		 mov edx,offset msg4
		 call writeString
		 jmp last1
		NEGATIVE_EVEN:
		 mov edx,offset msg3
		 call writeString
		last1:
	jmp LAST
	POSITIVE:
		test eax,1
		jz POSITIVE_EVEN
		 mov edx,offset msg2
		 call writeString
		 jmp  last1
		POSITIVE_EVEN:
		 mov edx,offset msg1
		 call writeString
	
	LAST:				
	exit
main ENDP
END main