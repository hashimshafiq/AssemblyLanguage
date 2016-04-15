TITLE Lab Assignment						(main.asm)

; Description:Lab Sessional 
; Aurthor: Muhammad Hashim Shafiq
; Created date:

INCLUDE Irvine32.inc
.data   
	array1 DWORD 15 DUP(?)
	array2 DWORD 15 DUP(?)
	
 
.code   
main PROC
	call procedure1
	call procedure2
	call procedure3
	mov esi,offset array1
	mov ebx,type array1
	mov ecx,lengthof array1
	call dumpmem
   exit
main ENDP
	procedure1 PROC
		mov esi,0
		mov ecx,lengthof array1
		mov eax,0
		l:
			add eax,30
			mov array1[esi],eax
			add esi,4
			
		loop l
		ret
	procedure1 ENDP 
	
	procedure2 PROC
		mov esi,0
		mov ecx,lengthof array2
		mov eax,0
		l2:
			add eax,20
			mov array2[esi],eax
			add esi,4
			
		loop l2
		ret
	procedure2 ENDP 
	     
	procedure3 PROC
		mov esi,0
		mov ecx,lengthof array1
		mov eax,0
		mov ebx,0
		loop3:
			add ebx,10
			mov eax,array2[esi]
			add array1[esi],eax
			sub array1[esi],ebx
			add esi,4
			mov eax,0
		loop loop3
		ret
	procedure3 ENDP
END main     