.model small
.stack 100h
.data
.code
main proc

    mov ah,1
    int 21h
   
    mov bl,al
    
    mov ah,1
    int 21h
   
    mov bh,al
    
    cmp bl,bh
    jg greater 
    jl less
     
     less:
     mov ah,2
     mov dl,bl
     int 21h
     jmp exit
     
     greater:
     mov ah,2
     
     mov dl,bl
     int 21h
     jmp exit
     
     exit:
     mov ah,4ch
     int 21h 
     main endp
end main