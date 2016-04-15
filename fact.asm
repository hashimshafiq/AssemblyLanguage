TITLE Lab Assignment						(main.asm)

; Description:array handeling 
; Aurthor: 
; Created date: 1:9:15

INCLUDE Irvine32.inc
.data   

 f dword 5d
msg byte "Enter factorial value:",0
info1 byte "     inner ",0
info2 byte "outer ",0
count dword 0
.code   
main PROC 
  
  mov eax,1
   
        mov edx,offset msg
        call writestring
        call crlf
  
   call readint
 
   
   mov f,eax
   mov ebx,0
   dec f
   mov ecx,f

   ooo:
   push ecx
   mov ecx,f

   iii:

   add ebx,eax
   loop iii
     mov eax,ebx
	mov ebx,0
   dec f
   pop ecx

   loop ooo

    call writeint
   call crlf
   exit              
main ENDP           

END main     