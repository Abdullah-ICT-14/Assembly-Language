.model small
.stack 100h
.data
var db 2 ;Define a variable with value 2
.code

main proc
    mov ax,@data
    mov ds,ax

    mov ah,2
    add var,30h
    mov dl,var
    int 21h

    mov ah,4ch
    int 21h

    main endp
end main