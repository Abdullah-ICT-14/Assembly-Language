.model small
.stack 100h
.data
msg db 'Printing 10 lines of stars where each line contains 10 stars $'
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
    
    mov cx,10
   
    
    level1:
    mov ah,2
    mov dl,'*'
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
   
    
    loop level1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main