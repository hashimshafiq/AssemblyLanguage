TITLE 						(main.asm)

; Description: UpperCase and LOweser Case examples + Encryption
; Author: Muhammad Hashim Shafiq
; Revision date: 

INCLUDE Irvine32.inc
.data
msg BYTE "Pakistan",0
target BYTE SIZEOF msg DUP(0)

.code
	main PROC
	; ENCRYPTION using XOR
	mov eax,0
	mov ecx,sizeof msg-1
	mov esi,0
	
	L1:
		mov al,msg[esi]
		xor al,2
		mov target[esi],al
		inc esi
	loop L1
	
	
	mov edx,offset target
	call writeString
	call crlf
	;Decryption
	mov eax,0
	mov ecx,sizeof msg-1
	mov esi,0
	
	L2:
		mov al,target[esi]
		xor al,2
		mov target[esi],al
		inc esi
	loop L2
	
	
	mov edx,offset target
	call writeString
	call crlf
	

	exit
main ENDP


END main