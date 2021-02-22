.model small
.stack 100h
.data
msg db 'XOR operation $'
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
    xor bl, 011b ; 110 xor 011 =101 which is 5 in decimal.
    
    mov ah,2
    add bl,30h
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main