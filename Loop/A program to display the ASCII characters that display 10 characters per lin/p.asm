.model small
.stack 100h
.data
msg db '24. A program to display the ASCII characters that display 10 characters per lines $'
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
 
    
    mov cx,0
    
    level1:
    mov bx,cx
    mov cx,10
    
    level2:
    
    mov ah,2
    mov dl,bl
    int 21h
    
    inc bl
    cmp bl,255
    je exit
    loop level2

    
    mov ah,2
    mov dl,0ah
    int 21h
    
    inc bl 
    mov cx,bx
    loop level1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main