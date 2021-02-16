.model small
.stack 100h
.data
var db 'A' ;Define a variable with value 'A'
.code

main proc
    mov ax,@data
    mov ds,ax

    mov ah,2
    mov dl,var
    int 21h

    mov ah,4ch
    int 21h

    main endp
end main