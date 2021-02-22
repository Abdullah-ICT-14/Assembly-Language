.model small
.stack 100h
.data
msg db 'OR operation $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov bl,110b
    or bl, 011b ; 110 or 011 =111 which is 7 in decimal.
    
    mov ah,2
    add bl,30h
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main