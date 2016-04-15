TITLE Data Transfer Examples       (Moves.asm)
INCLUDE Irvine32.inc
.data
day BYTE "Day  ",0
month BYTE "Month  ",0
year BYTE "Year  ",0
.code
main PROC
	; extracting 
	;mov ax,0100011110010010b
	call readInt
	mov bx,ax
	mov eax,0
	mov al,bl
	and al,00011111b
	mov edx,offset day
	call writestring
	call writedec
	call crlf
	; extracting month
	mov eax,0
	mov ax,bx
	shr ax,5
	and al,00001111b
	mov ah,0
	mov edx,offset month
	call writestring
	call writedec
	call crlf
	; extracting year
	mov eax,0
	mov al,bh
	shr al,1
	add ax,1980
	mov edx,offset year
	call writestring
	call writedec

	exit
main ENDP
END main