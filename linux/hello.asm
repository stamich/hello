;; Gentoo Linux
;; hello.asm
;; Writes stream of 14 chars
;;

segment .data
msg     db      "Hello World!", 0Ah    ; makes char end of line

segment .text
        global  _start

_start:
        mov     eax, 4
        mov     ebx, 1
        mov     ecx, msg        ; adres of first char
        mov     edx, 14         ; number of chars
        int     80h           	; calling system function - stream of chars

; ending from program
        mov     eax, 1
        xor     ebx, ebx
        int     0x80
; end of program