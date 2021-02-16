.model small
.stack 100h
.data
.code
main proc
    mov ah,2
    
    mov al,5
    add al,30h
    mov dl,al
    int 21h

    mov ah,4ch
    int 21h
    main endp
end main