.model small
.stack 100h
.data
msg db 'Enter Hex digits: $'
msg2 db 'Decimal number: $'
.code
main proc

    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    sub bl,17d
    
    mov ah,2
    mov dl,0ah
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov dl,49d
    mov ah,2
    int 21h
    
    
    
    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main