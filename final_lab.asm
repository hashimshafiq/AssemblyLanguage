TITLE Final

; Description Assignment 4
; Coder: Muhammad Hashim Shafiq
; Dated: 12/26/2015


Include Irvine32.inc

.data
total1 DWORD 0
total2 DWORD 0
array1 DWORD 5 DUP(?)
array2 DWORD 5 DUP(?)
std1 BYTE "Student No 1",0
std2 BYTE "Student No 2",0
coal BYTE "COAL Marks ",0
ms BYTE "MS Marks ",0
dsm BYTE "DS Marks ",0
algo BYTE "Algo Marks ",0
la BYTE "LA Marks ",0
gradeA BYTE "A Grade",0
gradeB BYTE "B Grade",0
gradeC BYTE "C Grade",0
gradeF BYTE "F Grade",0
.code
main PROC
mov esi,offset array1
mov ecx,5
call populate
;;;;;;;;;;;;
mov esi,offset array1
mov ebx,type array1
mov ecx,5
call dumpmem
;;;;;;;;;;;;;


mov esi,offset array2
mov ecx,5
call populate
;;;;;;;;;;;;;
mov esi,offset array2
mov ebx,type array2
mov ecx,5
call dumpmem
call clrscr
mov edx,offset std1
call writestring
call crlf
mov esi,offset array1
call display

mov edx,offset std2
call writestring
call crlf
mov esi,offset array2
call display

mov ecx,5
call total_std
mov total1,eax
call grading1
;

mov ecx,5
call total_std2
mov total2,eax
call grading2


;mov eax,total1

;mov eax,total2
;call grading
exit
main ENDP
populate PROC
	mov eax,0
	L1:
		call readInt
		mov ebx,eax
		shl ebx,1
		jc negative_num
			jmp last
		negative_num:
			neg eax
		last:
		mov ebx,0
		mov ebx,eax
		cmp ebx,100
		jg greater
			jmp last1
		greater:
			mov eax,100
		last1:
		mov [esi],eax
		;call writeInt
		add esi,4
	Loop L1
	ret
populate ENDP

display PROC
	mov edx,offset coal
	call writeString
	mov eax,[esi]
	call writeInt
	call crlf
	add esi,4
	mov edx,offset ms
	call writeString
	mov eax,[esi]
	call writeInt
	call crlf
	add esi,4
	mov edx,offset dsm
	call writeString
	mov eax,[esi]
	call writeInt
	call crlf
	add esi,4
	mov edx,offset algo
	call writeString
	mov eax,[esi]
	call writeInt
	call crlf
	add esi,4
	mov edx,offset la
	call writeString
	mov eax,[esi]
	call writeInt
	call crlf
	ret
display ENDP
;
total_std PROC
	mov eax,0
	mov esi,0
	L1:
		
		add eax,array1[esi]
		
		add esi,4
	Loop L1
	ret
total_std ENDP

total_std2 PROC
	mov eax,0
	mov esi,0
	L1:
		
		add eax,array2[esi]
		
		add esi,4
	Loop L1
	ret
total_std2 ENDP

grading1 PROC
	cmp eax,400
	jge max1
			cmp eax,300
			jge l1
				cmp eax,200
				jge l2
						call display1
						mov edx,offset gradeF
						call writeString
						call crlf
						jmp last

					l2:
						call display1
						mov edx,offset gradeC
						call writeString
						call crlf
						jmp last

			l1:
				call display1
				mov edx,offset gradeB
				call writeString
				call crlf
				jmp last
			
				

	max1:
		call display1
		mov edx,offset gradeA
		call writeString
		call crlf
		jmp last
last:	
ret
grading1 ENDP

grading2 PROC
	cmp eax,400
	jge max1
			cmp eax,300
			jge l1
				cmp eax,200
				jge l2
						call display2
						mov edx,offset gradeF
						call writeString
						call crlf
						jmp last

					l2:
						call display2
						mov edx,offset gradeC
						call writeString
						call crlf
						jmp last

			l1:
				call display2
				mov edx,offset gradeB
				call writeString
				call crlf
				jmp last
			
				

	max1:
		call display2
		mov edx,offset gradeA
		call writeString
		call crlf
		jmp last
last:	
ret
grading2 ENDP

display1 PROC
	mov edx,offset std1
	call writeString
	call crlf
	mov eax,total1
	call writeint
	call crlf
	ret
display1 ENDP

display2 PROC
	mov edx,offset std2
	call writeString
	call crlf
	mov eax,total2
	call writeint
	call crlf
	ret
display2 ENDP
END main