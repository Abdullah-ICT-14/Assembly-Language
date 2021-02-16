.model small
.stack 100h
.data
.code
main proc
mov ah,2
mov dl,'P'
int 21h

mov ah,2
mov dl,0ah
int 21h

mov ah,2
mov dl,0ah
int 21h

mov ah,2
mov dl,'A'
int 21h

mov ah,4ch
int 21h
main endp
end main