.model small
.stack 100h
.data
msg db 'Enter three initials: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
 
    
    mov ah,1
    int 21h
    
    mov bh,al
    
    
    mov ah,1
    int 21h
    
    mov cl,al

    
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
