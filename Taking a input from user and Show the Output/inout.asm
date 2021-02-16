.model small

.stack 100h ;The purpose of the stack segmmt declaration ls to set aside a block of memory (the stack area) to store the stack

;Because no variables were used, the data segment was omitted.
    
.code   ;The code stgment contains a program's lnstNctlons
main proc ; Like main function in c
    
    
    mov ah,1 ; for taking single key input ah,1 function is used
    int 21h ; To invoke a DOS or BIOS routine, the INT (interrupt} instruction is used. It has the format
    
    mov bl,al ;;moving the value from al to bh because by default all the input value are stored in al.
    
    mov ah,1
    int 21h
    
    
    mov bh,al ;moving the value from al to bh because by default all the input value are stored in al.
    
    mov ah,2 ;for printing single key character output ah,2 is used.
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,bh   ;retrieve character
    int 21h     ;and display it 
    
               
    mov ah,4ch  ; DOS exit function
    int 21h ;exit to DOS
    
    main endp
end main
    