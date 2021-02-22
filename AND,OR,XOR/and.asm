.model small
.stack 100h
.data
msg db 'AND operation $'
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
    
    mov bl,1101b
    and bl,1010b ; 1101 and 1010 =1000 which is 8 in decimal.
    
    mov ah,2
    add bl,30h
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main