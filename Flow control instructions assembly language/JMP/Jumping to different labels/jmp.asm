.model small
.stack 100h
.data
var1 db 'ABdullah $'
var2 db 'ICT $'
var3 db 'MBSTU $'
.code
main proc
    mov ax,@data ;for laoding the variables names 
    mov ds,ax
    
    mov ah,9 ;for printing string
    lea dx,var1
    int 21h
    
    mov ah,2
    mov dl,0ah
    int 21h
    
    m:
    mov ah,9
    lea dx,var2
    int 21h
    
    mov ah,2
    mov dl,0ah ;for printing new line
    int 21h
    
    jmp n ;jumping to label n
    
    n:
    mov ah,9
    lea dx,var3
    int 21h
    jmp exit ;jumping to label exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main