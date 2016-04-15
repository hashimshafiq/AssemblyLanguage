TITLE GCD

; Description GCD
; Coder: Muhammad Hashim Shafiq
; Dated: 12/26/2015


Include Irvine32.inc

.data
.code
main PROC
mov eax,-10
mov ebx,5
mov ecx,0
l1:
	mov edx,0
	cdq
	idiv ebx
	mov eax,ebx
	mov ebx,edx

	cmp ebx,0
loopnz l1
call writeint


exit
main ENDP
END main