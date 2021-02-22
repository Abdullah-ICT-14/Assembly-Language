.model small
.stack 100h
.data
msg db 'Printing 1,2,3,4,5,6,7,8,9 $'
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
 
    
    mov cx,9
    mov ah,2
    mov dl,'1'
    
    level1:
    int 21h
    inc dl
    loop level1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main