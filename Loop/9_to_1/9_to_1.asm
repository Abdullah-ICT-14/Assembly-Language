.model small
.stack 100h
.data
msg db 'Printing 9,8,7,6,5,4,3,2,1 $'
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
    mov dl,'9'
    
    level1:
    int 21h
    dec dl
    loop level1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main