segment .data
	tekst db "Hello World!",0Dh,0Ah,"$"

segment stack1 stack
	resb 64
segment .text
mov ax, .data
mov ds, ax
mov ax, stack1
mov ss, ax
mov dx, tekst
mov ah, 9
int 21h
mov ax, 4C00h
int 21h