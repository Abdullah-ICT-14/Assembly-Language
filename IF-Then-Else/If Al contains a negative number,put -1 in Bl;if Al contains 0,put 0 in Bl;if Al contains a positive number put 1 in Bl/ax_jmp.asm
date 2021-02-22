.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    
    CMP al,0
    JL Negative
    JE Ze
    JG Positive 

    Negative:
    MOV bl,-1
    add bl,30h
    mov ah,2
    mov dl,bl
    int 21h
    JMP exit 
    
    Ze:
    MOV bl,0
    mov ah,2
    mov dl,bl
    int 21h
    JMP Exit

    Positive:
    MOV bl, 1
    add bl,30h
    mov ah,2
    mov dl,bl
    int 21h
    JMP Exit
    
    Exit:
    mov ah,4ch
    int 21h 
    main endp
end main
