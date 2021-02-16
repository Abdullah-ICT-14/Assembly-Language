.model small
.stack 100h
.data
.code
main proc
mov ah,2
mov al,8
add al,30h
mov dl,al
int 21h

; for printing new line
mov ah,2
mov dl,0ah
int 21h

mov ah,2
mov dl,0ah
int 21h

mov ah,2
mov al,2
add al,30h
mov dl,al
int 21h

mov ah,4ch
int 21h
main endp
end main