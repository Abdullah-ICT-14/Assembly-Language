;Program for print a character
.model small
.stack 500h
.code
main proc
    mov ah,2
    mov dl,'A' ; Printing a character 'A'
    int 21h

    mov ah,4ch
    int 21h
    main endp
end main